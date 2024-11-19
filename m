Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264C81AA1F3
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732010754; cv=none; b=MKkFbgw6No50FWbkljLlW6TPbp/i319BwUsUx/PaACAUlt3ubSF7vzrK4efmK1zOESiX+/RcaiuOZd/g8jW2K1NWfwdkBWOHo1Xg7cGpBkFHIx8OIlD348wBb6MHQtC+H62avmcElfZj+0E5wiwgnQ+j78o6HShMwRLOKqR+B/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732010754; c=relaxed/simple;
	bh=8VrBf/LjlXoE90PwgZvVf9+Sw7unpksbJ62AcyxUYdM=;
	h=To:Subject:From:Message-Id:Date; b=LxNeGgT1Nwqijz2H1jeS4Vm/bNHXigl6d9Wo/RDzeY+xW/oCdP+cO39kqSwz28UZR72ckuQQsyxrP3f+cIKw8cg+ifCW0UNhn0+gAzbtCzzrX11decpBFJUZiNOeBquGDdraCyAuqOukBeVdX3RsSAbrNjsvDspuXFT35Khcm8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDeorpFU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDeorpFU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC647C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732010753;
	bh=8VrBf/LjlXoE90PwgZvVf9+Sw7unpksbJ62AcyxUYdM=;
	h=To:Subject:From:Date:From;
	b=bDeorpFUzoHpJzOHeT+/dST+6IUPhS47FEO0LzVEhlKQue4Ev73fQIJAOgSuow1ah
	 Rn9lg7hDtjnPuzsftAafLElzSNSyesT+tKHMe8nflO9F+KLRwtC2cjnIPrveNW+MQJ
	 607Iw4Vr1ofwwmacdTUfkN/mWhfTbDVzN2LcZ22KfHNWE0hASBmtnwkAIC1oYngUTN
	 WP1z5x57MZxZXDaCT9DF5ZR9ta9AxTbQpQoCm+G0HKBHr3Mz477Y7OmgmNHyNTe9ln
	 sVgDWgznXDk2OJyLTJHA5YkPeFQCK/baWwt9bHgP6HMj6cwEhoddLWSIXk+GO5E2y5
	 2RfRFwO0Pr5fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96746D60D1B
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173201075360.21893.10689362429316328271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47e85c3063a186ad7c85672281d5c21fbd0377213c8b8994366453adb8414af
Date: Tue, 19 Nov 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732010753
