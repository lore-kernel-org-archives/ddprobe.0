Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5CD2116E9
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750151994; cv=none; b=KlQMJk86J8Lzzv84cy9Qgh3IRvXlPjxCSzHVDMLe/8nsE0CUqx5/P0IjrWjSd8q77VDEAS/A33V6Fc3PeMHLm8sIq7XGyqLvoRv4C/I7zUpFF9Kk0slz6DuYENDnmRDhXUOpVpTxnyLI/gArbHZwBNeScutN0yJ+uSt5rfxTe1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750151994; c=relaxed/simple;
	bh=SoCE2KljNdS+Y9ljUPUEzO+gWvEii7JnjSx2HM4/Ua4=;
	h=To:Subject:From:Message-Id:Date; b=EToVmK/iQRm1ltP0QwROuH8U64izng3t07wgnr82T2pw0S7msXKVw21+C7JONIv1xDqHJ6h5bd9VkTvt9vu5N+kAg2F9AWKKG63QNdhSIGq4TQfgUNWN1IzEOqnpmzuId98uGVGaovlqm+Z5SGunSYRvrK+3xiBzCib7yu3GEhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUmnSMiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUmnSMiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D37C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750151993;
	bh=SoCE2KljNdS+Y9ljUPUEzO+gWvEii7JnjSx2HM4/Ua4=;
	h=To:Subject:From:Date:From;
	b=QUmnSMiMcwPScxhpq1+rBXqbaz3UPGlpxJCm48QeXa6tWcLJD910LfRVLqFMOwazb
	 MLFXJi02BYVaAtHTSSGzyJFZY31/wp9e0xn7zRmHz1+Ko6PL0ZvC4q4dxEsETiXhS4
	 ETF2Snpam1e58jteBvvFiBWM3KC+PiO9nldLmNfNsihc1fLks5v7AMzyRcZGaH4pQK
	 wU66fVZDvmpdH9c+z8wyeF0D5ZNVbQMCnTmTSZCHAm0sb+BaBx+p/0C1IzKIb1791v
	 SemdIOsJnIUqIVCsChXeILxA4fwGQrBdNmvne+EvdgKDP0zyQhlGlC+kPyHOtA4Sfm
	 3n/gM7vL12YNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E4C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175015199358.31710.1349526742700241619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34a2375c6ec663cef0090e1b59f25402c8c72a44e169654977e4b9e1ed96f26
Date: Tue, 17 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750151993
