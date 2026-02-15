Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5411A9FB4
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771125894; cv=none; b=pcSQzqrfGCKy9GMtOolv1CeIcQ70ok6ViXzw8Sv5chugpopbbeShsIGIEQrq2y2uvO2AH/f6oTWFGZrFDpXbCCv55iKntCd77jb59O1xxetUX32JElvqs37dfwZHFcAJvN2TzpGULco98iSyWVJarTboxAYRN7YFeU+697vZDCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771125894; c=relaxed/simple;
	bh=sYbl8bW4t9LBf6b7/SPjCZXRHasBFGGZCqPn/5+Mqg8=;
	h=To:Subject:From:Message-Id:Date; b=FF1uN87aCP9zlvfG/YS6PTF12naIr4fvlFthGYZbLlGiHjqhpVfGZCzbAgGZ6DvNfFOsY7lQngOIFYZ+OCh8wD0u0Npuw3QZpXyYF2hpB7M7y30Za066ijU62hfDL9xxtKHH06B4bA3HN1gOoHDAnTw7LboKY0PjwKFWicT3/Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aETcF4q7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aETcF4q7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAB1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771125893;
	bh=sYbl8bW4t9LBf6b7/SPjCZXRHasBFGGZCqPn/5+Mqg8=;
	h=To:Subject:From:Date:From;
	b=aETcF4q73Zp9+j5jrlGUzSUdSNGT0uy2ZU5LVw5qCJlYG/aV1gEkmXDiRHfcaxXc4
	 VYuhMc8bSHp1Sc/c/4Q4wgcStKdsjy0sboi+e5J1TM5wFftuEDidBbN2TmlBZmVqoU
	 2CmOn78gXXbIOoY/hNJ3fNmF+zTwav5pq5/sVP0zgRvFqW0i/2nmpU987x4njD61wo
	 1GUBk2xOO93W+iPiezh/hPagudFWjUU/tErrm5odecWhV8W6FJm20hcURM3nGZfx2W
	 TbAehnjspjgaxPklMsPKIkDk9yQ1E8Gi1mojh5eKyZPw8FiEtHMEZROJG7NpP8RLny
	 R3MIoO+NpG90A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4FAEF5868
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177112589365.13290.17812578306714967867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 014965f014cb4bec576dc8344a9d0b8101863115ddfa45893ac3ca6c99cba3bb
Date: Sun, 15 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771125893
