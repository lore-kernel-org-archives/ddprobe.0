Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5B62AD22
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765706574; cv=none; b=ETQ1SLpQ19UMbN+AmgPELTvjZ0jm2MTTZKUvke6DT9Byz7Y7sh0wmxXJuJ4qHKLd9nBSqxuD/u34TfVxrGfj2ESRA3eAiBEuxvlP+gTBElWSXw5XLw3wD59v9gi3SHMJtNUGDvIDL1Y8rLyczzHF4KY1lJhadVC11GngSNs1n/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765706574; c=relaxed/simple;
	bh=jYf2RHCRvLqmkWGD+zNzdqGSVfdhlmrZP/0PSqLzWGo=;
	h=To:Subject:From:Message-Id:Date; b=avNjJdY8q0MFl7W4o6STG+X4nzMovj7yglzbzY6EqEALauDjpmKjV2Pd5QqRRfBaGRa/bqzktpP9rQMs+Iy8KW5PbmuVNYXy5vDdeWglndp4Fo5maz9Y3hhS5uq5WbEuLkprmNR4eGt1cIsufaxJuMHu8g8/bPSqTMBn+2rHpVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+AH6fqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+AH6fqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56F2C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765706573;
	bh=jYf2RHCRvLqmkWGD+zNzdqGSVfdhlmrZP/0PSqLzWGo=;
	h=To:Subject:From:Date:From;
	b=H+AH6fqQFlEdlPFR1rFSEK0MzT3ZDpszKnVzWWwlz6/TnFqUdbaNkEGDH41EO/Og7
	 w9KsVec6UDaWVuWHRXVslqsIg9sVrqR1p+czQI4Alyj6fz/TFIJz0Olbigzc1CkatX
	 PomPGi/ayDc0ZivbbLtmH8PvO29KQ9DGLB1Szt4YjsNKBPh+V8Amw1h8Tu+K9CEVLg
	 svJ8Xmo0gdsrQSMoO7Xm8pFjv2nHWpAXH4HqnQApMWhswZ0eZEuVk1iR99dUkTTdVf
	 VNk+JsInm0xq+ktE3RIdj87FlfaL/TAXYO/K76lghLfX9m4OjPI2ajoKYFvdnMr2HV
	 WJZR/rA+A+cXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E6CFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176570657357.7004.806311331296265791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb905360b8ea6b24b06e6c85096a4f48e61add0a9cf2b9bf2bea930308c8eea9
Date: Sun, 14 Dec 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765706573
