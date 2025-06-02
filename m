Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4846B15CD74
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748845194; cv=none; b=Ewc2+Y4kGaW+ytOZU9HdjupeFGRPquavaqy69b4fjXxqGA24Y+/JynIeRkr9i3EJ2q1+PXhxMHqHhkUGYyaiX64Eofnp28y0r3eGODWhlsrDh98bz/FGopp2pIjIdsWBt5sHg52d9N1dGDfQ2LCrOm97DcD3obv3RL23mApOdJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748845194; c=relaxed/simple;
	bh=4nxv+O1dyzxXAtj6SJKVPZCY08tG3wrnxqr3Z5KOb00=;
	h=To:Subject:From:Message-Id:Date; b=rp6ZGOvbLAQU+hZXzkB1NSXszjWbwghTOXBw6ltcAVPDDPMGHTHOHD1qhreoVJIqoQGQnX1KpdbHqDA6XEuV+xKNCFGjbG65t5Vbeao0l5EjYtzbWo5avWGDxVlNbB3eUnm/5U8hw4Y8Ntf/qmNNMNKkHDG+XwRHvcEclKdfFK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7kIV1kD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7kIV1kD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A71C4CEF6
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748845193;
	bh=4nxv+O1dyzxXAtj6SJKVPZCY08tG3wrnxqr3Z5KOb00=;
	h=To:Subject:From:Date:From;
	b=X7kIV1kDpYMEXMl0V3ctC/7gLGF2qSCHedvnGtufhSDNMLo7eDJTE/praOAvRgDPM
	 FxnPxNgj/FQfSqDfunzXKZxrYiB81p8UWEpzDwyB8kVR8KZ7EsFfDF7HSWwHK+bD41
	 JyllaLsEyGxLqu8iQsSo38gONQXbh3+EvZtYVy2exxp9q7XMcfS4OjfrP/woC5Pfbo
	 AxZJd4ZmzK7NjoaOQBXx6yGan87OOCBRSNrPsVixEqNvKmQYixPcdTrtWY04z20rlj
	 yGrIbqyRXlXolnfvjPT80yGQJTq6g0brFdlekRlRWlBP5ZqeP2O7GnFpVJbwbYlrwS
	 hWcbZiKwOsybQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B3FC5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174884519358.2998.11503543142209172849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2100a81e09d2ad6c9549ded645305a1090774b5faed465e7b00177173b402aa2
Date: Mon, 02 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748845193
