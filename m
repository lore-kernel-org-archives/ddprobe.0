Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B3C770FE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736225754; cv=none; b=pHeHaAynNT57PEHCkZ54mUBtvyNTWR6E+BnhlZYaAUYnO8wqWIXxORQ9m2qeRjQdbgC+nq+QtldGFu9l5u60H0spKloru7QirzPlsSEK2LNmDLUeaNcGal1zrNqM96CJM1IOB4xSSLDKYF81AuXGmC5j/HKs50K//iYT0izPLPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736225754; c=relaxed/simple;
	bh=teLei/kglx2FmC0SvG0KtSOdM0K9dRBepWzvWE2+cuU=;
	h=To:Subject:From:Message-Id:Date; b=ef9snVnCWA4RZ89oqE3NKDgGbJASBbCAutJzrAqM8kPaQKJhaOzfZeRKdAtX/VNZlLYhl0Mxd0c3osYfGqOlRSnkoCMxDMwCeDS+hXT6Ezr44ztxixzb+v8waH6cSEW/VcmJQ7ye+6xTolExuEi0VpMLGfIDEg8ppnoi4cvLMPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIdyrpSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIdyrpSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E03C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736225753;
	bh=teLei/kglx2FmC0SvG0KtSOdM0K9dRBepWzvWE2+cuU=;
	h=To:Subject:From:Date:From;
	b=oIdyrpSWZRNslibkPjBhUpHRZbyjw2R/uWIANwhUBg6kEB6iCzhxaRw9yDBMErYfn
	 CRAQAcDHdLUIAjqdM1Q8BAdZnu2Jizta6t0OU+/f63xBte8KHpTk7AR9QSthV4z/M0
	 5jpvAZEt4oxg/CYpbtKUZr+AZtObPert6VhG489zgLD1AUpUgPmBhlmIh2Yynhbted
	 x86Ckyy103MPRJ6IYl/WxXzg7e0SN9f5SkrNVrkF5RKBc8etewP5hwHVd3vgfy1tnN
	 +Ub6mhozOd8tP6Ja2NRiUSG1Cvlb1Fwtwls5Zh0bH3lgpVaAYWNPkS3YA0h7VBlC+C
	 PI6E+sofD+NlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8C7E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173622575362.30487.14717744991872463994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4def29cdab055b25b66f4c0ae2f82bebf5fc78cff9269c069673d0381a17eb3
Date: Tue, 07 Jan 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736225753
