Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F11328EF
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722737754; cv=none; b=C4eJ/wj1YoTDsWUMoEZrK/hUaPAWuJyaFaoIdNYF9SOVGT1JeRIRNvxs7jfK1SY1iwoaCyOWQI739UawYpweIEY5EskJ1pERcX7pSTHAYluJjjT21CXTo78di1DXgpyVATXbBkv0rC6cpuWN7LraVJVQ7ZHvP6bJHVQ9LBiNjAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722737754; c=relaxed/simple;
	bh=yZrY1+EzUjYS6tQft0KvO8zU2u2/HGKV1fVkNMgPnZY=;
	h=To:Subject:From:Message-Id:Date; b=eWtVlIYagiHgh8Ro2NdXChYU3UY6p1Fd3rDGwBzuIJA5iT6zx88XXwVModkKjLXFCD46LmPymjAK47QJSGYBJ4ZbtT2krqEPYLDdewV5+RMY/iOvnlhDC8F+hhNoolaoEZqahsAFzaicBMA2v2mEq6hHkL9IE/7t7oq3d8PCQyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yv25Htr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yv25Htr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E0CC116B1
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722737753;
	bh=yZrY1+EzUjYS6tQft0KvO8zU2u2/HGKV1fVkNMgPnZY=;
	h=To:Subject:From:Date:From;
	b=Yv25Htr1zOjLnBMtbmtsZ3G2syaP/pzgY5aY1EV2BCWvPZnokignQMpGSL/gaZcrz
	 4CjMDj5aN7Bf5MHVNcO4J/DawH67nanBNqrLgKDg+6UUtiuV99CJ8Ap3iza6Ln3rBk
	 hc+EU5oBkrh/KyZDGuuvMl4jAA+lXRlsFSZ6sr8csbI6Xo6NFmVSM30Ute2fH+TPQz
	 xjfpigaNo3qg1IdhJKsD9KBvboqRiLAyj5sdrglzRNevYoMtq0mO88zFsmiGOP9zZ4
	 5oeo4McLW91/oBRYzd3JW60/zt4lhtJeLIhUbONAIs4VDIeTz5fXSk6hVo5klNwwhk
	 Q/JqZRGJExETg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5BDCC3DA4A
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172273775365.2665.3645106260885539443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0795186c6f6e6f741717c758e3924af5751c435c174c2133b21284b276f965f
Date: Sun, 04 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722737753
