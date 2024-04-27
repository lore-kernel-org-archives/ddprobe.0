Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED78631
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 14:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714229543; cv=none; b=DGC+OWTvFpURLUVMnJmpHJD0QkkXTo7AGBAZUmMLVXdFpGq8zf8wTeWtLYWBuuZbxoOxy29JF5fZW0ft4qjB1g9YjwlPe+5sfmy/pHVkCwlZIITAGc39i/FaHsPbfq+++l58wpNFmVmzg6628zC6dvQmOhHeFwd2QPurl2g0WRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714229543; c=relaxed/simple;
	bh=H8GE1tZgksD1JaOu/4Iq1zJryv5TIJZUj1tL/8hHBXY=;
	h=To:Subject:From:Message-Id:Date; b=jvNbbCg9KmTqr01IPE7zvXYxt9WMFSXA/D1hASEJLYgAb6HPADT1myHqIlz1I/J01IG3ecMuiZkwdmNA5bnZpYncxGiFe2ah4kaio93hd11wVsqvXtBGJcotC/oJv7+YhEEGY4oMCU7l3/gGGnGZP28hiu/JrMUo4r44b3j/C9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E536fiIZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E536fiIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E917FC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714229542;
	bh=H8GE1tZgksD1JaOu/4Iq1zJryv5TIJZUj1tL/8hHBXY=;
	h=To:Subject:From:Date:From;
	b=E536fiIZqE4Me/6Jso3Q1LbZRM5o4ulK9lmip/89+79oVJ/SSLXJTXCpeT7UcohlG
	 60HkghG8IzAOYwZp4TRbvm8QdDMhU15q1ZmnvjdbGSfoz6luTIKxZApNN9JvpghoLH
	 KOQ2HpQVlEVbN+3MZ4cHomwWLD11WU3YbMN6YDePFn4zc6HxfppQl/GTWmHl9YkbhU
	 Mw6gRclpM2Lvrfm+0qZ7ry2voj+sS1iaBwcrNNYjIW6eGipXsX69re8f4tVD69hJss
	 XEBtyKW/T01rBbDJeG/QhAjz+Hz41gmJo1AUoRh8dKv8dqjFmJR4LzQ4P6naf5j230
	 B4DH+jnsHIIvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D624AC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171422954283.20767.15721312153720406215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a68d53e1be245135699ca4ce63fdb6578aad325bfb4846b9ea04ee1cdc64f17
Date: Sat, 27 Apr 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714229542
