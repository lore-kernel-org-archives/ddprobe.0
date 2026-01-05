Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A30B299A8A
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767641634; cv=none; b=rzmCBDKSGnpjF4BWG9I4RCXiLCorkuxXeUNWgbiftymiKfkGmcdefXwZizR3zZM3Vzi07bxFTTgvp8xm+LumGLp6+gCXVF0dXXB3OBUaVMKP7tPo9kZqKSbH9Qh5MLJkyRkYYuonPn4b64BOkVrRRleKXrvGWqxInHKjoDOXLfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767641634; c=relaxed/simple;
	bh=tmdvVwxZQmRdaBBI2I2NAOtO2R79vK2PTBuz+O7nqOs=;
	h=To:Subject:From:Message-Id:Date; b=Ql87xac8/XvaD52DoER5SeyX/ENfAV9pr7r9gLpda36OtuN8T6f7aBuSpOS+gx6ZomObCKooALeX+3kP01a9GahEMNA9LetBlm9rAOLOPGPTqzknHSn9HhhNGUduyJkVz1YQoDYa6XeNV+zMJ210NPilCMsO2qK5qfIdmk47lbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljGsFAHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljGsFAHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BF0C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767641633;
	bh=tmdvVwxZQmRdaBBI2I2NAOtO2R79vK2PTBuz+O7nqOs=;
	h=To:Subject:From:Date:From;
	b=ljGsFAHcI5+9e3bkby7cRrBpYvWCRx+XOrD0FaVU2xM7cvirduIij1eoFzCY2U/u1
	 N4W6JVfKg6mgY1ThoAllwfsHOl8ovdPtiQdd26DaAyp8QUN3iILAy5UVi99XKO5zd5
	 XOvXfYw2luQmxMp/4/2ICT3fSFf0L4jA/yuWAAPKqOg5UmT/z9/lcr8lIn43XuaoBM
	 v04gABeeiUKUgBakTpNxFu4Tmg4SzSzb7xonkljCGKqzhXgADHto4PZa3SQjuJidYE
	 wpJhBJ7b0ORMhGfkiRNa2v33afxGJP7Q9KqotVnoePuG1glnMXb2kk+EOMpjglf3a2
	 TwabOKpSEo+4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96166C79FBC
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176764163360.26532.3676361125931535617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea651da4ecce0e88e33776d755489291ae654d442acf07820a6a4d6304c5cdf7
Date: Mon, 05 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767641633
