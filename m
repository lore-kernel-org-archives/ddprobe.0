Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F751C1F0D
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756784995; cv=none; b=WEV05zau4gKOR53jGkU9q9utOxSxMGcqdH4fI8fqBWxYFX0piXsV1V2AJ2m9HyWvITT1/zKbcgfF15u6BbKdwfS1bH2z/5uuH3p4+tUQlhVcS7FUTER5Zp1Hd4vrBS9H1fcpFJ9cphgguWka924wOiaBd7l5BQ8m+JDxNoauzJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756784995; c=relaxed/simple;
	bh=eMRIRZULyX0G7VrueQD7vEyuhP1y9iQtq1x6tw0Wjr0=;
	h=To:Subject:From:Message-Id:Date; b=ST1kcLs/GJxvz4wLU6PcuDwPponn6Nwf2YiZQt0+bcGOjz4QW88HwEnq9s3qTsBvdbVfrse0wy4p1UY6/2W7UxztbgpJI4P2BkF0NMU3YXsXZcE2+o8azDVfgVySnsL0svMJZdJama5Qi6HlvnaF1ibstSMZ81R8SJayrJYFWmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQUUGy/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQUUGy/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DFBC4CEFA
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756784993;
	bh=eMRIRZULyX0G7VrueQD7vEyuhP1y9iQtq1x6tw0Wjr0=;
	h=To:Subject:From:Date:From;
	b=BQUUGy/ScIqUVTHNMrOHFy53u+iRidBSyBYHhxSJVevfyGDwRxp7c5dyOnkRkioMK
	 zkVFuXNNVnEnCe9hcfX8wzvuUOOA7RV9EdURRsTSZqlpd87ImAmTRe6YE5pRDk7KSz
	 C7C2r1VMQ+XyLQ/geRy7s6+h4xoNJH7ss2Tm3QO2jCS8wdrQXdgTwQrHQLIySvDXrj
	 Tgys1+hiGGidm6Cx13kBqKIBunnSw9kNd0/1O7ZO+lmZppNqisvLuGEcZ4mGkYsQTK
	 D26icbY0gAv5nCSLM6tJlqxNEEn9xgfUZXICz8YX6jwwiAIKlibBuZxgYqfm/+Fbf0
	 iotAH1Cwf9r/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F939CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175678499358.32600.5479180499397690076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fd5eed24b94702828982485dda5d8a7a80f7318d554fa11f74253c602195c9
Date: Tue, 02 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756784993
