Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AB6303CA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760511594; cv=none; b=V1RdBOtlP4eFv3tNDKgeWhHKRWpt86B9kWT+9D7+TJM0D+EsiwPvLzb9HOaJ8LQFaWTJiZ4po41qWFINWGNi6NIxY+Am6dnFQQOXT2YUMTfqkugjuKYQy+jl3bQ0WasbIXbcS2oLZPZfC1VivVsMsk7qleabMN/0gCvPAhOTC+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760511594; c=relaxed/simple;
	bh=n6/vTRqhsjQoBwZV4wciXY9R/Kf1VlWO8EUZUa0WYbY=;
	h=To:Subject:From:Message-Id:Date; b=eWuC+gfZr4JuHfCa5RzjpSXgSjBfuBOCDgoprNf4zW1q4ItiX90M3YCX+IW4tF9ypZ6IGo3+2Qvh+LP3fTqrn8aS61NiEaddxuqE/UqNoN/dPSxy2hriq9ehECtJ56qJPwzy9Fp51M1x9JOAYvrbic7hh3OyIwDHMCCmSg4lJWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGERCSu6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGERCSu6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4723C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760511593;
	bh=n6/vTRqhsjQoBwZV4wciXY9R/Kf1VlWO8EUZUa0WYbY=;
	h=To:Subject:From:Date:From;
	b=aGERCSu6XZC8SMbOTid51uI/5YiCyPk8ZWIl6ob7ArwAfishW6JkysfMZ7UnAj7oj
	 CRO0AxzK0yaN0bHDqSiyJ0Cp31P76ma9IDhWHcqlW57dYJTdlXb+PppfOblSVfYEGq
	 3RxU/GGTu91bAT1mQ5tOX8Tc3wKpNEuyOtxYmjImGI/XQpMTX0ac/jy/zIuS4aPELs
	 fDWZwWXIAZh6/rrFjXGiGoVYgCKC9PcyaB8VgOgnx73RKFln6qEW4WEgDpBsx//91Y
	 DNxwLPuLO2KK9lqkeAm54NZroFpZotkm+i7p3KCTq9HkAUyS+awPfpROdn9sdDHysa
	 Bxq/7hu+NR82A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F59CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176051159358.13954.9410666091583362663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287820bafa27377a6e3349f5f1a4e899e12b088a0ac5db478fe4eb4243d8ff10
Date: Wed, 15 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760511593
