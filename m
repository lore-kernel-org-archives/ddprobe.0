Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A19D1C5F14
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748335194; cv=none; b=dWi3gHZks8bWfuok0Pn7q69IKd9GtHrvqEJQrhPFlkZBMQIyB0AiRCyEGVsHXixmVrNeDqaoW6VvDbHuu4hE5TODyFuBpVbaRec70kRaOkroBTMLvQsvFFiM9brHFA9wrXujqSfaXul2/x2oZ+hcUxhr4GPw2QdmaQMqVcpxB2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748335194; c=relaxed/simple;
	bh=rjrwLYvplWxU/HmPafku+ysCHF79JarpcWtw3f2usZ8=;
	h=To:Subject:From:Message-Id:Date; b=YCEz6tdbsmyFHbnrjBRbZ55MO6KZ4ERG5C6zD/Q/opvvM4/p+aU6pa1xkdx47hzvFCEdypsnMvISYnZL1ZNlK4pgFfHRgvjDOnpP+GYG9Ci1oSmWZJDtM58K81JebLHKycWYL9na92LYYgIwG9+OruQF0fiSTUF6Psh6NUOMs8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKjR3Brt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKjR3Brt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE79C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748335193;
	bh=rjrwLYvplWxU/HmPafku+ysCHF79JarpcWtw3f2usZ8=;
	h=To:Subject:From:Date:From;
	b=PKjR3Brt5S8HVkOngA9AZPDWZGGczVcjI2MBdMfkAaSGHukckPR4sM2nKfEVLBFyn
	 Ukt6hE3ZvNOgjqTJ+lXz1wuPVvFtUTNfpr42k/8GGVX05hGs5BM5iTZkAxBd5mM+eW
	 wf37UVf7ej0p/6i48IjW55MTbPICZYb9IZnsblJ184jgIVDCkY2Y+qV6vOR4c7EAnF
	 1JcqGkgLzNtabewSQ3NiYHDCEIBA637TaGmMiRJNtmQciZixynbpHgL4BEW02hF8pp
	 iwe8+bDETjkXQ4Fq2E1WydgbvONPOGwjDGbHDgDApBjopKM0xGPas+z7VtRUVkFm6M
	 hkwUHRm5ywuJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D715C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174833519363.7593.837780416312735258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec55397994f067b3a7d71f5b0f5d620dcc61f0206403d2eceb6089acc0c21347
Date: Tue, 27 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748335193
