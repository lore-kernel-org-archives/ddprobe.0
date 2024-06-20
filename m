Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565421ACE7E
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718888423; cv=none; b=ksFuDPMl0WaxKXMvIdkOnDXE74geTKWv2b5PvDGlyhffAoAie0CYBlSflFL1JTNMqRMBCv1CYhHkfHJ0plSUIDchraAt1McuWxSLbuYN8O+ecGesKaWUAmtncWrkTzLt9r/3Tcu4qOXric4/iBJVlQ/Pvv3MZvAKWJKNZ81V+9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718888423; c=relaxed/simple;
	bh=greTUlVBJamzmFRbhHULLYSLaFmcPf679bDSrqJqFRQ=;
	h=To:Subject:From:Message-Id:Date; b=thkOYfsNIGgpXGqF2mM0d/EPNnCNxABHvK8IDdKMM9UUhXbEv6Wm8RTsqV/wVUOP8E9OFV+E4ujryAuG5P2cI+Zb1bytyhBpUG2Mz51RWqVorfDVoQR0IZo6yaEa3q2IJBQgVW72KkmYa0rTEawMxGcB9hEbbFtMRueXpcykoBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHsNbvfh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHsNbvfh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C54C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718888422;
	bh=greTUlVBJamzmFRbhHULLYSLaFmcPf679bDSrqJqFRQ=;
	h=To:Subject:From:Date:From;
	b=AHsNbvfh7hMy+7LGoY2BZr4RTE2itmAv2Maxxaooi55HfX4Jb6kn2W/OCSLKIFQNP
	 BB8x3bt9YfQYJs/Ov6UBe6/yR8Dr7PZ8DZVgcikDnyh4xQJ4t4g1jOA4yhoWknXv3i
	 zVhtVDwUor6Rdqd7UlcEnRkWSsw0qlb+IjFr+ynDfk4g0d0uF+xPeptEk1D7csNO9R
	 dpCdPzllXlVoblAGm8tnvvF1hGRkRv7Em/Jiq5PdymdrLTgwNwSFwfD7rsMGg967K3
	 aSiwTCjTwL2+j1jqRIfKrvCLO/TqZsYFzD3VK2AxOqfHwI0kzWplBQU4IIFU2riqaz
	 LYfE81c+hEDgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCB67C2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171888842281.11316.16306224524467453409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54b408de42c064796b286754e081c01769ef04dcb1e5f16370f758334b2f25e
Date: Thu, 20 Jun 2024 13:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718888422
