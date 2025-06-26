Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17812C8EB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750978795; cv=none; b=PO1yWrUjYa0lomRNeWVk1GW2MdNvsRDFpdGVKDlhQMnp/3UNStudlXzT54Upn6ebLebh8axR6sKhrKN4pTB3OVG92wyHZDMyU3aA8/Mq20/f5+Kcgy+dLoWvpztYJ14cYbX+IXAemqHFhqkY5xeGlqiCfkH3F4dORlAHeZYW8aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750978795; c=relaxed/simple;
	bh=xlaP+dz1rXjlzmsan+HyORIOUVRjsHS+0OrC1H1i+FI=;
	h=To:Subject:From:Message-Id:Date; b=EFFWMdGEjPRFWPxOSVf357E4YkGk0xpY4Np5v7S4PtiMfwtCvVu3rVSczQPn5SCidqbo0P5ndAXDy6eEcX2whQovDO9FHqaNb+2D+v2P9bw7EdpwkGm39jZ6ycmtIAndqgXMfZnZCp6IcpaFuThcFCxvH5cNzfJ9wmS1NW2njcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zzwqa2Qe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zzwqa2Qe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EB5C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750978793;
	bh=xlaP+dz1rXjlzmsan+HyORIOUVRjsHS+0OrC1H1i+FI=;
	h=To:Subject:From:Date:From;
	b=Zzwqa2QeDedgH1bfR0LfwzdOFNl1vDw5w64wPGCjmWPivYdGVLt9aovPhI/SNGXua
	 Qe/1PtDPIW1hmsUIt98RRErZy8QKOjDG/e7iefuS+a2y61wJEz9vCgEgfU9W7qI2JF
	 3DpKe0YeYDWL//xiq4xCPEjmb+FK2H6853oeew6McnZTEYUYOXF7PCFgUpc/oWCVth
	 V48iyLtgUt8d51DaOxGUFMbh6pkYKK1B6rZNW3onHMZ4kX8kmRXH++ugInOTnj8JcL
	 +b5voD1hhrX150IIwnm86eqM+UmhzkMVWO2KYIh30o9ZZnoj1qfYzYBtKp66JtDInq
	 5d54uff+kg3YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9279CC7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175097879359.23010.1706945865626118863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9db3ccb2cf3991e3857485219669695f245875be684e63524991ba90977e5a4
Date: Thu, 26 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750978793
