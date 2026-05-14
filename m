Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB213B8409
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778742634; cv=none; b=pcL+qP+vbn8Phb1tJJWr3jhfxXOuFOtN3QuBQNy81Vb7Oo//Fwcczwa9Fc0ki48NAfAMb6w3MG3NAmEaA43zvKJsbRJmG6l0Ux1WM8dnbakUYXG30K+qQ45xU2UV8BVCfm3iQdPsTBIHZzCceBui+OrriyEf9ODbvkRCvPL1Mq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778742634; c=relaxed/simple;
	bh=UKu/Bk3duUMkBWCuKPyOKDhVoQtpt5Yu3ZIS9k9WD2w=;
	h=To:Subject:From:Message-Id:Date; b=CFUJdkvosdEd8m21emVzal8WL3+Ha9HkmEPJ5pDrqOwCnp3RP1DF6LjT6ZjLtJc+x5/v8fRL+/a6A+MjoWdus0vzQUA4oi12zagt0O3P86cAcCzVrCyFeKndlj4N+kdomtqvH4cRfaLhAnx0Yc2anDwd46iWfjuseafqqksKWrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1koCNZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1koCNZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C2EC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778742633;
	bh=UKu/Bk3duUMkBWCuKPyOKDhVoQtpt5Yu3ZIS9k9WD2w=;
	h=To:Subject:From:Date:From;
	b=q1koCNZ1JDjouI2W0k2lYvxxXCeIRFUgdZXUn7y/s8C607L4TAcdvcwhBQ5saFtlf
	 HkUYn5T4xKU0mR9eCarayuzN2PWCzq+TTkHET4/mcmzSI0rHv/yQeBTZZaV3pUmOQY
	 G5L3p5HgEvBhqIsxmZaRyxq/aJpAsRUGODon1cNQ3okCah6gV+JLIibFgHbcOfUTz6
	 QM0HdBLlYBy7Bf5aFkLQpXQjwmrAz67iWP+xhUIp/rd7qmfNoUvtM2OPD6dSSslAGh
	 u63ONAlCJ/L7BaP834sr4tnbas/oGQ8kIs/JDtcrrHhMIIfauQ1M+4ijKp7svqeyAG
	 6JIar24HGPLlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22B2CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177874263369.28330.11477255744299737257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3f766904e732505a5029e4ad8c2477b37654cb13f993a976cfb0bea4c410eb
Date: Thu, 14 May 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778742633
