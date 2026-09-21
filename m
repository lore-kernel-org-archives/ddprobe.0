Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A7C247280
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789963234; cv=none; b=GMnbbsQ4rI1u6FuzxNmgFKUPbi55z8R4EuQ1zyfAxMXF7yQj/CNhPpG21rL/c6pciis5CkK1y/76p0tuQfTuKmhDLEltm27sb4PrbMIpdcD66n/nYVsTqRNvFLVzjh5f/YeTsDekzqPmUilDzMFK4hwWP2RSBA4mMJV59dFMpbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789963234; c=relaxed/simple;
	bh=14SWEH+y4OBltQsos44JOSuKTOrJuvJscjsUfap4VKc=;
	h=To:Subject:From:Message-Id:Date; b=u3PSXoq6ucSiqBW/iCDxtq9X2xqEr+pCT+BJS3i+qDsgImHIU3sNVDm/VUTI47zhLEHtWIOMbGfDm11suYcLp5vkAuCaYZU9nMGLSpxnH73b7NHIMZ+UB9ST7nyiHlcD5P1IavFNphF/EIFcXN/KFJMctI1NTDG4e3Q6MmJWGY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFqOHTyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFqOHTyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF24DC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789963233;
	bh=14SWEH+y4OBltQsos44JOSuKTOrJuvJscjsUfap4VKc=;
	h=To:Subject:From:Date:From;
	b=GFqOHTyNutg2pvbQixuYYmpWdFyR1fGi7ZGARFsfbeD/QEqZFxJvNQnhPCGgXkyl6
	 lIzsz/NngAVSMrcenl9ExmvVN9DNgH+RrtVCrYsYmleY7VtVAtUR/JaLiA2eBRF81e
	 N0RkEortkWN8HiUsIgsA5LQ20zfaqFZtvAxANPvhaY4+y+bJK6uoU9BoeXltM2uPDS
	 QCKtjusqPVgpezb49tFtHKBvoitO2CGQHmr68MuWS7nodyxYiKq+fKHKdPkMp5SJlL
	 w0bGXj9rTjs7zqZBReQuIkpoWvy+9vFHjM4el51/UvgN3AfXE6G4p4P8ilmxa5HZSs
	 A5QcD5oba85Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3EEC982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178996323369.11078.5447405278103412773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667f49e18a53aea35e969974aefbd580cc898da537478a092e89b9f4363d5715
Date: Mon, 21 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789963233
