Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2E625A640
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759345795; cv=none; b=bsHcudi3MVHSgp17JJl7DDZSwLobavoWpS/c9II+NOgVn2fmKcny/LPQTlr1tA+CK7qJxqm2SRM0U1QAbcPe81zR2l6jzNbQG0mxXQtrIFcTYWGI30iQphfl3VyLtZhH7xMWFYF+Ex14qIl4s281MOFtKiJepFQmsTXiRae/rgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759345795; c=relaxed/simple;
	bh=LEIwQBnj1vGdu3thbq3RBc5lLYyunGtKuLCMf42W4T8=;
	h=To:Subject:From:Message-Id:Date; b=BGg0SBiAZ8m+4m9Uy8aHhCC6kb6cKxNKxMPJUGgnDOP4ZiIFo8aNHOZRGlIBpi6ujuB5VdTEQCLXsAxus1gvVcJesV/c5sQ1KnUu7pZ8c15/tOlA60F0snnymtCc5wmM6QvLzYhG2iNh6xirMycQyUtpWwmeyGoeGfE8SX1lGPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DyyPeuC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DyyPeuC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A122FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759345793;
	bh=LEIwQBnj1vGdu3thbq3RBc5lLYyunGtKuLCMf42W4T8=;
	h=To:Subject:From:Date:From;
	b=DyyPeuC603sIVF4lgf7zI2gI7O0jgtamMurkUKAmy8+x8HNH/IxykJI/IrzCDG7ed
	 vGB2ktcE6FkgHwIFC1pWf1fuknytnThY+dcAyNU8I1dWL6aOddWi2c+REgvODo8H4/
	 xo8suQT65iyt8hhgARxXjoA2v+aHV7YxWLSSh9gAO2vz4VuqM1cQmBpI/hM+dpsZgw
	 VouygeRaJH3w/bBGbzYQ3R1ZxHxKwqRFq23AUtiIokx8BOsMXphVDAToajxiGqAH9K
	 /ydMo7aW8OF5k22dOdp90/uNgBXawlKjdxG8ahbzjdgsrGhfUjXPoBK8gnvn48TvpM
	 lgMu1OyC1xLOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935CBCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175934579359.10302.17366609547408228186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a9baf8f6349551bce1f36db4b628d98e0556a1a13d123c7a7a86050440278ed
Date: Wed, 01 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759345793
