Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3489021ADA4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777714654; cv=none; b=HpJ+IFHA3rEmv9c09UsfIB05PcCHSmfp1FQchmZY+CYExLHWRbbkgQYaX3drJwMZjF28Uu415sxy1/ld6PZNMBmMGJjLTS5owzGA3qWGG60dYCOrMt17nR+dII+wd4LPqBmty5UtORRVmGw7nhBtYqsuWHKM9W6Rz7QS3peWdRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777714654; c=relaxed/simple;
	bh=xZxA0Ppeod8EU73kzQOgfer2lCCDThcmNy2DdiPTfDs=;
	h=To:Subject:From:Message-Id:Date; b=UuEK1U89Zko0Y97STQnNcmNzOF8CB1XM7Redels1YPGTqHKTcAmGm0zc+Fa/XUhK4ezYj4KHWKBlrvHM+uhPR/jzhUODZ1CMUZzuO5o3QveVCvq5nXORWjXItMpragBwj/0TtP17uAFxizXSsUBakY2thEGwCO0FEpGcPnvLv1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aqzq+oTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aqzq+oTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C2FC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777714653;
	bh=xZxA0Ppeod8EU73kzQOgfer2lCCDThcmNy2DdiPTfDs=;
	h=To:Subject:From:Date:From;
	b=Aqzq+oTKEmztgPYB3JfZaaQ4j6kp9jH3oBgveoMUX4BZDWL5PGk3bIH0+RiFxSXHl
	 8GnkT8cdnLeBibr1H4930cyINF5dgpzOLsukbZqxTnprjghSMRG9aXweKehv1ADGkD
	 pSED3JjTOh+GqZlvRZGx2XLPM/a6tXRDV4tX0xPRmmD62tRViOErxq6K7lePCZVxyK
	 XmS/KLv9iNmxODZFtd7efLO54guEgJWvaEb5jKXEfwyh0F0r7GGYMy8JaTN0sYK+dt
	 uyOo7zi2lKKnXjJ7FR57oxUZApN+0wxYjhOx1I/ART0Ok7movaT3DNrazoiy7yDVAz
	 0V8zJRp+qpt8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0121CD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177771465368.2141.6704591665654463566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88784c3fa3dd0bea8f79ec803e603a28a7cd0b9ce952e93646b50a7e3239585d
Date: Sat, 02 May 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777714653
