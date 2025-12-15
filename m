Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E8D28CF5F
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765774974; cv=none; b=KeL4+TadI06uWr4WR0vE7Jmvz2mVHvZ7q0btgSQfOuYMPWBXF0oxi0w0OOe8jqHVLXL3rAbFo0Sgurj/m+Zw6YWXFn82tVKD6mGPWhQXj8wrFWhSS9F+N/AU9TumXbATt/3ZKPciwt3ml0MF/EeVvCIaFy+Ignw0tHXoFkDKkCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765774974; c=relaxed/simple;
	bh=Ah+dBOoOYvLSrvVSLrxCYmq7T1Ld8J11kCfRlAP6v/0=;
	h=To:Subject:From:Message-Id:Date; b=YmPfuhAWo3nKPk/SMR4d9eTmHJki/izqUz1xLmuNZM0wccilJVgerNUoUmFH/FyKAwC2WDsuWTHN2e36Nf8pBt71MSNMmeLI++FVAqdZrqDGYhGubwpfxDuUvruK7T/F/sSXw6mavK+xrNiW+3dBQAwtU+AfczxxVUkdocQ2EeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbFDO2m3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbFDO2m3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B44C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765774973;
	bh=Ah+dBOoOYvLSrvVSLrxCYmq7T1Ld8J11kCfRlAP6v/0=;
	h=To:Subject:From:Date:From;
	b=fbFDO2m38bKEyFc3Zm2bsIus190wlcq+kRQpB6m6tBCk53/ls7Q80lVkHQXDeKYgA
	 mtIsfaoZjHQrI5BHLZOHe8hHj+40A0os4w51Nfb9zi9oZDKme4RuBGyEpUlnMHURJ4
	 8Ukyw6F8Re4M8Sbp74QDrVrqTH/In47KuGB+YUsCOJgymB/Nnn3KOVn6UKYsYUv3Xb
	 kkJJKT4Vgqe08N2pC87ErBl5GvPoKWDHOMd2UozxLR1JfhV/KLrVQISyzHOQLha8b8
	 2A8NFjMjWHjQEYKicyClLIM8nIiMwvX1n8HcdAzEEcmzRqbW1MDrhq0YtsmeekwBwe
	 BEZehnT1yDHvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930EDD41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176577497359.7754.8391987960280998682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbaba2aeda5da17a528bb47cd198bf95f81500cb2bfd0480f64a69ae4c5f6e63
Date: Mon, 15 Dec 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765774973
