Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EA61B960
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 09:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720861823; cv=none; b=UgIfMhN+M5Jvot1DA9t+rFOWRsFbn5TsjnSyFrkswTsnxDBZnroNgej0FJyavhhbqnBnvo1nT/gEiLMMRB4lgMFEe3C3Qzq58R/VjMamHs0Yo9a59md1/Gj6P2Ya3Jh6/ta7Kb3IX5fhZCoOj/WycYSjaMPZSaP75rCLOHJBGJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720861823; c=relaxed/simple;
	bh=yG0Bn/jiFyr2yFtqvVsu7ZC4LTrN83Pc4/7Ffx4x9Yk=;
	h=To:Subject:From:Message-Id:Date; b=FcwLoxpPR6oALGNXQxRbM1NQ531T2OzmyCdkSAJhWA2IOwAXDiiwY+H6nyEKqlg5ZhKnG+Fl9ijdy3c9RvpWaQ9SRcFXsSOgUpjjp0ZffG1T6YJ1Q6HuVd4DPni0VuQ3z8pagJkaf0EazZkna/32b70gc96am9SxfhDQE/g81XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIWMayZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIWMayZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E429DC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 09:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720861822;
	bh=yG0Bn/jiFyr2yFtqvVsu7ZC4LTrN83Pc4/7Ffx4x9Yk=;
	h=To:Subject:From:Date:From;
	b=bIWMayZT01CVjkjCJA+81qtC7fiB8jH9o2NSdJCa+fWf67pl1VHg4Jy8r7j2xtAp8
	 QeStedzYkt8gHQjMdg7oHOJUAu3ZTN4+zmYaIQ7dowMr4kTUy2SpoNcBp9/VWvrdia
	 8eC085+2XOUMYEhDv6rLCZKy2mEFlyC7t5P8xLwyVD0Y7Lciyu2hJ4IwuT+dfcsPhI
	 DnnsGfuXPQMjTKYbMpg2D+lb8UBgXTUA7C/EDWroTy+GqAN5v1WI/Xsj8gLhIjkEhc
	 CNQLrKOdP/5ubYed2nWnZbXXWsgKvbld8CVEwjlCF/O4Av6rwIb/Y5XMEgnwWrWd/a
	 pxG38z2hP0Kxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBABAC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 09:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172086182282.14030.8070586974710119112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a44c4c1e9b1194117296efbe2d2be8ed1f41a88dbf665dc697928003335031
Date: Sat, 13 Jul 2024 09:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720861822
