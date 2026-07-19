Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6F317BA2
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784438314; cv=none; b=BviZLxHxy7TdOSMOpx/itqjFRq9WWDJulSePS0wD4M5oHeuY43PmopVbUlfxFh7JcXcLmr+OFzQhzddVBcQe9GhLabctDuvdMN/eW1Jqjpqkr81TkIkJ4LGsSlBhaKeGQ79wkFATD491aXv4R30ikcxNhFg8Cva63NRbQGhHrHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784438314; c=relaxed/simple;
	bh=9JwnaAeoZeev/tCxQUBrEoHj51PfWrhwyu4z766OThM=;
	h=To:Subject:From:Message-Id:Date; b=RI1ZDf8h+/zzd+WFz4iEMvgfkVBsHd8r5BdOlt4TVjmIPmwZ/i+qo2yNJLcFlcQS1jRXjCtfUojrhIeOlFKKlCEsDIYqiUm8kHKF7QVh0QquwMvw+B/D++FHtIwZhmAyw9nlaoNiJ5aOcJBVOUb/wccJWypADGpJiHWvyiKHUAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izDCxpcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izDCxpcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4193C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784438313;
	bh=9JwnaAeoZeev/tCxQUBrEoHj51PfWrhwyu4z766OThM=;
	h=To:Subject:From:Date:From;
	b=izDCxpcAsbWPGaiSSyTBDejwh5WWFDHWltYi2FGQIVldQsTye791xmAMAISdiDVHQ
	 Damb4QLSWY41xuePFDfjvBUu8H6WK+Ty+divw1MhJtQ6aDsMNDsWSDHqTRDWpj5qGO
	 8yrugn7e3NPnAC1yMiw3AP0kulrtkVUnNtec1ufbt8huA0oueT1FH7DfCWfoVAQnvt
	 c807VSeDsYOIJ8NRx1rrPBZSsQKcVeZeCPc/2zghycIAg8yV2IcU+xLm8uqj7nWAie
	 WNJhngeC6vlvbZF0MRLredgkbwAgOA90PpcT3cFtKjEXS7KlKNf+M0O7n6bXYXdGV2
	 AXDGKujr7T+Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8CAC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178443831369.32024.15532026088019415908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 616c5000e0e8ba1f99405cfeebf7888f5c4c13f7932be02643ba901bda83dcbd
Date: Sun, 19 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784438313
