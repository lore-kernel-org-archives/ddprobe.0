Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4120F43147
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 15:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720538783; cv=none; b=spH24hIonj7IF6rIMe/Yq/aUCSRtNc+ikgBX4wXranrU4pBo4DKaMNdyyvHmCyWSXP6y6GyOVqQKZDy3iLN73MOb/E0OKoyO9H96jvsSBs3/WwJAIpt2Hg3vioYb2h2Kb2baIiw7WIYa++lrOM5gqg+eVHPQRwmETQt1GIYaCgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720538783; c=relaxed/simple;
	bh=VMDhWX3s/8i6reYexGFs8MdtzGR5KtNrOAEOMRyu0Vo=;
	h=To:Subject:From:Message-Id:Date; b=NsaM1JrCgwmt+mJoM/+iOw2fVhIRbruqcsFG8JFKsPrMFYKPWhI2Ykl3KRnXdHmOmc/9zb+HpbMoL3Uglj1ihB1SoOdDvLYUJbIqDe/OTiNvEzPvDltcHdvpce/rLB2DyG16GFgXEHJUzEitlqTbpXOxZXZnklNuwXFbkwcSPik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQ28YU1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQ28YU1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D105BC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 15:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720538782;
	bh=VMDhWX3s/8i6reYexGFs8MdtzGR5KtNrOAEOMRyu0Vo=;
	h=To:Subject:From:Date:From;
	b=KQ28YU1cvs74XvOyia+qxZWY15UIYi3mvox59nxCqtaE5fY05iN24PQ4+1Jhhlyyy
	 B/xIUH5K2yFnptWGr9ZZMLerWCKyCeGllHoEOlFy/Cp91Bds8POK3J7gkQjwmyGXNR
	 wz1EnyY2ELUZfYYi1C7GAQP4TfDg1mpZu8QzDndY/8Y9vYO2AzrlYJqoNcY+mMHXnp
	 KUiriWqWM32a5FTk9PnL1uNyOpS3+apUxYO4KKVsdob//ajD6xcNx8CECDLBMCdVik
	 dopmbJ6NiQdkjDD7aaMDNGjBg+S3mfx98ERfceqC+jADAp8RckKiTStUi0mUaaOn1+
	 +BpZ/fkbelyBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCFCC3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 15:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172053878277.567.3174111907506512530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb073fad89a6653f72f54f10a630f4a673144e8bd0bccefd6eddc1f7a2147fa
Date: Tue, 09 Jul 2024 15:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720538782
