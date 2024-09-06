Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B301C9DF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725622554; cv=none; b=DPBgmhpQU6N3wtUDhE26mukr2oHB6rm8HN0uZ5VQig0AENeGLqTRZw2qfvgGUpHjCp0X2XkytyBh7wyvFysEg9W+xxb8O2jrqqlwEECLzmztt3YUDODWEjHMXhStLaO75W4fxQzAWTN9BV9riZ/TMVoaMZwOOZf4wR48iWqvl+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725622554; c=relaxed/simple;
	bh=36amw+f+/4jp6XpLCeNROaV+oGkw9Vkj7WMWvPBdwUw=;
	h=To:Subject:From:Message-Id:Date; b=EdrtbjnOHIPGEJMEBjei9o+0TnvVeOx3cp06JuKs83xyv060MxZH8n24uUBwnfiUyxAn0ELpr0VW+O1A6BqODXOaqaKRjbwRpCk7nfxrD/8UH+2KFHK74VFT7twC78aLVKDgUeZm95n1OvTmhavatRCoDrubXq3K5VedQ8MLe20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJIXLEzT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJIXLEzT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48C1C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725622553;
	bh=36amw+f+/4jp6XpLCeNROaV+oGkw9Vkj7WMWvPBdwUw=;
	h=To:Subject:From:Date:From;
	b=rJIXLEzT/ryQAt9SMNJk9YyrTdweY/+p8TyV7XR37B9X8QzVvWWd/t8LB9CkarjPr
	 ze46QY9Kss46sbkxe2CVdO1q8piow6rlOCcQ1Sm/rh/IUCd3oJiuOL5vxTGGBKrrJw
	 wdn5TXIkOLdwRJBmx9BUXo6aOyAgDt3UiIzsJ7nREHgXLH+OoEGjGZxpEYsC7Oc+F5
	 zsE+qwdv7eqSfRR3PkJpqYjoPzv4Z4VSg/VjL+4heHA+ltLDtpdJ/Gw39pgEJ1A0SJ
	 2DU2nvJ8DvV+9xVtkKErBfQfOZWEaiwK2K+2J8cPeG20W9X9FLuhCQ9qq/2IhBwTHj
	 N8i/++KmSKZgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A66CE7AA3
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172562255365.28482.5865503293433435284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3fe041a4f5b2ddef4b1efe8d70299eecf8f628ebdd0c6b531eab3dea0ea08f
Date: Fri, 06 Sep 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725622553
