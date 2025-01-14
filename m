Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EE21D47BD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736897154; cv=none; b=nyyb2lYcoeapF4rIIaEZ+XZJ/Y52FdscRZAenc93HweUFVgYkrAL9rAmIO7oiMwV1Wg8aNfI37Xe1nFyl6CFMppbP1A8yUDSOYRRSIOodZjjfwh0jp2eCFZYneyREjNrhtrE+1m7TvNHJlOU2HUx6zA57buW8KmdOiUq+p+vDYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736897154; c=relaxed/simple;
	bh=bWgcGMd1Lgo4qZXm/J07ER2mH1T2Tqrb1EmBIaL7hBc=;
	h=To:Subject:From:Message-Id:Date; b=Kxh2yC3QQTbNeC+4cQjN0KySb4ziD+UFFp+IauypT0yOALw1/Ju0xi8TRwT2Te/PHkPrpqhrlzvm3HJW9WTLS+7Z0D/VJqosYNNcWIHmC1GUQ+PfbZesYUQ2oHZ7Qitxwo/pK/M9l20xJSZn4Er/Pv77ydDlKZFkWlhrCGWpqRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxoDyeA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxoDyeA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C7EC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736897153;
	bh=bWgcGMd1Lgo4qZXm/J07ER2mH1T2Tqrb1EmBIaL7hBc=;
	h=To:Subject:From:Date:From;
	b=kxoDyeA+k0NkUGefhoLZO702nfms8jTEPkasj7n5bQDSO5TyAZZTJFYyIS2yfE4Yx
	 3MLOnGErELQNu5I9IO68z8GkZxjpeBiGntTeqnZg66wO5HVzr6rauhEECXihMlZ6sc
	 UyykcOa6ysYtaOSJ0CE6Te9DDGElY877r8laMbZvsCd9i9D9iddEzAhodtutKfGqej
	 vYz3ynWK/0whzDmdoYuhNMOWU1Vfh5xuBiwhhzkzEDRYLYFDkmcJlzs5phKO/B3yzw
	 4wT8QRBBV5qJfo9CgD6LNoSo9XrwY2L/SISsjFIirK9/BjK4PVyb2qCFArbQTev/O4
	 05DHxa5M2mkBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6FFE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173689715362.926.11200919616295310433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43b72d289977bb8c7b03f492ef5551957c176585e49f106108153b86efb0a74
Date: Tue, 14 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736897153
