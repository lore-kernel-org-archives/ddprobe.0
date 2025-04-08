Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2512C1A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744075194; cv=none; b=CnxxSTeR7+AIR3MJ52w7sEAbuSaJYJCNsrPJVZcukyP86uFVDYl3tx2pJggMU8e00ALpMydVXSKJ9Fti7INveFJFhH/nHRd5gZcTIx8qJktiGR8G3rkPX56EdWX0sGYLFAwIC+s9dRgbE176WLk1+Dvb/Uyn6uRJ64XRSe0fEFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744075194; c=relaxed/simple;
	bh=X+5bqHmUL41nbtsA1BfxkVMGniKUrhEQnfyQ+IEXpsY=;
	h=To:Subject:From:Message-Id:Date; b=HpEF/c7pRxaNtfuQzMr+9ZmoaKnUbuBW4kD6MhGXFX8ilGSwQ2MNHU3Ijk+sUnJIH1yeOvufMstwMm6wabm7mCyQxWOJtmH5tWOn532aMIZkCVjDdAbLIMfhSdf4yeRBs6nR4vEzITv7Cd2033QmsJ5AYsdYkSebmRmRccH0PcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lnrhl2uX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lnrhl2uX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7CBC4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744075193;
	bh=X+5bqHmUL41nbtsA1BfxkVMGniKUrhEQnfyQ+IEXpsY=;
	h=To:Subject:From:Date:From;
	b=Lnrhl2uXLqa5iN/OR4zHR85W/Lwm4MWkKWvLNK+31FmOmEAKQyykqezEbKjiBEbTa
	 JNLiCD6No8+hdoUihbG+N5xkUnoliCMHNI7NfeaOPsUTALflvafrmmTNR+fxuqxNlg
	 CYkILAOFot6WfB8VFv8qlQxuFtCCrWqFCa5RxO8U+mS5li6wuP7+h8X9MfxB5GAHKV
	 yHgAsT5LDQAeI7YAmWEgjyXKkMrrURwBV93U1K6Df7KVUnfEvy/G52eV/VtIsUrwg5
	 2G7GmDoAAhqXsCTV10P/ohh7ca15k6SvamIP46YQYljTaoiFpA55ZcYpCL3YpKMRG6
	 iMGppFUSpR5nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A30BC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174407519362.1572.465491268712670560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e9fe4b13ebe0594e87534fdb4d16d4081a0d341c2011e8ed4c4c45a5e16cb9
Date: Tue, 08 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744075193
