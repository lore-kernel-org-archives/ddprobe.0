Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FB53B42DC
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780761274; cv=none; b=HVyZ2V0PTIYrS/XyYGB7p15bJ0uprzU4IYRHUJndvhuv25qRg16oV9b3YF0kOigJPLReia0ooBqUN82w3B1KDj4R1wSnbFDsVi2If92qJmwmsK18wVDomqCNpO5bPlLggjSkGJeiKush8AwXGbGEt4e/mmAlnfuY9XWGTDgswaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780761274; c=relaxed/simple;
	bh=73bASlM6SvSleDws4h+kxIhZv9Hx8wJlD1HNwgRiY7M=;
	h=To:Subject:From:Message-Id:Date; b=bTmRjPOgtYXCRsbXUHDk46K1oc59SRcnLyHRL4XLXKeQ6Iiy7qnMYZXMIrv15AGk7V6xq6Qm9mfkRAox9QifbWihmU1hpeE/KkCadQIwESGK0Dm8w9fxI1OMXJsYFZPMaGmdMTEJ4/gjjbb7aYboc2cu5wX/Y58GLRoBVlb8/Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tn9dsVs6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tn9dsVs6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AE8C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780761273;
	bh=73bASlM6SvSleDws4h+kxIhZv9Hx8wJlD1HNwgRiY7M=;
	h=To:Subject:From:Date:From;
	b=tn9dsVs6eXs3ZmlLhaxNge+V28afgLH7gVyCzkCO9jtj+T4XcfpiZSokQYOhixXta
	 D098b9dTcCpe2I5HloTeEltSYtrjGpyNG4yxPnGPJR54HOml9UWrSuGsMQYTRO7GW1
	 WUMAp4LK8mjeY6x3tM2kCzXPIGVine8A5Lpq95nUZYbbiJrE2wOUskLfjLz79PihKh
	 jp00jRxZW9INcEWwXTVQt1CsdrAUU3OvqzrJm3evDW5lnMtc3QOhF18oGVqQv9KUYt
	 73/7OfjfcqGur0IEE0ZRlG0Z1txLrXmFnZ3jhctuGS9Gbgq6xh17hcjg38g8qstqmB
	 1zAiv4CitK84w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0E2CD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178076127375.19701.2898831124789822748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90548d7dce56be370ffff2214dd2026820aaff01278e1a15b99e3e32307b9b5b
Date: Sat, 06 Jun 2026 15:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780761273
