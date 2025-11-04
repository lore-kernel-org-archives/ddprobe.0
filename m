Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8222046BA
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762286994; cv=none; b=UAKy3/Xw4qBpq+FSSRx3cTWR1aOIrILeUAbRAoI1X0TUw9Fw7S5PSqeRNeGrk4kqQmMF/uixfF4k5FRmy/D3DZCQy1liKWORT6rskQMee4/eTi73p3PrjGUd74tMNM2zPzSU9Gdnc/To7Cu74ziWYJxbOvuthYfutcUB81MoMUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762286994; c=relaxed/simple;
	bh=tP5vA0+wRp+qHbGUzCHxqcaIQn+2JgiMKImargRnEcc=;
	h=To:Subject:From:Message-Id:Date; b=U8azWnv+hQXmaCkik4u0FQXDm0QfKK+kjb+wdOGPWlCQBpXiBiZdKyeb5nN125n7M5AgC0vR0i7TxKp1nU0blcgTCzCf9MVrADjGENiw2YOdaI9N7w1bU9pOyvTg6eyZj2BncXBL5avV3InI5QNoG6HVF+e0ap/PoixHNPLxfn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5yp8KM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5yp8KM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A13C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762286993;
	bh=tP5vA0+wRp+qHbGUzCHxqcaIQn+2JgiMKImargRnEcc=;
	h=To:Subject:From:Date:From;
	b=n5yp8KM5eHNSukIHj7H5aOYmp4OTjb8lbPiSuRo1FGpy9VemgqMaDCBD1YbnLsnJ7
	 qhBTHorGETWKiv2gP4uvxGupgVsVMLvQXoFRKiN2hoar9SBa/fI4shLa9Io8YEmKcv
	 BIvI18gJPoJOXkw8kd3xbPVI7QarIRRoMgp3OdvJ6GhOf/bE5bF32AZAlzSPnwyRG0
	 oZTlJILclY5D/CNGfCBcre13Qp/i9tRARd2pgfiHQZ1g5Y1vSF/ECWxm/hbAvcR0XE
	 Ggu0AbRcO8vtV7prlu52VIsor3i34qu1LbZ9Mj3rWQBMlQjj18pcW6hm5dhaoSbmOD
	 Y1MmmEf358uRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2CBCCFA05
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176228699361.15706.293340731401109407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c584c434e381f058cb4af26eeb8c0b2a84665b7d97021b7a29de6bb681809a
Date: Tue, 04 Nov 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762286993
