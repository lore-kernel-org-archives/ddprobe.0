Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BEFF132116
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 06:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719988523; cv=none; b=X05eqzbMbxrG64p16tO3XwcfYZfbXEkoOlBmLRpi0dLe3iUmT0gUTiFOT/HVA1AHRuRCx1wUvIYIpC66X7tsoLGrd/utxPoOBCApbmWT5KkpjNwawKjtGc5Zg4VckB8gkTOa+OI0s3DdOLDF38BuscJ5km5PG1fruEQlpX4wfb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719988523; c=relaxed/simple;
	bh=MJd6Mn0v543owTIO6fkeM0ofjdWAvwPWnfJrnYArqlw=;
	h=To:Subject:From:Message-Id:Date; b=D7jokvvXhuXuRxd6CN+pCsKp3LIikRO0WHyXbuX7UC4GsztWdh6UZCfkyS9fawMFbRivIadTMWMes3wRLmyORypU2pXV5sslCOYKZnj9BuXUUdgm8J16rGT8I3bX550eyiuBcJygnhmgdkvt57YOn7/UubXMKCSlHqfO51rnhrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqVQXsvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqVQXsvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B31C4AF07
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 06:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719988522;
	bh=MJd6Mn0v543owTIO6fkeM0ofjdWAvwPWnfJrnYArqlw=;
	h=To:Subject:From:Date:From;
	b=uqVQXsvCpwXvKSmgITFXdY195Ced+XebegMvSMJdbBaYwXbIfKBc3hMgkrLaQIBZk
	 XL1Sg8o5ekgAz6JsYy30c5s14X77tXsSFylTTG5EYsK5HOSF/d4UMWI3VIqI57Tp9m
	 bRDsnupGePhAbuD2BsOxEzkkLldWuwrvVxIeC5dsOM7K/JJV5Fm5PAymsvO1iOykw1
	 gDgYFTyGGq+jvBy0nWoWF3MuBivRf9B1JfbXbsYrpp8XtUK+1V4yx9mlV2dVVgkmpY
	 uhgr7tgvRa81+IErPPKzwkblDjfi98RIlHPDJO76vYx2RtXCbT7VFxE028nB3/gb8w
	 BF6uNOUZ/ZWoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46B5C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 06:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171998852276.8016.11277898637901484325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ec562a99c07786c47a745819b497f1bf4b5382941d4d8035c6d91b97c612f0
Date: Wed, 03 Jul 2024 06:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719988522
