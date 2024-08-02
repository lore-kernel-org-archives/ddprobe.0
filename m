Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265C3166F0A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722614154; cv=none; b=XL+dr38md9nesplbqaMlKs545h0n7LD0Lr3WQ4Gh3fLSCECFtDyHXRaMKZqKvFq0PSb7t/nz+yQdzrnfjlMD7+emH0OGYAqMGCi+iTg9nuBsK9LwVx02glyfP8g/tcTlYlhdltM4CQG35EV2wBdxlIJ/TkE7CwugqzwHdMPPJyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722614154; c=relaxed/simple;
	bh=gCsTs6bvxttneKJmE0XsCuN9DNhE1k1AGDRr3sHmt60=;
	h=To:Subject:From:Message-Id:Date; b=WuIHAW1nol9ynMofMT9djzY4swuAnyjiKeCTzIXZv7+DppFLZB7alqCwdkchcCT4qI6hiBzrVAdZcPyteHynNova1YzLHp7jS4tBlNjFW+ji+TJm+p6rxRyY0btX6dUcwBln75JueGC9DwSAsjaYTugh/tuu3etzeznqaFYP1pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1hNJeDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1hNJeDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50BEC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722614153;
	bh=gCsTs6bvxttneKJmE0XsCuN9DNhE1k1AGDRr3sHmt60=;
	h=To:Subject:From:Date:From;
	b=C1hNJeDK/vwFmIJBAXPie9DuHQ0uhtfGYe4UyQInS/twda9KHqp1ge+A7z6mydMYg
	 7WxafDQaXcWsof7rp/pLqXcCFouEGP/N2do8qtHPR4FxTgKRMLmjUJDJVR5kJkVI/k
	 L8QEMDgrUCMC32hCP6t6m8i8rnc2PAtfd/aj616jmm7ILJPHzkEkwS+mfp3Q99UPrh
	 NGwX64NqiGI8XxlYWEI4D496bnVhj+T/UgkJur6m9cdUxfdRiqJb30AAs88hNov2rD
	 oN51mNHC6D2l5M1eMtB0WhmZlKsHSWAJALuahr6YHCcLC7a+2Wq2AMM8XgVjK+HzJg
	 VO0AWYCJRTrZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952C0C52D6F
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172261415359.25307.15620248438592216705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d456a2b83555e05e52089767c0d6c1068d67b82f1408520201f00362264396ac
Date: Fri, 02 Aug 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722614153
