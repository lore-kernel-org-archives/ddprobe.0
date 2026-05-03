Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338CB299944
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777847254; cv=none; b=VDMwtuR2yWrMXO0LGu/gr/3PCCsK1RYs7JvhxBlxc3dxKkPVvEZiSFj8nHWLa6O8goO6YOFhAZyHyj1X0qRgtCsPtt7/e1Zjq6oCyHsq7nAirccIyGi/D5gsUJGj1tWQ1rqM1Qz5DKeaV82jHkd+GoUnyZpRJ/Wi847HDFTjt8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777847254; c=relaxed/simple;
	bh=kJ7H65MZadM9dRraqmkalRC690LhDo2QVpcFDGfqwJc=;
	h=To:Subject:From:Message-Id:Date; b=MznPt8JeJ9Ac2lqjaBRd81PUteLqB3G9c25ILJTFNYB02EcKRfflucs2twniSnXGyrJhNnyyqSx/yglqDH4H+5IKDQEECvEBi6/0BBUzPqoU1XwUfnzoUZOCGWY07/F1mAjyoMIalO3XruB7RHELKxWkL98yQ5wKAh9vf+yR/4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ijsuw7ic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ijsuw7ic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C244DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777847253;
	bh=kJ7H65MZadM9dRraqmkalRC690LhDo2QVpcFDGfqwJc=;
	h=To:Subject:From:Date:From;
	b=Ijsuw7iccxy3/SL/YGEZUazUFp+9yOC6Kjbu5xoKSVvo8dmkDYd3MdSol7PHSTORY
	 CrfC5w+JNdFZrEXZbaQrj3Ow6UtYe6F2WlTm3mhv87bd8A5mH7dMQVHH342o3EcwgH
	 0/OY8/FfgGu9+0qNoMsBcLwwNUx+ovlVQLOZPGC4/T0/8kmg8679EUYBNBRMZK+w9H
	 7sp3CxZgRmDEMBAAtc9F7zuTYUXTgT9LTqmIbeujcuPs+QNSfNV8yhwuK9x4+Hb89C
	 FHlFTBYW8BHQtGZpMta9MI7nvqY3H2xcRBdgrrIgP2TEoG4U/KSJVx+hJxRCOb2rcn
	 tmRN5e+dsOoMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1F4FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177784725368.17062.8803263784950701890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28704225aad5bec078de8f64090085b637c8a44cb5e97bf2748694a3d5395faf
Date: Sun, 03 May 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777847253
