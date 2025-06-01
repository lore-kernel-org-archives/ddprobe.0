Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2E82DCBF9
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748803194; cv=none; b=SP5ZrDnPzyVkemlf/+8wxetr0hsfG7jAGMg5lq5FAukqP0XpF2Nq8WmJyxJ2EXmai8WmmdWIZug5nOXWdeAx7hll01IyeZLTDnhZUXwOxIedZ8rp7vlNGDOeqYt3vaXJjMOPvwU58BNGjcCJnA6HsXW7K3RgfuIHYNOMWSbGljY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748803194; c=relaxed/simple;
	bh=vnIHDLY/aqCvBHWPxuzhc/gd7yLl2RHl03GZVhwGMCU=;
	h=To:Subject:From:Message-Id:Date; b=rDTMYyaPR+qS6+PCi3Ig0WwRzrqkQYaU0We5bGsd33pwm8VpqxkcssH9n97fxa+Nn69Er5cnTU3EVyow8kvt5hjFH8aDdjO6aWGOZNpaOXwsaZMcFOd0Ibof2ASK1YVw8vAFLsv36GqMKoL1DWUidk4ekK+dJlTg+roBMKSVAR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5wz2V72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5wz2V72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2E8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748803193;
	bh=vnIHDLY/aqCvBHWPxuzhc/gd7yLl2RHl03GZVhwGMCU=;
	h=To:Subject:From:Date:From;
	b=Y5wz2V72LEw4fQHMA+YksMN0b/yZVcAQW74mrX5xV7mKvJG2wOUvm41k49iSja5yK
	 GBigrGzZdOPNemYrsGfDhvmicjW3HS1bpsXbKDKzHxD9sKUq/gBL6gbM1Uuggu1jsm
	 MxsvQ2BMIW/LMVsuBAUXAaPrIIf6FKXrUh898Hb26A/JMYwiFtZLKoEEdwd6rasBnI
	 wcw2+kBpRocV1cUP0L7g4Zud+fGG6iNMdoHIJ3NiypR4HCMN3rVtQENLftu8QPk9bb
	 uPc8vJu6W0KU92wK50ybmjR6qc5Fp1/b+ScvGogOXSpoGhGPCKPQoVjgsJL0gSOnkT
	 l2GASb8lh8u5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941A4C5B549
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174880319359.17873.12713808354943466907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ffbe66f7de3167731af9fdd9debe0ea404730e51bbeca2815f55b8bb68b321
Date: Sun, 01 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748803193
