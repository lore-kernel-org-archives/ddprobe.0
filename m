Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3929617B421
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737407154; cv=none; b=KKg3WlSm0tCHO4M13yDWCQoHoKZmHKN9enLH8EwAuhx1WXpwF906JSEG52wfJcCKyRG7jaXzMVR21NLnTafSetUwxSf3Nl92NVshnfy/CCy76rbLPeBRntYSIOb/p6yOHa+aYSNXGIxHjcWt5ZtvytucgsN2RHO/v4i6PDT5++M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737407154; c=relaxed/simple;
	bh=Xl7pMFc90fg1Y23sCsud0Ut9ZATQ5dswJEUuAgZL9dI=;
	h=To:Subject:From:Message-Id:Date; b=mPnHZp5EFn0VMkzW7W/fbmNzhnJup2VLh+9OE8e3/iSyUFlKTmqgP4vZYSaDK09EfaaukkkFjz6c/DkRb1Dka0kT+/ZsTX1A1CC1DQGdfAzbQiSKmCaqiXe0S8+wX/hZpse/ZE0pinvmF9yK0aKLaYteT6hOqpNxJIbHgNwGLfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJ26A6NK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJ26A6NK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ED0C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737407153;
	bh=Xl7pMFc90fg1Y23sCsud0Ut9ZATQ5dswJEUuAgZL9dI=;
	h=To:Subject:From:Date:From;
	b=OJ26A6NKovJCn5eNhJCgFJHQiXpNamVc7C2aO8DA2W6bagHBM3fdQfb9TY+Fma8yB
	 WwVh5YvXhKZ59OnAJTBj91fWtEPIduU9QJwkrmH+U+N76VHnfvx7xcNBQpokywWTit
	 44m9KSNN1Zqpk+cyBNSe1q6fckROkU7BdePtG0buQBrb5TMIZciUjedvVNHxuT8fL1
	 sfGQbezj6bP1X2Oo2OEn2dqmbGezBd+Oj8LhkNxrkBfSdTdA/5uAGsAqMrkC8pUfTq
	 zcgHjBD+yMe2sFQPqQfUAEwnswLiy/w69L8aCOJ9RFGxn9r+bkVzG9nxy6DNcGCH+5
	 QfG9IOowqmW2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C35C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173740715359.6479.7719397348602700305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c8ad2f24113e64f5e205763234c124a367377ea6bf611aeb31a1c320b569f23
Date: Mon, 20 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737407153
