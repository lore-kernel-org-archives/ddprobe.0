Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA01435EF3
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787825434; cv=none; b=trRl19tdLIEaOp18LFdHMpL/6ITHUCfZuWvXegGaqFEJT/DH3i9ZfH4tPHDju3PPi0esXGwMIEyn9AOmfPWQd9NKnz4tL1bAmMQN+lwPU8T96RXiNmiTMxwBK0sqLL847g2nt1ZyM2ycqXQsGX485N7EsNzTNcn/m441VCeGpf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787825434; c=relaxed/simple;
	bh=yFyIPt6x/oTA7yNhByx8/JXgPGZQpPUVautxtQrvmjc=;
	h=To:Subject:From:Message-Id:Date; b=hPFsWeN2ppsdgbQ2chf591fqUJZtGvX7SoKeSOFNuKLh4WEn5dziAcpKw0HIlL1iYWgfiSNaypy2i5KfPTOUxPuzwfYS7+PNeaTTHCX17aIQBJHtN7U1pv0QzIrsV1ocOZSGEWL2iVyX+YR1keXUkUPjctpUn3mko+QHe7+J92Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHaFN1YK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHaFN1YK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5E4C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787825433;
	bh=yFyIPt6x/oTA7yNhByx8/JXgPGZQpPUVautxtQrvmjc=;
	h=To:Subject:From:Date:From;
	b=bHaFN1YKOJW0UBo9USjlOl0oTO0oENho9fiRQcc6BQdvBQVzCxwS7El080VlH6Ntz
	 FmQe+R59bH4Els1cKPSEnaOYZHS3bfzT+3y4J5a8HctVXaODQnFgwT7dOnuk466ev/
	 m95j673Mc8V/bSuz3fuF+t6R6OQ+k7xhZlZvYivateAfrQp7neginCDQgqK86gv1SA
	 yGXFrqmbSjyF1b566iKLFoA7Zix7R4478YkauCdHsbXGRz2CtnkcTq1Z28dvJrRg7U
	 fL82z03rJ8vJ4lHpYO8LcYUQQ73uNv1d/u9/thm7g9eHYyyx+ZBgvY0I9jpbC6Pv7V
	 V4VgN5HvK/onA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F08C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178782543368.3090.9779710799754194717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc28a6e4160cbfd8e3b29cb1eab61734403b5da0bd502d72733e4a0f5cd21ba
Date: Thu, 27 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787825433
