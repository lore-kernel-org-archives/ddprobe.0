Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4063B3019B5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765300374; cv=none; b=cGvaI8f299W0XHxYquya/YsFUbULFFLdtZ1MAAiPHg6qc1Tm7Jch94fVx6keW8Bql3ma7EEm7If05PTRbLX61I8ftE+pcwfSiseo0hzXslGTPf++b27r4mqY2fM4IgYIa9kMu8535jJVZ5vRiA7rpLWESh6g4eYRfWRshVSDrEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765300374; c=relaxed/simple;
	bh=9O6vk6UcjOEFcPjH4SOb/KSAuDUDsmIGn7TNuYV1utk=;
	h=To:Subject:From:Message-Id:Date; b=uJkvj7RVzhkSzv8MTCa0BW4wp+9UmiM/4z/wkwJ7WeIqTredli3Ail5alDD4MXFNEV1bPYQDCdREXa2JXbIdqrBsGcXDBTF+47tkcMYMYMJEFX0btO5DM9W4Ezv0xel/p1Khw/PRMMPAJrmseanSQEuDqzD8v56n268VFzLoq6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgOmsblY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgOmsblY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C22C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765300373;
	bh=9O6vk6UcjOEFcPjH4SOb/KSAuDUDsmIGn7TNuYV1utk=;
	h=To:Subject:From:Date:From;
	b=jgOmsblY2BncwyuhY2T0x+Syz0crBPCclh4O+R4kMV/xhY6zzzt8CYdPgQMTUW5gN
	 MwlCiskmZa0xq/eJkTq3PD5HDljdOIU6NM3ka2YD9vwQr2ML772kqr2BhKWTp8MOAE
	 Unekxfnau1Ivn1VIeDO+yFOsR29DLJXpDkhv3LdELt0JY2XsOKXurFuR6ds1jNVNmm
	 ncvCBRsoP4JGpJt5cVakqRLyYtrk4+guSFDy0ztEdWwxzGj2Sozwe3J61AhbayZhen
	 HsVaVjGHJ0QslIoYZ/1w3Fp9cwaftn2jqtQ73cvsW8c5r8/PlThQQ++bOBRq0+HIzL
	 T8P4Hsxc7hVgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A6D3B98A
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176530037358.22408.12184833728806227024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d68dd4c7a76a7dd0233e3c35794e3ee2eea7249916083b2c0cff67f89aa5684e
Date: Tue, 09 Dec 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765300373
