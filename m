Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648F62E3381
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 02:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742006334; cv=none; b=udqcI2zf3+/vYU5Qjf2GC5vH8iuroVacX5cZs6dSAmrp/Spf4cnZ404qBaRJnCDhKv0QwX8tGLosMQEegcJo7u/RwgphO0WyyIu1dXNzVPgdoIQPNLGSyR3wg+r7iyiNQBenXl63Ymuwc+7xDOYaR7eYeOZkhHkVj3NMgEUR4vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742006334; c=relaxed/simple;
	bh=YMOum3//u/SYsB0YYVQVLKjAdZ7ZxsryPkCsjMTM1GA=;
	h=To:Subject:From:Message-Id:Date; b=omJ6Dz2VomlUMME3d8hhr+UunEqk2tFW3d3TbqisJeksd4Ce+S80IipKdmagU+lsYnca9qjV/OLaBfSLs4KZ21Za3VHY6Lqiag560aJ/naQr9+zRc3QntrjiTaxs4tMlBgCvesh6aes44iP04OurEAp7Le/WzfjvPkZrVKT13k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToPY5tNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToPY5tNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDE7C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 02:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742006333;
	bh=YMOum3//u/SYsB0YYVQVLKjAdZ7ZxsryPkCsjMTM1GA=;
	h=To:Subject:From:Date:From;
	b=ToPY5tNfiVllcpdg96eKno3qUeB4k9m4UP++/Z7PzhqXavWk8Us3wil8/YSxGcO/i
	 JHyBNlSY7qaFyLu0OCX99A5C3FFHYkovxHZPl6tznAUmMPdF2RG7ekH4vUcRJsT3yQ
	 mlFcdqBuwdY4wzg55b59ODDsrOlTtBCzZg9rBdsQXIQF+GlCGZzHYjT3dz8Ymf6/94
	 hO10YYBgJFYCLKmiupfZTsAdhd2pjN0IO3AvipMIZvsrncsOVQMBuuZh3q1R0edHLp
	 rfGPRoIfIN81u1L3KWTe5TgwEMrAVpKq2wE6rQCLBUaxz+kHdIMfVY9LwMAFYaabNT
	 9fAJByZZMVIDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98338C282EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 02:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174200633359.5542.11449128249299823847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ecaafec7104950a09b37a37bd719550879a26fc617370b4cc76d174ac7ae958
Date: Sat, 15 Mar 2025 02:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742006333
