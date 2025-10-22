Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178D534D900
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761158394; cv=none; b=HvNeAy1SIC+W7OkZpcoXAxGXne1BBnMqFmRlMwsEYKHS3znFb+LDa6N/02QGMqYsGGSo7yPrSSQjSx+I2zVzgT+EyUAfFSe9SEDYEkbWkI3QVkoxve6L34rBRlzFX3DfOoCIFEMkEKaa7BMciEqjxXa8J0aPQvAMZCqXQCe8uuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761158394; c=relaxed/simple;
	bh=scxDZnbghYUGvUvigGofvJikIDSJ8xV12ho7Dpywrjs=;
	h=To:Subject:From:Message-Id:Date; b=rhXB0n9bEEfg19OOpMOnuSTo8B3uHEIX1NAzFZTFVCkp2xa5WV5s/3McI55oc1c/w2dag0CUDDR8RV/Onyj/BSGN9Tl9N33Hog8Ka12KKUYn59WggasamDDTEg/zVesSjYbrTjsH9ACz8agJHWbcRKqRPr7erhFSkjDtyQ1nKjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qE4P+ehZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qE4P+ehZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A202CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761158393;
	bh=scxDZnbghYUGvUvigGofvJikIDSJ8xV12ho7Dpywrjs=;
	h=To:Subject:From:Date:From;
	b=qE4P+ehZOeP7AWMY175meNgKGHuV1mWGsnzG+wHbzd9rZP7FoHb/mDL2T6T+DLORC
	 +w5pJm9BdC+UT/wNOt/CjguY6JrrPr9MmPQUay0yZozVusYoX+jwtyECyOxHcAgeIC
	 TQTOwKvK3etmS5l/2dY6mm/DWYOtDQWOQiYj4JrOdXY8a8WJfKkGa5I4UOtEZscQMD
	 j+v61XHoSwDN0CV3fAWcIS61V/2O5QOeVb+rM5A8o7wNu7mngj+YsKcNq9ul5QvD+d
	 oyr6MQMEWNjpyInD6iUlbsxwcuxav4dnNkhzWmkJ+6Ig+KhJ26ZxuVEZi7ePeOucOd
	 guWh5cP+3L7+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A7FCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176115839358.9584.16073147576610338821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e707b1d41d37443aaa5d961c89eba9640376c822945be85c3063bcfaa51ea3
Date: Wed, 22 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761158393
