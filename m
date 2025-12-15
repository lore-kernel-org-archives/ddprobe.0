Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C247232D0D6
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765834373; cv=none; b=uLDAMKF5p/lu0dWXXcUSnXeR1NU69JSBDYkGBqCT/GseYSNaogI5zYp3zyKU+CApCaviRKZb+yvGsya+hQzJSeoHA41I5OtBg7lfJ9OcdaOWgH9k7ypPgZVk7Lf7CqGmBAEAXYVgAK+/S4wkg16TxXsnDIzB1gIjY4LuUAr9vxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765834373; c=relaxed/simple;
	bh=NVcQI0WWQUSkmqBbGerondDKvA+If4RP9IlG2mDE0ok=;
	h=To:Subject:From:Message-Id:Date; b=u1kFFpDvdH5esyvAM9BMc1AP7ANWgYqvYT8xAFctF82CyrklQwfyhdO7ZdqWN8XOywCKV7eVEr+BT58b95pRSTVvRVkSP/oExdVDayj8n5G0vvXc9Me/zKWGkvbloARvbPqKmocFAWJgQMxAcUUwh/ypkBrxyk8PUL8ejy59Wp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgzeDDla; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgzeDDla"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CE6C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765834373;
	bh=NVcQI0WWQUSkmqBbGerondDKvA+If4RP9IlG2mDE0ok=;
	h=To:Subject:From:Date:From;
	b=KgzeDDla63xr+ZbcrW24HTrNa6cORS+uA1+QetHaDTTjr3s4rPrIQR+pE4myRhjti
	 E3XuWWe5c8PuXpeTdq5gmiiAttuSnqBTAcsEfoTG8Ve7EaiUl02z/NHPy5c7nZFPDq
	 pII9Zk205F3sGec91aSgOkebvS9SxO24oELLNXtteKHJUkmcTABzBOPW8HNjGJ2nNf
	 SDP0UcFMsk9wAnJ8ctC5+Q6GEUemRxrdscoy00wnjDtQ98ATT3tb5DazuLcct8FNK1
	 LWoQ4+KCxs3IQ8n5mUf3wt4RUf8F3L+HWT4aUW5OigQLpohEGYyt+wp+EGkIRcYSc8
	 7PfAVkxBvjFkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9235BD5B86D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176583437358.28233.4294386167223735179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad106e907bd8db531c3b692728e7e841bd91bb73a8900788cbcf470d32370c9
Date: Mon, 15 Dec 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765834373
