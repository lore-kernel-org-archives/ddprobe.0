Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6823B36CE06
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777625854; cv=none; b=L0xCs5zuu5aiw7XAb+29fhOGB6gH6+s5FMUewhzT92t1Ge3n3kuurkf3RiGTdOQZDE/otzzkuS3Z60D1JVCLyAhneGY9Qumoy/KzERQI2E2VLziJWuKwwxcOp5r3fs0kVh8ye+Ruwh9dQIOT2IPxLjz4YLcehSoFYcI2A0ovyPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777625854; c=relaxed/simple;
	bh=dv7acoFcw/ny3f0+lm90CXhsmLA2iOgrmaWMArBQUe4=;
	h=To:Subject:From:Message-Id:Date; b=l97LZkkQyVmQNqJKgME5QMF8GEHOYzggf6eDz83Diue6kcsSdUKcZQ273ckJveV9EzV4Zj7ovLuah5YbO7AhtiQtmgU7yuyLjgYKkpdkB8LmoA3hFFLe/H8kG53GavW5gzAAPkK2k/DrGNF9V6d6f9Ff/OhFTHYY6hwQ9tzcHgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqF8vjdW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqF8vjdW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCDDC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777625853;
	bh=dv7acoFcw/ny3f0+lm90CXhsmLA2iOgrmaWMArBQUe4=;
	h=To:Subject:From:Date:From;
	b=sqF8vjdWvRLytbN5t9tfh6ODvoH7kZZHDJUQapRnYq87svWfxUPvAvYSL/swOPnPK
	 Mi6JVrCVSPOHiWt7hepM4SEdA/bcGbIxRFYQiLLW1/TntpUxfrswTz565EYD1vpLCE
	 j1YxFbc96eCUSA8oj1WGz48h0pt40Ox9CXo3yMJZPSHwgtAMvmeJqdUVLujrBpXZav
	 P8U333y5IVMrY79BFf2crUS75VHJ8fbkwocTw7hjqLrZoBvIwYofGm2oy/2OqYOy6U
	 XRG3BFkMukXdtFrPtpDWIH0uItCz1aaElTcyufRmceNwjFzfkcC5gq/Hhd+VZyq8sW
	 LoMMd4lb8gnUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97CCFF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177762585368.5613.16909791371236601828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58f19e0f33d6322d6b7e8cdaf254875e4876f602e61c6f46ca3114722549d0d
Date: Fri, 01 May 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777625853
