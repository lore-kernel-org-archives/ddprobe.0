Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397141E520D
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744326594; cv=none; b=Dtpkk48E56TOa8iIt44wWyzv7Fz86ItJ35igYuioxk6FX+a/X3DBj5Vnvv98Yl86Nv3tQVduNR2lFrN8N/S7Jt1yRr+08ML4Oamk3TXx4COEHh5HOPgNaiDqXq5BanPgC8ZpfdYmgO7XKeK2LgNH8D9NJkrDVaPrfmPJRxHtQWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744326594; c=relaxed/simple;
	bh=E1aMjgtzsGFnZ+nG+hDuAvWEyC8O/jvGLXyNBz4RcQ0=;
	h=To:Subject:From:Message-Id:Date; b=CJP91lokFVobh7vArrJS5vL95tjGmNq74GanY/WWgVSHLkuPykRg1Ox3M7HOCFUyT2JuuBcUfxHTZiK+v2F0LMuyFtksmjjNfOFK42XSNvMhTT5G7FdhoRjwGpnoAB8sDZ2JFaSjMKVWll5ULzSNMw+ZkwKQfhjwDTp2b8YVBaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoNSmmQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoNSmmQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23AAC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744326593;
	bh=E1aMjgtzsGFnZ+nG+hDuAvWEyC8O/jvGLXyNBz4RcQ0=;
	h=To:Subject:From:Date:From;
	b=KoNSmmQ7U+gsRr1OTlXpREvgZguNcewunCXBi6dzF/DYJGCcH0zFOzaf4xUtxH+rz
	 JQQMavMCJHuM5reuZY086cQP5XCJqKz9EhEYK4MprAl9PPt1oaAXlU+AHCpG3ZXPwD
	 hq3PhgsCbeGexjelFje1lH9/18kSVDcarIu7M5bvF2iIygBtC7QwLhogwyZKLcPYQd
	 xqvO7TQ4T4KYvylzR3pU0tiFNa6q/vRA8CiceIF+nt+9HadVM+jUOTUTQVDCu39UtQ
	 JlOI/GTy6YzeTqwtKqT9YC9TY4tuoA7fgfBekZ2QqyqmknSzRk/SIx+MgJ8rSSpbGE
	 u463XR2DGAsJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F657C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174432659363.6354.3153610161342566072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bdf56624e6938726a1dabe6d8e54342d2ff31f8a3dac8ef69ff0442884ed963
Date: Thu, 10 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744326593
