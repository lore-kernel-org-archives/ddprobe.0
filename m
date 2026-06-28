Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD81379EC4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782654514; cv=none; b=fPRA5kbFaZH9LGgWZiP+RdFhWeuQUeYVtELive8EjQFhUT4bMd6c+eCMgVeoOcivBaaTjZmd+d9ArP8U33J6kjpN+Tmed3VmSg53la6fdyMQcULmwbv8aZXe/N9teZdcQGxT8PlZuR/XBwYJQAhdA6qONBDTZtjj7G3Z1iXT7eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782654514; c=relaxed/simple;
	bh=yXXmsA/G8S5jBWZdarpMcL080+T4/YDsK3BZBRl2iuw=;
	h=To:Subject:From:Message-Id:Date; b=ktlBBNc1Y1VBayUxtLmVsTZT7Fa5KtBHUVmxM1+MBmJ+gy6Xq3PefiSrEigntra1afr5DgEB7MADxXIqpvyD8t09edFyoXxfHXB0CTQdK8FbWN3cNin80tZyuyFF1TrXlIxJU4kN8sd3NdxNOu9Pk9jw6d9UrUCy+7Qhaje358o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayI0Jcs/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayI0Jcs/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9500C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782654513;
	bh=yXXmsA/G8S5jBWZdarpMcL080+T4/YDsK3BZBRl2iuw=;
	h=To:Subject:From:Date:From;
	b=ayI0Jcs/crq37Vqo6Hlyi6e+emYkUu51BcJuMvzSoSNV7vR4qQLt5azw6/YOq9jFi
	 xavWFYLObhOx52EFOcVK7Ck/yh9jwBzPFO/DeBebj69AQ1pkKLB66mhew+Xz0A/z6K
	 +k7E0JtRAwztUB3LUCfnR8QsLlx4jiIfMxQUI1s/CiYeepwKnAtS9jKTHrwxzdMOZD
	 jTIgrja5AQi1R8YXQUuBqcdFvRknX6NgR2AUpPix2FBP2Ewf9RWsksTnMCmRIdMR48
	 K3NXO5ZgmnC5VnfQMwuqnegI5OIsKMjQQwxbxVVoiPJ7MzCHE/B2GUImROPPxjibg5
	 2hEwmmoOaWSzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5F4C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178265451370.30867.16262593696989564397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782a2efe7775b006cb3facd7aabbd90b2ed5bdd05a220d94f43a445b6f8e3844
Date: Sun, 28 Jun 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782654513
