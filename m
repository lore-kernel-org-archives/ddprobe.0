Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA3A3B6C01
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774333494; cv=none; b=GDQQM002w+X9cTReEujOYmBVi6XM26gyOGq4koE9BXZasVFNF/vYqlmP8gbTdcEYZlNOThcUyqKEa+yKoEG4pvQGkANk+rQxwawSQT4c4q811BSePR1FkP21/ZAvslv5O7Uz5sQcFNiF+xTs9jtTVK8ZCItIeifHkvxEw4ktVKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774333494; c=relaxed/simple;
	bh=FWL3VLgQptyqyoV2GJf1lfoK9ppCSUlTfXBg5x8PSs0=;
	h=To:Subject:From:Message-Id:Date; b=DmBYtZEwlsXPMG+bgSUHWURNcuaAVHFgboc3Qp3DY0mrWC9SRdvoJgilprBNVVSzV8FqC1Ku66eqylrgIjBin7toXZUAJDaBXiFU83J5ZhtKsrMCNu8gJgcTrTvaR8iR5dC3aU8QAcSyq5Od6zelItyGhyy8AEsVzxFbZSqoEU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KnTBrcTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KnTBrcTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A944EC2BC87
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774333493;
	bh=FWL3VLgQptyqyoV2GJf1lfoK9ppCSUlTfXBg5x8PSs0=;
	h=To:Subject:From:Date:From;
	b=KnTBrcTm65LnqdZgblY5e9inUf6fNfw2BVO+xghCbqWisUzFiGB4cZolSnCq6OxsT
	 TLZso1xjNpbPy1Sb6O24sshdX2XRqxDKZOCUpB8hdOwO8QIPpVeXABJFbgHzPDKgSO
	 ZwrchPRCU84dgHEHQUohvjgoZVaAXslPljseY8LiWOTE7qlcSXPZTBBZiIGI4lizST
	 gwmFU005clnT8LdCtx8webOpJsurH4PD+bANQ1I/S01SMAibXUX3QqbbKOFaJhTlEd
	 fEkkTc/iCVZfgBspfqm93otQyP1GEqBo5qpXmPCPvH0oNo3A4dgeFNzMGZ37JXD6FP
	 /F5OHLnPhFd8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CEAF532E7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177433349359.11838.8846325447865478225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f1d1c65a193d94432d89948e4308de921a3214e433fdbcdeb7db73c059ee7c2
Date: Tue, 24 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774333493
