Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149921D5CD9
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771544094; cv=none; b=kz5kW3k6wSCXUwDeQFQCldnfiaGssZRInLqKR1MaXOAJN0l1B98qB4fFfWqR6Fxcelr3wI/AWoE5WmQqiJXK/ZG7rCGcLPy/e72YEVAJ1QJKjvbK+aT7mVB449ZUZIVk/CenB8dUcF+An8RoaF9GG67g3ZwJ3nz1AjmgKwXA5xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771544094; c=relaxed/simple;
	bh=lRl2lJc2ge33O1xHqud1wdDFoYzC/zDPcos1tsqE3ew=;
	h=To:Subject:From:Message-Id:Date; b=Gwc6+EWY7/StvraRMWJy4feKwejBuGEcCJCL+81i+C+IFsAkdLsgmbxFlczPnMYk/88RsKr+swTDlHASCXbIuP7eKw6CrIUUACReLOjwsOl1RIPHCJjG063P7fCZSeoDdlk7v81GmwqTbseenvw3J6QdfZOYDjKqK8cppSB1LaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDYsMJTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDYsMJTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA641C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771544093;
	bh=lRl2lJc2ge33O1xHqud1wdDFoYzC/zDPcos1tsqE3ew=;
	h=To:Subject:From:Date:From;
	b=lDYsMJTZxwQW2z2iUsiQZOAXlj682EjyEy7vqHQ+6oVkmgEXJf8o7naKS84HgMkYd
	 MJNInSOvoppfYmjjrMRUAY1c7jYK+pXZlvoUF4pEAfP95OWBcPXUUlwbiB1RmQhKMj
	 xoKbyKAi5uJmtJWzkX5nHfA1lf5Ic6vIzau8RxEh78d2qc4wbFVEg3SwxXcEQQou0m
	 iKZ+I7ynL+gjgSgsBCmYD61qQa3AWGGAdI24hLmhTPk0modWhTebKDOiGOBoyYpMCW
	 N+4VMdBSpphXzVPn1pIFEiXcxS0okBWn4mhb93I3Oxmoq6lyeBYQiSryOp6jHxqUmR
	 NDjpr6I/mgirA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B82C531EA
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177154409360.17398.9906932175624535679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1674ad4da109b7cdc4abb92de746e41073306edc14598ee8b34a00980584536
Date: Thu, 19 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771544093
