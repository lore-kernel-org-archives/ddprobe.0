Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C50C3B4E9E
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779765754; cv=none; b=DcUwrtog8rPJEnPSsjDcSq2DK79nZQNUr3UHd+S6tkdGQBkt8VlnczlRNvDq7e/AFIVTwtWvnib9HXSGCqZt1CG7dNMuxY9r++fgn6xzRxm4iVZh2ebi02FwIgeWCWlktJhhXGBUe1973CGsLkRsZn+SFk6Jr9c2gXLiN8kqG5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779765754; c=relaxed/simple;
	bh=qoqdHBJTpxxagccePbE9GoVoNxoLQ75igJKSE7E4uII=;
	h=To:Subject:From:Message-Id:Date; b=CpK1d0KZjNdJt2GwedjFIX6zhwZelbqeReor8/LdEKxosu8s7E0IPLbBvxKNHpQcXXdZc4Jl+eLF0trGKMpbCQsK4gsPuneAsq0qx9xBKHfgnujEAokqKE9/5Ll4rILBaSsi2C1dLixDvRCvILsasaDRvf3LPV6746hhJUOXo5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLaD1GJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLaD1GJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8841C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779765753;
	bh=qoqdHBJTpxxagccePbE9GoVoNxoLQ75igJKSE7E4uII=;
	h=To:Subject:From:Date:From;
	b=nLaD1GJIcGEQH2IXxiBgD4idzMzf1PbBXf22QC5H9W+QSMv6zc7jBeOUNv51sgWzQ
	 29utpoKT1/IrKUrcwS4TYhmDDdqARxdCC6nWuXvAFkGVqPIxBf/Q+VX9X1K0F+aHL6
	 CjZi18RrShPCvFKVcEHpt86DOqOnti34EF73pbTnXRQ+wR7pU7b4xO6l4KEu3dDI18
	 cZ9RnwGlwIzl67xE7hnoXi8A84m0tKVikxYIEoFR6ZwN97gY0I2xdezcnZn4p70GkU
	 RZ5QsUfCujd7wQy37Lq00DDOoDO0SPCbuSkyU/J6KyuTj9YBDsVwuyiMKYBO3v2wRo
	 Wwne3cxEPto6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03C8CD5BC9
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177976575371.4382.9515854157415979854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d4e1d549d66ac7957ceaa4bde80a082b92a8b58bc2a5ec84a51fade5140edd6
Date: Tue, 26 May 2026 03:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779765753
