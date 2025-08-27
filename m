Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1476730F54F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756331994; cv=none; b=fpTA3LJoomR7IcokB6OhOcXWBpUeSHDX12wUBXs397wPuIhQrq//KFMxsHQc15ZMnSU9hJRljDatQBcV4gQpGgA0Drkl6kK0Bj901gLl4Z7QHWd78njtxhiTEG1X5Fl228xZHmm6+Dc0Bo4QFND695XzEye0lULf0FWTw0CDG7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756331994; c=relaxed/simple;
	bh=MgqO2d2Zq1itBETnx75IYbt0I1BkhoLfeKQiHkR8gpk=;
	h=To:Subject:From:Message-Id:Date; b=AM7zNyuQfUAAqHdt+p6JzXR7hHuEtkLEY4tp57HHHJSDmiYx6yT17S9OBDNVfeg/hjZWJz6kGfYYSPMQ28TlBW9DsvShTMi4ASj45HztYejYQtrJ9zlZQz95MGSx/G2WcnRjZUeXed7mKHH6pldC2x+BBBoHzRcCVFvtRdEm1C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3p8Waf4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3p8Waf4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB9CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756331993;
	bh=MgqO2d2Zq1itBETnx75IYbt0I1BkhoLfeKQiHkR8gpk=;
	h=To:Subject:From:Date:From;
	b=D3p8Waf4uUeE8NjWAD3XaNySCLZeu60sidpPIEdcTIS18SCHRZN82D4Ct4j21oyY+
	 vfecC893hr+puwAMQZ8J7V57cs8UTudKnyQP1pyHQl2crjsBgVwYGe9xE2T/ZD/qGu
	 dBConrIRKQZxuT0lyY6Y3H83b3Waw9mlC2NGkmXUwhW76XgJ55xW90edADCAKu0meW
	 zkNHODEnxjnAlj+RaeuVphRxF5U1YTR0iIk0VmYPRrx4J6sm0Ayf6nyw38ygYt2ApC
	 nEAxG141t7lozTJHCj/EZ0tCHUs00rdQ3yEY824Sc1gGLg194+ZORhaO6UDuYmMudW
	 vESmlFkHAhdQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B9CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175633199357.18743.8222536244547738952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e9e57a79954a5ce80706d2c57d032e909c40b5d71eaaf797640f77e95022c3
Date: Wed, 27 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756331993
