Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8B4156883
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726579554; cv=none; b=h70kBV2xgljwbSyNVwi1m3ML0XXGIKAy0JlgO+IbBz2FEQ5QWeUE1T3GPUv2gMLjbIBJAzFWQZ1XgtQqXS5LB6IOKYNAqFepVkid8Y4yKx0Kv334zYARTqu3AcIv8KnMk5500X2jR2s5N/mD7J1N7AdnJs8kZrCHY3BguvSBYww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726579554; c=relaxed/simple;
	bh=7z63sexoBS6Gi16ES5ZypRATGTEnkPNN9AHPc74zXDU=;
	h=To:Subject:From:Message-Id:Date; b=coWlLLrs6xjrtBc/I4dOlVcldHyng6nxFU6ZIkBBCxoGExZZ/QU33rEPOBKwQEhA4YNs0/BFXe8Uus5rjX9Rw4db6+zENJb/dnNrGUIQvimeT/yAlW9QKdfUQxiFgE6Y+LOzibUiA4PY/KdP6jRJ3NyJWGkeY77HA283ANH/RIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eU65ZSEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eU65ZSEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ECBC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726579553;
	bh=7z63sexoBS6Gi16ES5ZypRATGTEnkPNN9AHPc74zXDU=;
	h=To:Subject:From:Date:From;
	b=eU65ZSEB+7JKO0Sox1Ozr2ADznXTLlMvWKmFP8pwVPG87l1tgFcCXMUVzM3qqpD62
	 SuVQNMoG2kxG/uw/jb9zL4Dbvin0L/meZ9dCPB7FWCa/g5fHW6uIrywZrUWncSuWaB
	 tQPpZ0Uy3jxwMFVSNdt0rje7xBClkeJl5sLfOc1/TB180jagyJIRMXm+bqI+DNvLME
	 BwJLis25xr6g069V9LMQo2apjJpi5i/eWWdyKglNwQaOWzercJLoF2Gtm5sLreVW1U
	 8wNnC+4pxN3VJXoLoZuRXddGQGOLu0vIMsbTdtEvE1jWCg5Uko87bgoqsmTTWu9nyN
	 Uet4u04PPcrnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94674C3601A
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172657955360.16579.8640936021100143532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4f30e153045a9a5077f4d674e296960b54bd075fdd078f29176e10e3fa69c0
Date: Tue, 17 Sep 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726579553
