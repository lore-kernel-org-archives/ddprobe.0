Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FE31F4735
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736327154; cv=none; b=KZ4VoNiyBrX+qpn3aurGj94E7TEv3ywu2qiP8Z3y9hPnwsgOBpIcBBIMna8D39Wo56sJMPpRm4fK6K2PdgQ6D+GoU50GmcA+9UxrsaEED8T5p0V9XS66NY9f/FGlKmf+VpMhWLx1PDh+gdUXD+NOBAC04sGeo8oz3vnknSAXDpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736327154; c=relaxed/simple;
	bh=v8wSpC+WmNt/Mw9dkRKWhLYFdAFCguos4HFeFNxuO8E=;
	h=To:Subject:From:Message-Id:Date; b=hpTso5vH3UAZ6EpJqmqNNmVjPV2ksWFyzfyyZze0hYngOhzOq1chCGznoaB07dZA8zcTf0+YJidnnfl1hQDdNoE7GvYDfg0xd+dYgZDY45wFsI0v9OPCMPRhzg8f39HURtdzo2NIuVYVUkQ5J+ImuDyPP+qfsH6XxU+cvnNVxJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awI1BZuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awI1BZuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06FDC4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736327153;
	bh=v8wSpC+WmNt/Mw9dkRKWhLYFdAFCguos4HFeFNxuO8E=;
	h=To:Subject:From:Date:From;
	b=awI1BZuFPA4h/DDo+MccaCW174pAHRpg95tWKFQlEDgpPaAH4Wfi7pZcd/XwfZt/3
	 gTAHPzP19k1GdrW/bmPAGrPtlt8WmVhT3KoTHRcOqhxba385EDB5/kXSUQCdoMwHKE
	 iaU8tApwZAmyVGOIR/ReoTOybWjTj50u2ZhybAnOZR20V4Dg0qHHc52PQWy2MVo8YM
	 KR7gf35uxjoIGPBs/tXJUNb/pwmYFvq4VPqOvGpYlg2okROe9x2fH7V1PLHL1/ai4D
	 xel/rWGIAIQsWOMqq+/pyB9qjTUttarm2UV6mb5pAigCItSvVFDeRhBm6wBA4uV7fg
	 MfPJW/e/ce1uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9977CE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173632715361.19748.4793128197459113369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5b7005eb788be14be987ffc557f97924d12bf795235250903403500136cd05
Date: Wed, 08 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736327153
