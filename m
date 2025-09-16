Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA90219E8D
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758046794; cv=none; b=IrZfFWunBXbdtu+NjbWaMc4KHxuZuLcUicEOHa6Ht9rSwOy0UdJf9bdT3eWc2R1sU+4/OioE+UpJqJaVtV3gEbrzt9pCnmngVYLdaRTN/uZGFX0JpVnJej/WaowMxan3BgV0ZAQXYuudl6VsmAMcTPq9Jftb7Eqn87KKh+3vWdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758046794; c=relaxed/simple;
	bh=+ZiGyptD1hlLxRZHqwCEec+5wRwDhbmIdHgC/dVZjRI=;
	h=To:Subject:From:Message-Id:Date; b=uD2rUI8a+SOaAUz9LUIUTXnoxTNVCQ2JbWRso3Z9I9OvyT55cv4MjZPDaaYYJcRPBoKVlJHk+24ilZJnUU/RO8rwg6MQqdxtPvNfOAdbCqb5PiSx0/JnjaUZLP4ZiqNQ4ot9C9n4/8c9bNYLPqK43uKw+F8jjLEwqbaCxUR3bAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Us0Vnj50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Us0Vnj50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78F6C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758046793;
	bh=+ZiGyptD1hlLxRZHqwCEec+5wRwDhbmIdHgC/dVZjRI=;
	h=To:Subject:From:Date:From;
	b=Us0Vnj50ig+Su+9C1zBE6LRdK3sHwa4WHwr8oS5GLa68R4NT7GvO5wSHSBhEDJueq
	 2Bfxfk+Crm2Z/4D8FU0XFFXc21YmVwa1RDt10232mponqCuhU2t16rmub15H0M0arr
	 twuPhOigC0MwLqlSB0FSgh+Z+VFknZn4sCHBm/rFxRFpmpURj30wxGAWEkqHx74deK
	 474Hs7DKhF0qJ0Ur4weqAuCQaHe2xtHoaAnbG1yLzJwl+3aMCFHwKBmu9rlbNLMoE6
	 c7To2i5UwcUHKk4LXkML+ifUJCGpnaXFwWgWPrFpdrBCaiaZOewuJtuCo3EvYNBLbF
	 D0b1kjjgQqd2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954A3CAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175804679358.7058.17010554250122580742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec71933e0b22a9ce93b89c87bcb708fc3c96b0d04ea7ace12cad7c7daa5278c
Date: Tue, 16 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758046793
