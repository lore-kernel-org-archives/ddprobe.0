Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4101DEC2
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748057994; cv=none; b=UwP6N7LrZQFeSd8NBbnm4n3zMyJApudalFggmApMr6a7WTHI0Ac45U9TzELD3uq/2UHb4wTBVVnqop9EXCrqi6r7NfGJmkaL/Ai67ZhKTbStOWGzLIqXz7WrDTi+lB3BwqQTLCI5hsQ+1f4C7hchYo0c2xisFCuAFVUDj608zvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748057994; c=relaxed/simple;
	bh=84VWroVFq4pR7HnSs/rtusQtLNzl/HAVOna0gSg+rJ4=;
	h=To:Subject:From:Message-Id:Date; b=evGZQLQD/Axcf8a88BXwjh4RY6YP9fLKOkNxwwzKAtqhSLugR8Xdrd9G2gQLs0TWBfbA2ceqCLfowYs9r3Cu6+ZCdDpDYr0rpkmGXKl7iqjqoaMwFeTqIVKN9bypLZwVntGVETIRxqZF+WHKg1s+Qmsh7OL298AjNXF0Z4CBySY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHC+5Oxq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHC+5Oxq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A466EC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748057993;
	bh=84VWroVFq4pR7HnSs/rtusQtLNzl/HAVOna0gSg+rJ4=;
	h=To:Subject:From:Date:From;
	b=DHC+5Oxq4FaY9vHr59m3yv7pOoBZD9Hr1rwyNuuXQ8qGaldVffM+FEZJK7A5Y9D1z
	 Z7EFS0iC2V21yvUSpj5eIVzYc+4NhATmoTjJs8Onh1Cj278xIh9A+Oiq2m1xr0y+i+
	 Yb7ewsniK/LPR+E6WDCs+pRgxlyGNpA/c6MoQU3BCyXZ38xj+xwMvn1ZPetob48+wz
	 PJgUJ72rWk3L/vYKvtbnRl39oaGmQRiekJVvUO7SXz72xYMKLkeAS3cNikdp0WeuJq
	 xuvirdtESun9p1I5n4LwKysF0a+2hfyNAMiMR9nNJvq3GQ3vg3OxKZRiqHGsKI2OEr
	 rO8cIbp+Pw8YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9100CC54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174805799358.17026.480830172000346636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce61bd9bd403aa843a06a1a6e5365e88e45d511e3551adafcf49ce3d44fe3f42
Date: Sat, 24 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748057993
