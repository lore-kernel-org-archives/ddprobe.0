Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2959D1DF25D
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728395754; cv=none; b=E+EF5uWrx4KWZ6AN/7dm79OKxIvGQVJWHZgOOfAu17QDbLSUz8Kg5e0l3sks5eWAjlIXMTUcD284SgGnOzfw5B6JiLqRBLvJ3aDvL4h/U1U8thLVTht+u0PbZTI1fHPLNiGEsSh5VsTmV2cSJ0fdwLI9ofdf76F0JAY49gHVsVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728395754; c=relaxed/simple;
	bh=79vMfWIaY/ZPuN1gLgqcWY+8rrXjkwlgIEgJ3kaQoP8=;
	h=To:Subject:From:Message-Id:Date; b=ncXRsAoqSN/hwa2iLhDlajY/EswS76N/fFdi/6Ql2VsKKjzUVC8YGysdXOOM2ugUV90M0eL9RxFI7qPYyIAm1PWWLAl92z1d2c2iZl/XWUhtozDpNkJXK/X4qLW82ForG42W+wHyieLXlT3mQfEtwG8IC48ttw1iONfFdKZM37w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qk3KvHGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qk3KvHGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8C3C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728395753;
	bh=79vMfWIaY/ZPuN1gLgqcWY+8rrXjkwlgIEgJ3kaQoP8=;
	h=To:Subject:From:Date:From;
	b=Qk3KvHGjGh3qdXCh9TFt4fzjK6QzsT1sfktCPcfT1Wd2Lxba3k9R+UHcZBRwXOsE+
	 zGRAnXrJu9bhgjFztXUv2+1Twh0+xAbTPCuM9RhCQHsb76/WK7oWmImnmXbVmYgjBG
	 AX21MFIh32OXfRcks3KZ5oVJ5RS+pFNyJLkfeb2mx8ZvGQXI5/EAUcSmAEkaRA55Ik
	 8bG+bxioN0Z0GV3zJTvXq9hVZ4b666rDfCTcXewXm5CCJxzIWFz8VzNQlF8FkLrLoW
	 bkIGCX/F/MV3mCPGE7vN75HgpmgYTMfbu+m3pk6ZsoMl5f8D7PAfAAmQcULKxFYXQu
	 MPkPGkNTwOyBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F07CEF173
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172839575358.16558.11064572142974502113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f2d7405ba3993f33e2baa964b12088b411dc3b05dd982ae5ee9432e1dabf05
Date: Tue, 08 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728395753
