Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40773170A30
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735980354; cv=none; b=BfE3cNpCC9R+Zo1jYaBtwM6ctErokdO2xGMTS94xkULv0nif0fd5xvporVUL8rXKS91cBPU3HMZr1Dtu/B9+A0TU3OH1YH3OfF4u4ZKCGin3atg5+YE9DtJHYlbSKRmBvYimKWP657GmcZehqNi8RtbgYweUMmmOcbCBj3yOtG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735980354; c=relaxed/simple;
	bh=hDQviTgokipwT/7W6VcBMeRQLfYSmQ1+vwswPZnK0N0=;
	h=To:Subject:From:Message-Id:Date; b=Hu2QOZykeKGu5F4s4cF8x5aNECxXOuwdpvo88eCn1BPhHNBp1JcspH1o6Eo3/39ejOSfr+WeNAzPvmB6B49h9GNTRh8qwaSs1NOgqlj3YJzqsqPbF8H9Lbxh1eoOtsyAFwefAYLQ8i6EpwTXJhFJ3qoruwq1oNXAtv20fYgwAlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eh8uMY1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eh8uMY1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A387DC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735980353;
	bh=hDQviTgokipwT/7W6VcBMeRQLfYSmQ1+vwswPZnK0N0=;
	h=To:Subject:From:Date:From;
	b=Eh8uMY1+UU0aEHeKNEnenNBsEiilD+X11RH0bUMh5pFCNfHIUzMB/Z12xL6skjO31
	 mxJEg4YH1/vExogWUWsaYgotFkNLmu7FjjYX9OJFtDHUnsthNOV7Mrk5vzQj7uwP/V
	 wfC2LcDZBngXRDEnt3+OZUR+YuhN1eo05V/UW100x3Oxu5KiqZXtJXs7/YkpdhS6nz
	 IoVcAkhtZuqzfsWFTiIrPJmtBMGU2kRfXCVC0i37Vj7hw5/zZq5Ho818ilC3YoWDt1
	 MMoSrLbCOcLhUGgHppNVpr193KAjRYgarWAhNBV32viJuJUP9unajbf16+ASw84Rjo
	 Kv9/Ly6nooWNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915DCE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173598035358.30918.18158416924471420383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2033c007462d1e8371a7854fcdcc3c4dccb1bffb31c8e94f7d2e17930eb1192b
Date: Sat, 04 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735980353
