Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16882853F3
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753945193; cv=none; b=ZZEeSTVTixKQDR7VMGqaDjZG4/KoKKPK9oRIduPNwPGmAuDeuxo8HYGUqoNFGwNUI/H5nwG65g0BareYKN+Og6YfyJvzmqR15Td1V963h91fDauSEjWyjewgCiM9xcH5aJwVbYg8lOisVAwAbUzyKahLq+HvsYSDhoaqOE3BVYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753945193; c=relaxed/simple;
	bh=NS6WNHyt0cqiliS1+YfGFJ6B2kcBpIAs+/mhXqvRrnc=;
	h=To:Subject:From:Message-Id:Date; b=h4YaBjfG4qZCTzvP0ExoAtJ4a6gNrZ1IrzyTL8N3jkykA5qoNdj3m+hntLYB/8qDOjAKeOgnzvJHrRYkzPMgj49f/USmiKFegTbzlkRjdWrln+gHfSnCzOypy8rLc286LhOsZxd39GBA6wje2yTKmI7O9/HssFD/ERihiHh+mb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHDer+Xa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHDer+Xa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D55C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753945193;
	bh=NS6WNHyt0cqiliS1+YfGFJ6B2kcBpIAs+/mhXqvRrnc=;
	h=To:Subject:From:Date:From;
	b=dHDer+XaKKYAZopAwEipkeTMtuJPj/GBCaR1k1tSRjCCEEbJ2F9SrrEPqMQ1MXoPb
	 quxxCZIeli9O9jQXhyv91yVUv6azQ77Kier6QL1gW/UWIVH0JKvRHQHw/clxAvNsnG
	 dx0N8hNa1MuIl8oLm/O/HfcwGIj0wShTG2lseKVVn2dGQSPrM/IXXIMqkSu9hyXLVx
	 0rA1NnxP12yYOwOxFtZcj1A3tzowaJaVpipd/5mtdWtAPMlqwM420Pe47M0bslmEk0
	 wAOiGsxHjdI3BJ2jTOs29kc6FaGkZpHJiGab+7FndUCtFDdbLuL7M0Og2kNKRRPF0t
	 ioX8m8DcUe0NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915E2C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175394519357.25063.221048985695697108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd2f758b46fcf20179e5b00d011f5192aaab3d9be9f90dcb69d3bbee22d7f6ea
Date: Thu, 31 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753945193
