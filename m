Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB441B813
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718688563; cv=none; b=jFnSTJxAmaXoSoIljJkvp+V02bJJGoP8WDSrGPehvvm9m7Cim/y1Y6VqbmCLS2r+RcA8WSTiV3UmDi6wQlWQxirsiXvR/XlM8OdHMkD2LRSjQfP6YbZB5TvY5SpeRRqev1ddX3sZMTozBF/zA24j+/F4z4c0UVaThj9S84S0v1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718688563; c=relaxed/simple;
	bh=Qi1asOMmGbSATcls4uvJljo/0Bg/jQwmcTjoku3VIgA=;
	h=To:Subject:From:Message-Id:Date; b=C1yztK8buOooMbW+FLGnHBTmD26tesm4dfhjwwF0KMcD7OzmeQRpaPLnyQ7kBFftrx33g9DOV81zbFbMaKP/PFHSDOas7sJZZmOWnjhiTVMQcEnsQ4ek2pwMNHKQEKmokvfgZDX/26hN/f/qMGsPYr/OrJY4LUU3tKDUPxp7WNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNJfSYYV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNJfSYYV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1646C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718688562;
	bh=Qi1asOMmGbSATcls4uvJljo/0Bg/jQwmcTjoku3VIgA=;
	h=To:Subject:From:Date:From;
	b=BNJfSYYVHg+ykAXzm+avs/CzZdUDE0dJfcqA53spu4JZpNIic/OrZUyOUMIUAiIhF
	 Tg+VaBt1POhnMnS0ulV1L7jCZGYZp6Q8lRWSHONmO7on4EZN4/LgrignPvYO4l3OZA
	 GVchXb5S0NRVxwWAi7A8aBwMUK7T/Uj9eGRL39T+CIDtTQQHoCe1U62w4bSiu+k3QN
	 o9DUGhJjUmbP2QtP86gRXa86xrQZb7XmlbjVIXsQ18fSRMwHP9Xq6pD9aExN55SAYu
	 EnWX4X6+6EgBcPrg1xnIwj/xf4BgGZ8oX3cxpo2k2YKzm7JydW/tpGMzRtgLMQ8AXh
	 QrRwgTyej9Fbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD265C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171868856276.23677.4390286435452485608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e191b88392d18f1d6d419c5aacff3517df68b36f94bcf5324ab137677ad3d3
Date: Tue, 18 Jun 2024 05:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718688562
