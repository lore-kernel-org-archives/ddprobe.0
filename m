Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB6537160
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747717794; cv=none; b=u6zqI4eVTetppzpUKHQI0DVZRrL5JOhSIbyCcmOYwr74vm3JpLy/4MrUVEOJVxJomtGM592ZcEqko4zJUWATMh8BFHhzw2c0KgkgbhwMMkEcmyRmf/PaGkM8ZzuAOQ9fCMeGedUHTZjHOUnCGyEPi5FiBqAdWokfdx1pxYku3p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747717794; c=relaxed/simple;
	bh=Fzb0pu8oHalBCqYoC+I9npv46VW6Wm481FWwtNk8r3U=;
	h=To:Subject:From:Message-Id:Date; b=b+wfyAy/PG2utNn0GFEkNH/L98RnqlCZtIfKfR3rOLW19C02p/11C/eZ2IfZVuL4Kb3ZnYsvIdCX6P0kQ3R25F4CdP6i2+xWreB8+6GiZz5ZCnjZNaWU+mX9uO71OIkK0xjJhFCN145QNV/dTZVX+VmGqi5M4o72N7DvSFu4eHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JrbB+Mpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrbB+Mpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A179CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747717793;
	bh=Fzb0pu8oHalBCqYoC+I9npv46VW6Wm481FWwtNk8r3U=;
	h=To:Subject:From:Date:From;
	b=JrbB+Mpgg0+zLEwy9D5xkSF/Ae1NCuAJUVf0YQ+Fi2aOPcIh0MqXOfBn9kLikHhsZ
	 1WBW0sG/4tYNFvtR44lCrxIxLJUqWvBA9CpPGtiJ7xNmwqCyy0URMlt00MA+fvieIm
	 28vduN8Wl2A0Fg5ysvU8V3ymHq3uWDmJr+g7+BAFX+5SbYSW1vFdlHz9F690p6cEFy
	 eYD0U0TjTfF2aJhzk0g35F/idN+ShGMjrorj2i4rbEyc57ImgzCfkSYsxMiTo+flMe
	 oftZcOgHMlY1jgfMBvHyiuLWRaBID+do/4n0jMFmShQiYYuFekKt4O0raRXrXdKdY0
	 QI2tDPYP+eVHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB27C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174771779357.22434.5552695078357523863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 431376fffeab0c2dcd7f63604bbe83ccd3836b6e1abfb057235d26d2f15a5f13
Date: Tue, 20 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747717793
