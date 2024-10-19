Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159A2B663
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729356354; cv=none; b=FxkORHb71UUVyb7naE1YMeVuA+YAppPYHGIs0dio8ssj929PCr/pPh4vKe94TFuX9gc+2X5rlICBWPUjQn0iVv+sLeIUiYIauakUFotl9/dnHhcui9wptMI7jVJf9Y+gdn2HMpcPREprNpH6MbfyZuN5CyZpnwDsYTvLaL+I3CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729356354; c=relaxed/simple;
	bh=QY7Ee35sRK+VtjDmCqfXVyMje4a+CgFoCAWpNvyx7DU=;
	h=To:Subject:From:Message-Id:Date; b=t2nX1d1jw1s1TZ/1tWXwkIuRwyP2F/TsNhYqtBELFAbIxZYAyaKAABx4xbTE8Jfsr04AgrmU6I2dL1huVFIJQdLZl7/8oX4N0EdqMU2IWwah0VP92R/H0FB1YJ6jT9SK6w1ohE8uaIvYpos+44k7GIzNzfbyU1UgtSYZn8M6DHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAxlVuDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAxlVuDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDC4C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729356353;
	bh=QY7Ee35sRK+VtjDmCqfXVyMje4a+CgFoCAWpNvyx7DU=;
	h=To:Subject:From:Date:From;
	b=OAxlVuDAHZjNxBPaZ879qHL9qQsGXgTo1eiOx4zhZ37AYakdNy7k9fvUVAg+kEqJ/
	 vgpUoj1ksM/oCvFthf3wUs+cjMtOdhNk5GkpXyG1OC9TDSXS/avQI5X9+9ljXXtW+b
	 RBMKiZHmJR7RbQDxko4POrYb7uENFAFwaknYUQmshprjKjsCSYnb+VwDXJbZtKKeRT
	 qgVd+CdYwxXbUxv+HnInxsN/SPhBdBo+mHnuxApULBW1OPdF+alOHLvXmoTOCMvDjO
	 c/1CkuEoMNQBGL0dzc97p4C0wGiU5hvT5FngtS8oByFD9l4uZ0MbyAYIPB05AHbTg1
	 qccLEfGpefCBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2D2D3C920
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172935635360.27042.42012856928416226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e851767e784e4b4dca3bf5dec94e57ba8a10206934be9d17c377be30c3833b
Date: Sat, 19 Oct 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729356353
