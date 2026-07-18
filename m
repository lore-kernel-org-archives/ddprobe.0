Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F56A19DF62
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784346514; cv=none; b=Eouqufl2AmCwkxFJSNxeF2OBoGV50DuuJmbi9U6VXAUoScbiHMS3UPUIatOvB2uFUrMnmix3rfPrV5/65uiyhec0ME/T3LVoob7UbS900aAz+8q224mat9YKGp+LsrY/qjNM8wRxFyms61BPgPLGTyxtIWdGBYvwVR9pY/GrqyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784346514; c=relaxed/simple;
	bh=La3AOJb4d/4fs6vEQXD6PaG8Jflh9UnDMToYBpsFEOM=;
	h=To:Subject:From:Message-Id:Date; b=QLVBZeOsLYllwzfXIfBiApkSAYHz+5N51ZSii+53vw0eS/vR8Asbij8HfTvxdAbcmnGjg0sKP5yRIj2EnVbYCn+FLppp2Rk1+7UMOFmE4AKeNq+9RBhZ1uSahGSqySha//LeJGoe5kROMexTQY5cLfgrSnHSEXD91KeqmrwoK8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNpfAYAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNpfAYAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF60EC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784346513;
	bh=La3AOJb4d/4fs6vEQXD6PaG8Jflh9UnDMToYBpsFEOM=;
	h=To:Subject:From:Date:From;
	b=HNpfAYAjgndh4UR1GxviITzkZ1DVL/O8wJfgSbTm7IPPbZDeJADv1YdWeRh4bdmJX
	 kYohmNieT2rd95QWIBrWTWansKoBs6Vn9f/RzMUdAxetgm/r3p7fWNneTHMADs45Qd
	 HlWlAYQvkRQ8/3WS2R1MWTEvhb39KX46yob62ckXkX0bxRrDIiCr6GuuUDXFbWu+Jx
	 14PFpnm2CGIOq5Dq+aZGPw4rDrz7t02SEc1vN7NhLy82BFNTqP+8tM0ELOX6hCdiQE
	 bWXqkD5NR1ltgj9wxYZ1165rtrlOw9DYTM6YAz6u8MGb/yy0qlVmXO776qYCCV1VKK
	 6klv0IwUT4yzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABA1C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178434651368.15025.11238442448674042185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae6a745185ac9b9e47ef721689fa6b15b2603bbb11d10d001b47f4cd63df968
Date: Sat, 18 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784346513
