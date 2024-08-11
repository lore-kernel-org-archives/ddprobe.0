Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD584502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723379154; cv=none; b=k4PsaV9BqxEkK4HUk6WW+HFzf1N6tZEN29QL92d9g3hfaa+lYj5cT9hohTFu2kurCxSX+yxVEZxLwBrAP2mf1TgBFmOif1Dy2bQ8CIjkCt5LX0+ZyPsVsNKXzbvxEJ0O474qbiJPKrCKkXSYtZpSV4heOxovshOSyhAD6AxZ+O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723379154; c=relaxed/simple;
	bh=UULOVmdW8ZpnSHRKZKCERUZUIRZFDskAo47mh19pqro=;
	h=To:Subject:From:Message-Id:Date; b=g2qDd8sGkJU9OZHwRPWKccv0nnc+nHALv38yK9z+6dEFe3q2/eQ+ANIV3gN+YNYmt1pAPnKpcu46ivTE5gXw8wtOKKgm0YOqlMDRHfyi/v1BegEdhzEVJZJ/faVY09snVXS2tiVlGgAp3YcFR/4OHDeJGYfewruX4qDkzvmrRXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgdYI0pE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgdYI0pE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCA0C32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723379153;
	bh=UULOVmdW8ZpnSHRKZKCERUZUIRZFDskAo47mh19pqro=;
	h=To:Subject:From:Date:From;
	b=kgdYI0pE06IXyqzvZRlyjgDCumADTatt9r2kwyPLFflo4zlxtparMsHlsIsj1qFAj
	 DXo5a4p70lmv3fFFItrcUsZxYN3EPyLCv77J2vgaPuwsuUoktSGk1tpLaUf88qm9sw
	 3rS+FCas/asKG2SwqluD9GdCKHHFUYMwC4FLX1OXkkFyq1I1OpCY9wurqux9wbziEL
	 2jDuW6U4smvBxcJsGVNKU6U9ApzWSRS7P5T+uc5ABJsfF8T1UK3CLxJp06SxpNmKl8
	 9gtgjtEVg85ERcN8sbEr02F8nZTdMySK8lugJp9RoE1xrcGgTAp6K+A6AB+/JrlEDh
	 etuh3DEq42l9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B955C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172337915359.26718.10912680567966229472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eade2a1a9e82c56d86b8a886796bbf4b8d170044a84484aa8ad80e3db406f0e
Date: Sun, 11 Aug 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723379153
