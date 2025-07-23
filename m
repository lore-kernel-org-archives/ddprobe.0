Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF94E23D2BC
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753264193; cv=none; b=Tel0XduPUeI8k5n5DUzsVPiCJ/jv7uIIwvgjNy17L84LUG7S1XwsiXP1xrM0RqmVkS84P5qZk7Q9SkNBvm8tBhxLRklK0IIdDLxPga59enzkn/X1Hq04Q+t8vDceB3U9xZmqctsHOtNTmPmb6tslAxFJ4Zp+PG+93qPbXjcFo1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753264193; c=relaxed/simple;
	bh=HQwz2qDh9pUT+IoI2x0GOZNc4s1O/X4I8ImKj1uVH1Q=;
	h=To:Subject:From:Message-Id:Date; b=sBHfXFAKak9oXm+tSBooCcRjSRMSR2LB54ABrurvLuI75My/OEY1Yk65LYEwMNcgg407oic9TZx2vPyRGRCh5wNrA1uAXPZSchEdJZ3XCtf0zoCpmIpDYx4eZT7nRfiv8h9ZUARtI42IQwT7SstesVudG7kOWKDCIdiMoCQAMp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxC+ihYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxC+ihYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A409BC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753264193;
	bh=HQwz2qDh9pUT+IoI2x0GOZNc4s1O/X4I8ImKj1uVH1Q=;
	h=To:Subject:From:Date:From;
	b=WxC+ihYdgVmrj73WoAZBfsyxUBGKcaPajOLxD/Cz2LKDMPm/jap8J6XteT6VuDwhE
	 XNew8tUqtvurglPvu/tsrcjjkxVbeJ1I2+KQafXhxmJc8nuyWd6zxDi8WIbr0t06zO
	 ZGkhWgsr3D0AjKYX2EkErPVWL8bTX3px037r4GWeoFIK8BYrsIpBT8SJSKwO9E0/rs
	 pHriisLvG9y9bIVk9kj6OSampBCDHIpsTeucMOYrKsbqO/D/MTcM36N1nyHvSVDLP+
	 EPXuFDKvcYkhR8a00f1YZHsLC6O29LLjVW52oACN5SoDA2xjo3xwH9r41iRtEWAr1u
	 dWfFrJ1oX2MOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E7EC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175326419357.7524.7229845562500493616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0fa68d6c8de1664cf834e5c6b711c2b2ef0ad93c9b594f331cb87a68a475ea
Date: Wed, 23 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753264193
