Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32ACF1CD13
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722037554; cv=none; b=t0cvJGhVhv4rw+NFg+RgLjjuU+wuEQT5VY6oRpzM9g4OWM5RRk8YN0DgaxXMaLn1VoxwVcUH0TeVTXCw2cMPKCEmn73ZrP3ulPB4MlUz8rmCbdwmAtv9IQx86L3AHkhz7MeBSYcTuSOMhlTVQguEUwY1h8NVuH+gOdj4mQPPU48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722037554; c=relaxed/simple;
	bh=jBT5gDK83Gk80IDnCfSvWH2Ew7NujjuwAdip2P3mUhc=;
	h=To:Subject:From:Message-Id:Date; b=IBbluI848lXKLJXXo93OZuvEP1CFrNa/kHhAzq72M4BQMwlQGZGXxRQPMxN7zjW8jOwhKmRaS+jzlNm7rVVKbyGf+e8KI7B183z6yvNmebs77+qEzoCWExzQUST6yONWdHek/pzHI0+E8NZsX5YPde7tcED++Rd7FKlqBiBd6oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNMAiwPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNMAiwPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC07EC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722037553;
	bh=jBT5gDK83Gk80IDnCfSvWH2Ew7NujjuwAdip2P3mUhc=;
	h=To:Subject:From:Date:From;
	b=uNMAiwPEtzAexwNg+9KUb4dvgzhNQ4Cg7CIvLwv/S2n6oLG1mQZyvRsJkZ1XMbZ5+
	 D+hIr43HYcj7qAMALckD2Bs2/xCnXket+FX9d6rrzs8Mn1jPihRz9LJV1AzbFkb0uN
	 5BRt6TSGDAk3j2VOX52wlwlTTs4qqJCi8N8Wszeo4dpDfvBuJLiHGaorwr+18sHd3S
	 dCDxy8N+soUCBd6H/szL0SZ2P3eHNLFh1uPBqY2oiPjg5BfKK8rs261RGhhMszdY8Y
	 LSod3/bIDAAUvWycD9QIlUh86Uhxf3zlj5UVtYjitfuFOUbmq29K6yP8s8nyaCZAdN
	 cf7Y0G+ZCZLdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AA5C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172203755360.23656.11902968022902434085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 434cb43d5fd44620de78e3f2a33e40bafe7074e71fbb10e4868703a635f61fb3
Date: Fri, 26 Jul 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722037553
