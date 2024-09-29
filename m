Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C51E17C9EA
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727651754; cv=none; b=fuYPbgwj6nSRHh268g9xTicuHC+hNDIIp8PfmDc0LEuNbvj5VQPnKfx+x5UjkPS6tsKW7ohrC25K2EuR6JkeaCKT8UErb+vfOwvihl90+oiKz+AobihCzKBXOpcT0tUYSBPHKD2p3IA0vUdtQF+chJC5YP8x3BhbIHjhnD3Rcqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727651754; c=relaxed/simple;
	bh=ya2PDILLTgHNNNBi8+36wMqpqrkwBhD/uQm6Ji+kFM8=;
	h=To:Subject:From:Message-Id:Date; b=qjlTsDXzbJ777oNvFPvrg0WB4yJ9JQXpolYAi89yk3BgatoQ01c/QeDZTBuohwAx9R/6/5fL4f7ann+r2IWvw3k0gZp1FHrpVX6jG9EVcEl+VhEzeAzMNbeMimAX+mEXGaXuBMnoHvidzfXrCwBaFBcTmqFp9FDg2ti5fcs1gz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaBWEc2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaBWEc2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE95C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727651753;
	bh=ya2PDILLTgHNNNBi8+36wMqpqrkwBhD/uQm6Ji+kFM8=;
	h=To:Subject:From:Date:From;
	b=UaBWEc2/GhJMHDyNmH3UZIaIRIolIIrRTOW/plfK26RyMGltfNEu9c2e6xrM3rHqU
	 awxoz0TvmK60Nn3vC2vSjtz4acyDduahjl3GK610YVoev5j4JNNMUdLY6VO/ijCxYK
	 Kle+BHcd1U9ejdlGaBrfzxVpeB1k/XON4lACebAJzlw9FFhCbGTiA61Z41QKj+/yyD
	 W2E7YSIhmsQ0TElXn0nNib+v57gXWhP0wZkrMMjX8Iy5W7JNUPkSBFVdLsLMEKIh0b
	 PcXf9siSD6eH0V9GEp8EoTi/n63qvnYulF6tYyLDzwkgZEuDxJEdybb5abrXqw6zFR
	 xF4Sw5sxGIqVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D79BCF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172765175360.32332.10443362778046791385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8cd3bb4e3d54e308d912ae78c5c4a3ef8bb60420070831840d0a8f13be9a4c
Date: Sun, 29 Sep 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727651753
