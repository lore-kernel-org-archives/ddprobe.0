Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0EB524C
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718437103; cv=none; b=o3+OMQKFHUMGxbLUpr/irrii/5ULG1ILXNOMH6b2qRqwACe/F7DcKAaEnmKXMtsjygNWWWSIvvJmIG6K+s12F8Ba03RecR0SJLz5Fg/V0MXARN12WkJhvFoKAeciRMZa26/DmodudtWm6zvYB3L+NfQgehciheogurRC7buNoFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718437103; c=relaxed/simple;
	bh=07/IzSXaDdrCPbcnfsCabPTsdg6Z1gmt1IQz76Z/VVw=;
	h=To:Subject:From:Message-Id:Date; b=Z1JuRFwGPgXa7of/AIyI7l9oCZZ8Z4qR98+dp0319Paoo+giIwtdwTM0BejcYf/5qTeRCD45Ze/5czm6GNlUBoKFNxaJQVs6HDppK7nYKbJEpmw0hrSb1O+DSMnqR5pkNw1kd0JTO2G1Am88u+/q8XKF9+aPTHBfWbutyR1KzEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bys4SY8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bys4SY8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC596C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718437102;
	bh=07/IzSXaDdrCPbcnfsCabPTsdg6Z1gmt1IQz76Z/VVw=;
	h=To:Subject:From:Date:From;
	b=Bys4SY8G70VRx4ewzZr8G8tMGoWSJjo0zUwulnPmrTP1NG+10N7H0+ybGVdTKzomy
	 BL9NvEBhUGSdLsGKVTgoCrRUon/t0KNrojokwYVDsSt1D+etUxz/du08KqNk7GwdeL
	 VH3+IOq21LJKFzFONJXBXj29qPnoqGcLyCvdSSqCwn/mW8WLDI5NfWUWte4EwEhz1X
	 h4TrxsneSm5QooDjIzLx11Ac365zAfizLlbsFSUCTVhEhbvMuPyiRx01oe6McVHnTX
	 MvNrWRAb5aq1sa7t6Fxa8tAlJnY72csbb5QPgbSXZwJCvKywUYyg19qeGCoJOvrwM2
	 rSLDfUJ5leljQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3231C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171843710277.30062.4437855745057535025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56da608384001a2c2b37a69188b7a42dd82858449a879e9037770556e02fa55a
Date: Sat, 15 Jun 2024 07:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718437102
