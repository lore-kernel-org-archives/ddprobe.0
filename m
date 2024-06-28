Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675B717BDC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719542063; cv=none; b=gna+OE0Md4O9wtoS/x+8X6RI+x3bWqqA9iMHRfLHEfb6QEydpq60cUyl79dilIasECWqxM1VCnBa97FdQdESAhw3PnPCU2OlSdjKWQ7MvIf5ghCue/TO3GaR96rmKJJTD+S6q4wpan2SQYi8C2S5gC1uGIldEkjrbkcGvHmaD8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719542063; c=relaxed/simple;
	bh=390A0ZLcEqvVkTdbMJkUnC+uT1qR3Cf+z+B5QLlcos8=;
	h=To:Subject:From:Message-Id:Date; b=u147hM6qVCiCEIcks+l4XQBNJ+j0HAXQyotLO+2gFlYMAH4xki6dsZhr9ImPbdBMiHDUclGW9DOmv12dV4zSjxEJPII5/wWG7IcSrvBb07YaOIinZEBnRg1QZUOSPZhwyh3KueU3x5GrenFeGg5VGRPoVzD9rtQ0iZ6nruw9xvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=av5VslT0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="av5VslT0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66E5C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719542062;
	bh=390A0ZLcEqvVkTdbMJkUnC+uT1qR3Cf+z+B5QLlcos8=;
	h=To:Subject:From:Date:From;
	b=av5VslT0J8dNZdoXTrgwCvpwo0p/RAcd6aS9/Nh2RdKDcR5ZVnN0xoHBKj5ESyRpq
	 Q0pyIrfCv2EVk2MzvftcXwinXo5brXd69KlJKkKFypw/uyLu818itjFKGUcqph9ymC
	 j9HaGbI809pKjdiDJHK1Gke9UqwB2N6zN1EjsD/V/Ym2kzTaipXoZaL9Lzd3MTwMUR
	 3nvp8ph8ef+85esEWDJalBEJIcldgAJ35aQ56aY3BfZMTQQYhAqVWqBn9Z4Q7yWZsK
	 7lsf6g/T7j/MNNluLvXyVuUEmgdPnn+vlj48Y/loF4CzICd9WvREwyrDqdOhHsde0R
	 Bwofkghy4RDZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DA5C30653
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171954206277.7971.2806535821913684571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d9b8e17e8a70a8598199b102b39bf62e98d520c0224844f48b0d5bba285554
Date: Fri, 28 Jun 2024 02:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719542062
