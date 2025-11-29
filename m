Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F473B2BA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764379374; cv=none; b=khE3QhMC5nYqW3RcEl3paYR6dSNT67ZGImkT9xmFY7gfxD7mANYdUhtevhXCThtEsBfjvKgdee5EuJeFTDInDHvwdfCG4LGD65kw8D+UVp50EaNrvskBETqYxEYlyK8JM3i0gMlqneVObBluRNCCVoXEHVtc35iQn74vmKWDcHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764379374; c=relaxed/simple;
	bh=7WnsesozFBUXGozcmoA7ZqH96I7lo4YJGhIA4O2Eje0=;
	h=To:Subject:From:Message-Id:Date; b=RZJlncE+Jk9fOGwYOvtruSUyfvo8Yb5+RueTPOLxHMJUV24ZEMaHnkB6n0tLC7EZFyyAoY3DTv3opA3CKV4luBNXVpiKYNh2pPmoE140iuCayUTggfoCDxE01V8quAvV5mb0gyBY08H8McK630IqBIwFsbqFb8M6NO677Rruulw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAdl9krU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAdl9krU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90A6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764379373;
	bh=7WnsesozFBUXGozcmoA7ZqH96I7lo4YJGhIA4O2Eje0=;
	h=To:Subject:From:Date:From;
	b=aAdl9krU5EuKmkeiKp4gXWnRByNNDSsO3gMaFOdirxho7oMzXSKdE4gvyNnoMGi8p
	 xMkkRZ0iJq8jD3sMnUh2SZ2bkmyJXMZGZkdu9z4neu/UbWbuCeIlNQp2YAALwgy9MY
	 XRLap3UH9hbIbToYZp3+b7RZzH6vbF6KyzcBu+TfoFvLwshP+3d8aQreMIkuDkkVrB
	 4g/f4s1IGarh0VQoF7QsmDe6cAedJWet3Oo29df8DgHK3OBuifHmmoyuxcwRcImw3X
	 PXmr9DYgHF0DTN33E1grW0bZf85shPJQzrvQAROfrYe9CeI31lreKHE6a1T8Q2MFPV
	 7+IArJ2ADgEbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9452FD116E2
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176437937359.14433.4348112250644176402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba1848373be34ed323cd48965ad633955f2db67367dd68584057367355d5707
Date: Sat, 29 Nov 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764379373
