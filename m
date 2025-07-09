Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC59E20B80D
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752036593; cv=none; b=l14QKIVEmS8GiavzH65P4Xf1BszkBl9d4Bot7dLqgHr3mKNFkRwXYqCTN9gehVXf/42YiuIiLvUQTAMdZIYNMktdYmmWsiJuntgbp+M9KYlZ0/w0BZsI9eF41y8o8FLnh1JGWSOtIxSMPU/3EIRwpYHjPy4QVnGvlzjDiZtbiEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752036593; c=relaxed/simple;
	bh=uN5OIdAe1BvyiMYVAhkHRy0w1fDgbbUR1j5F2R3dtFo=;
	h=To:Subject:From:Message-Id:Date; b=k3fdNwlnYERao2pDI9WwdPb9g55TlWgPbhurniziAI9W7hl05ZNQwsqF974jlXLNfwMUj5CrVaLsWwfxkyjVXweU9h3GN3AVWF6YgRbs4KW18nQudhKzD0TPsOrOQQx1RwpcbxoYKfY3abdqYoS5ykbU1a5OQ2bgddkXFDdgQP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAmNXA8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAmNXA8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91E3C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752036593;
	bh=uN5OIdAe1BvyiMYVAhkHRy0w1fDgbbUR1j5F2R3dtFo=;
	h=To:Subject:From:Date:From;
	b=EAmNXA8gPCYIa1FvUKau8tSzYNY13JfS1GwiM5efbILnNPuZHxspRuvbAWTCgDRbb
	 KkDGjTgeJ4fOcgpERy4JOE+l8UeS0saaIqjXb5jyORahtk5ByIQW202hgsmeyXRh9d
	 6J1h5mTPmoy8tm4xBmoKVZ23p0O//k6Knda297Zh54wak3oQcbywk/hDLtLWR/2Mei
	 DIFv5UiCODZo67WCyJVoB74CLJPcP00EoYzwRFxJ7a2PIytTG5IT63/dpaSCB+4mI6
	 hyogxqN9H1eAGSZEKgXSrZRjL5si8K+o+VVHnSOFZWg087Sapr61C7UMA3YYI6lOgC
	 wRv1utAmhIzdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C9EC83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175203659357.9197.5883550156516507121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2a24f5b878562c1ed3460699d788ca3b489f590067433912e98a0e9e8764fc
Date: Wed, 09 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752036593
