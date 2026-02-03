Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFD3335095
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770118434; cv=none; b=Z5isA6swn1O+P668TkPRRAb+bKlWv9NG7e5UoDhaHMIAH9aGgsvWkwsohEYnF/pbRaejkE/g6Qbt9k/wkDBXWYSY1Us513OJ/auJGNQlo2Bs74hhzcM3/5nXLGEh4SedIavIX2ptcXVWFdAZqkrWTJeS/bv9JgrBw4r7v084Wn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770118434; c=relaxed/simple;
	bh=MRdvlU5BIVoBXqXOjQQyQwGm26PtWEGOBCzQgyCVoAM=;
	h=To:Subject:From:Message-Id:Date; b=dZyRkGEKJ6u5BZXB8+iLhxc31FHoK2wVzkleUhWkDm3Od7zpw/P4iIjsAHuE5eMf4iEqeu+FwHZPFpMCjhPDnFdqBriTUD3/TaSr+JHO36crcztJRh7h1XfrLLEef/JhAGpnp5kWDnJ6OrMFstptHmUxOyOQ9/Z3r8TXYomXhns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ueC7hMgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ueC7hMgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B597FC19421
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770118433;
	bh=MRdvlU5BIVoBXqXOjQQyQwGm26PtWEGOBCzQgyCVoAM=;
	h=To:Subject:From:Date:From;
	b=ueC7hMgh0YmVds/9kqa3BvR+sNZAl4WlgSAbqYGDE2EXHl9VjLpJssjXvolkhY0Gp
	 h+n3hJcu6fgJTrPdyXNOVsqTmsSbk3MQV4tEfXN7DB1GsJrdTS37rPUwqiIYZH4Blf
	 pEoXYKUlSNwkHyHAyJLVKhns6ZqQ4EkohJjxxBs0yNfMa+u6wFiHOOOgoJRSi/Lq/T
	 sbZKmaCDv9Wbw52EOhgNs51rQ359hhDcx3AzTYLUMHRyXQQCp9GP1ZEzdas1peTJOi
	 yRSwisfbp5TNpQf8ndWf9ZFsVsXDkYiBiUufunFSteZmVPrWix72qoRFfVrTcjJQXG
	 OKd4OGNSsmA0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4EFE6E819
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177011843364.21031.11377313409726966565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14712733179c526afa0cec7d091ebf3cdfc0ca3e53f8aa15c45f908acccb3293
Date: Tue, 03 Feb 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770118433
