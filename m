Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F2028C84A
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754074194; cv=none; b=vFLxBlf8V9NlJt4roBLuivmK8KP0AxFD5p35dgiWVINKlQkNoOiRG+dTEBHtyrMpH+0f4rHy/KsjZhadeMZALCJ5272LyIhGZx84c/I+ihc+Enc4I8xQsbLGBYA8ieM5npDKHsjC9+PM3B1uxYkHTGO2BBhq6VZ4q4qjJhWVYOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754074194; c=relaxed/simple;
	bh=hJzLswCX1fqUc5/ODwDBiZtCXr1xuI1szoszpfjlhZE=;
	h=To:Subject:From:Message-Id:Date; b=dj5SgDx9r03Jz5ZuK3MQSYif9Lacfr22PxnNrKX5jAMTrqBUCEpTcjoc02Wxf7+q0OHRpUywU8iEwZR3rB+jA0tzN//sePFE9sxJ9aAP2yfJjldyknkp2zkf6BiopZZJ9PIFe4wYlPqc/BUpd1j187Qo+yL6qEzYfOOvoex5hu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBXAyZQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBXAyZQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FC4C4CEF6
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754074193;
	bh=hJzLswCX1fqUc5/ODwDBiZtCXr1xuI1szoszpfjlhZE=;
	h=To:Subject:From:Date:From;
	b=aBXAyZQRhEfxXpl6fltl2qcEboysd6+I9QJAZ0+X8htzfRUZtV1AN6RUn37+iD5Mu
	 Uy9YynYYCJTqE52ig5prsk2S8lQ9l7/rXYRkD8epgqp0Br2KP3yCCJ7IiNVtDoqiEg
	 yIvO1mF0CW11QybVY6Qm5KHekpo/NAWTRZEkYWhkAJsnCouuZBhUIl78SV0PFlRSMG
	 QL1MMIgh7uyQIRFIVik0VwlV9DeArLQsb0fn7URvrOeX+p34VDVYKi13JeHL59HqxH
	 YhFIc1JiUagFmiouv+fwjUokI4sFOj18iugBv+vuJusNW9tlzYGb7QxFqpioVejnbn
	 ioDKTd3vEIkBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A76C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175407419362.28290.9038954589811930611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2666a4768c4c17e1a160ea8e9becf5cee79d8ae1194813e6376c747fe4ecc56
Date: Fri, 01 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754074193
