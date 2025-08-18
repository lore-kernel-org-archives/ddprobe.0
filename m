Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF092249F9
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755478195; cv=none; b=B0CG47w5jaRms0e7qG+PaEA1w7Lc9d90/T6LrrmJnt9U8SWKja2m/Dr0a8GXf/D0NC6rNT3f4ejqgmjelOOglcmYEghXtwrSZD9tATyNXgTtMogwjP3Zd6O3dWv90PwjefpYDC3IR8xQHmG7Q9GeVM0ilPLE9+PVbHHtvcHHrL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755478195; c=relaxed/simple;
	bh=wmqdY95yLHaVepQ4zckUabjvlpP6509/JnuqtiA+m6Y=;
	h=To:Subject:From:Message-Id:Date; b=ixSisoDmLFMEko0Fjo4VqO4/B8U0Q7Q3SA5VlrzoDsyOxroEhegmFt1BCT3RX11rUmAz6iHGClYZpNFiBC6CYSyx+0cy/oFC/XaEoN9jUY7qSWWIU5IO8ZoILfG5XfCdSiHaKEVNGnR33JpnVM6/+8uQo5LbQh1fTobdokgwEOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XH537j62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XH537j62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86B7C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755478193;
	bh=wmqdY95yLHaVepQ4zckUabjvlpP6509/JnuqtiA+m6Y=;
	h=To:Subject:From:Date:From;
	b=XH537j626FPFjCO/JxP7b3bF3w01RVRTgnhZhBjMIf8TVw1w7KdXO8c/Xa8cmGjOf
	 o1s21QE5VrKQMKXSjZkqj0FR5H+LCxZFhFnwqV+y6DpTQoFILr9JDNbtW4Qyo8fG7S
	 GlB4O9erR9NgSYqjIV8RL3/Yu+RNNvgGS31E2aEuVCXz6sJbidUgc76sO5rPHgPLRL
	 xKg4lwduBoePGscjBz4diJiTPcfiLx0ICr0vyPFUMHqNELsZNMtf/CYFxGS8Xkk/zP
	 G6b6H4pJ8VtOviIFhYheNY9xV7A3RgKO9aCBJtErf3hAkOG4TONZXf7csez002bsLX
	 yc9Ijx5GkZa/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D01CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175547819358.9057.1488469539228439029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 523ebe9ef5736f265d2071f170cd36bd7e6819d826ef1485c7b482795eae8f51
Date: Mon, 18 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755478193
