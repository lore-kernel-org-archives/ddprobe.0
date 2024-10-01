Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C8A1C9DCD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727800554; cv=none; b=aGTgFqIEF4ZHKpsW1+WElNJj67vYarauiRlHPKKC6GPSmHBSMu+GNF/FemHEMVelIosNzeoDOcbRkeSNBN0VYH4KccJyombBxtR7Cpq19QAGBC6OOYyIHm8X1OBZli238xC4w7uUGpDHXtr6YPMtM7K/kfLE7AlG1Z3l8bzT3WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727800554; c=relaxed/simple;
	bh=8jNYR8wjvIgC8oDs4ttX//9UJXrTDosg/2imLkPE6/0=;
	h=To:Subject:From:Message-Id:Date; b=u779UYlBYbxDNZIYpfLXVnJ2kskMyG/rZPSk1UaxWS/yDcbmg9tj0esRufBdZ5Gp+diqcRfj6y40uPeyCfhVaFYnVXo2cYxEWlW/yTuI5N6EMGxsDQ0L5W6qvJqb4XrEtnEPF4+cNNVhohRkFq6eluOJ0eLios8kRQTt9Jd2pFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWq43eGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWq43eGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56C4C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727800553;
	bh=8jNYR8wjvIgC8oDs4ttX//9UJXrTDosg/2imLkPE6/0=;
	h=To:Subject:From:Date:From;
	b=AWq43eGFT2RKkaKsQEuUGxQD16PmVaVewiw9aksSOKLOeKlhjuidpsFmGODC0vSRI
	 YwxQZg2nKAtcKXy3WjdqldSOBZBiO7JrbcEnnCeybBFo/dnpS78DZ0fnEqR4m9q6GT
	 12I+fWBPNMvRMML8guIzpDNUcyzlwIrRpFoVLheP0vFM0fFkB9t5Nci39A57IG2lN2
	 okpQYeCvar1qR+OhmtvqsIhYghq7t9Z7paLuQx6Uvk7apjGcTqzoQmqcwHzJ+90WQe
	 wsLCMxSl0rG4g8TXBW7GpFxmySh5hUA/ZcZ4995ENLAhKnPYN5It2vdpidWmct3cbw
	 g1lvfRsCid/WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C73CEACE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172780055364.7078.6591055972437763221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d394659927448f1b304e223327adea7c268444f95fb3389811fa735051485024
Date: Tue, 01 Oct 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727800553
