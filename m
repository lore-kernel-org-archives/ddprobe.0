Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A7C482D8
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 06:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714976543; cv=none; b=mShOIV0hpSjonlB7ikeAzfF6E4QkZs/nTnOQxxClokhF4R26tyGGo2ud+WdBkD1vk0LRdAIF1EYmePlmIHApxX4+U3d1bI6J8UIGH/LOyNanI95NPFEJxeYLF7VkrLl+M0fjrL953IBWa0IZX0dNtkXBGwCbSKvLe2KPEuvgR3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714976543; c=relaxed/simple;
	bh=TZRC/h6loLPUKyKfIO8QqEgKKMA8zI+IPOftQ3ond1c=;
	h=To:Subject:From:Message-Id:Date; b=QCNu4FDbS2jf2kR6cJVucOTkc4JFkA8F2dE+4cMPDjKy2fGsUYcwkoyVlWOyW5gaQF8lH7cgOye1l7HXKISwAA8QxCZ61KBgfFfHxEiW0P2tn63WwO38t8m8U4PEeqh7+TJ4+xdV+U/3L7XmoEe0cF4PFrav2roh+wEzZCz1yYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwOqvNrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwOqvNrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC35AC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 06:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714976542;
	bh=TZRC/h6loLPUKyKfIO8QqEgKKMA8zI+IPOftQ3ond1c=;
	h=To:Subject:From:Date:From;
	b=nwOqvNrCOD0gPLKlL2Q62VCvY6s1dGKYN1ZgMbmZ1DsVzoOnljzR4RehRr6VoDbiZ
	 JfOAHO09MBVK0sOeKQgrGWSTGZra2y9fjX5e2nbhlSC8AG7DNNHC6INndcoBghRMQl
	 2OnAahaiVrP/wR73fxfDvkVS4VhYLXtn82Gbudm+RlyaNy62AQt/F3fBDQROumIX46
	 TKsBAu2e9M9fEEkyiHujMRTiX7QHGqWejT22NobfG5o0ZuoC50UA2LYqm40U5QkTj8
	 Cnx5gysnuhAZzP4+LpBFqz2Ut9sC7TNt7+OWil+b62ltnJsKU1sJ3whTXRSrsQWPDV
	 grUpeaXvcPxDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D53C4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 06:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171497654279.10382.3950741221119380954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13bed005780b26c994400429e50084e12108cb5652a60b3deb69fc4654981875
Date: Mon, 06 May 2024 06:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714976542
