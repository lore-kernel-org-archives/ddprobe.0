Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521BD27468
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749202194; cv=none; b=AB53awlGLyfLAufkfWKvYQSH62NY1RRlFZTcQyhSvCKsP64+WannWFtzCGeAhWQrbU+4Xgvd7yPXWGENUf53n1VJP3X/49joPSJ9RU4clC+27FfgBYBH8+2Au0lolAAAQ7eD1/VlaBtSc0UenMvVE/VRSdxE/lcdhcilHe+Vvg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749202194; c=relaxed/simple;
	bh=RzFNtBvF9KRr7ucl2fD0+xI4zFmhfg/IWoWvP5+ICP4=;
	h=To:Subject:From:Message-Id:Date; b=E0n4wrB57t9Cd1WQMNxO+BCqtOv04cD7QPVNqiwOsdfmQs4ACnwNM2gHUlTGjUhOKJN9allcB6GoPCVBxX12MGmAug4Dz+jVB+kvPuW0oVnTfI6luOjEpLjHiss2e3+r7iy8JK7H08vAC3JB4tGyhck2vCQKivirkLxpfPPnaN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYUgptD9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYUgptD9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40A0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749202193;
	bh=RzFNtBvF9KRr7ucl2fD0+xI4zFmhfg/IWoWvP5+ICP4=;
	h=To:Subject:From:Date:From;
	b=KYUgptD9nANyyLU+T2k49A7TT9LKeobfrWuSSZBP/GIFYWC1XRCTKxiZDH6Qm8ALC
	 Sr26WoY7y1qJY2oq4JuRSvHxwCwBm2WZTZKE9uRQP58I8t7Qxr7K8Gy1galUo+Z2Mp
	 JjcwDr4oLc21IUB7tfYue97tZ3iM9In2uYG7URecyUP9KKaCmapTRArHQ+MN7lKhWM
	 iUcQSvj1Y2woZjpYnmTjZzpI4iot94Q8KNzztCucu9xfGjRurBgXHtAC0oSStwT6YW
	 WltlMgPMvS6EXogXj6f6qa4BFQ/Iqio+o8KO2JPe0vPxl1PSLmpE7JZJSyxrdGECZe
	 w0hLcavgeGiIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7FBC5B559
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174920219357.2437.9088830686960574402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299722fd1b110a1a15f26448c1000d486e8d16292e4b43e8c172c68c11a46705
Date: Fri, 06 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749202193
