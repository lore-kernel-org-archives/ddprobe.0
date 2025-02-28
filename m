Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5473C1805B
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 00:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740704334; cv=none; b=newYd449+5LSkFd7ANG9X0hwAgHOwmG4oClhmaKG7tmLozOhw3xkYnUvh4uhLsGkhMk2zht37WxcNHF8qsG+IUGkXsPBGczaaf0fSuPcieZodqq1AHh2Jhkh6aZA7WOt+4VWYzER88DaWd2rVy3LsMwxwaXapk84rvj0y+5tV+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740704334; c=relaxed/simple;
	bh=CEG9QTWSVb0BILrbc5GivcmGKV8ZousANQIHeUJ4Pw8=;
	h=To:Subject:From:Message-Id:Date; b=miTRPkgamff6NUm07wOHWOHASp4ZSQ8K7tXs4nPBgAKOnWa5pAu6zumAkZgcA4hFPDG1gIlKLDEusPS5cnMPNy0YS3Rd83Tvxnt/4JcEKfFsmRLMkd+6xsg7G34l1NmlsPPiedk50yqWujXTGNIdd+znF0oW+d15Ntp0f9wDRyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGpl2wzG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGpl2wzG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B53DAC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 00:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740704333;
	bh=CEG9QTWSVb0BILrbc5GivcmGKV8ZousANQIHeUJ4Pw8=;
	h=To:Subject:From:Date:From;
	b=GGpl2wzGx2W5cmPcVddlZczzp2FcuIO0Vg8Bn3mtjyzIg+Lt5d/M66ErEFkXwh+cw
	 w5IeVDQ/C5w2sS3ZBb4GMlhVsfsLIqfiMXlSnEJuIyeCu33j1yOZJ9ivE1Ld1HomUk
	 zBRuIEZsvxZVCa0lMdeMGd9MO8Ye7RzwAwzXyzV1s11ks4udyWyYQlz4BUC89U8fZM
	 04xkbiCN4vcsDH2cr6jIplW4PgH8IXVGiCwwsf1XWgyRzJ3MUhzfG4gElA9NrGZXEe
	 GRtYa8Pm9XUxDH/5GAXACFK/e52/tCMWvv/9lfstaDKTRRZf64I/Ey1VDUP9TUD/tW
	 5lp9NmUKLSfLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9765AC19F32
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 00:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174070433357.19099.5053594400576217908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051b9ce0f32a605598af420116a70c4147a5311668eb7986a0d253c9855c1895
Date: Fri, 28 Feb 2025 00:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740704333
