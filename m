Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3A0264F8A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758398394; cv=none; b=SeFaf1e8z0bUb58Ik9muAK/g7jd2TY/JUcXiqBosqinSJdcssBNL9rD97L2oTm6jIfGZwnwK0NtJmOFT33bJ/PenPKDK+s70ggIcZin9Ch5SA6KpYZtSDpiWNjYmEPvibVbYTAoTKVkzFXGSxcDDqObBTqePPgMCISC33yh9HKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758398394; c=relaxed/simple;
	bh=MVtp8+Icw4bTrlhSv80UGGm0IASJBEcHuGMu2SPWUx0=;
	h=To:Subject:From:Message-Id:Date; b=CFqKn05Uvk5o3WUeSEU1WnXNIXoeZj6y+RCE7sAictyEMF5YC/1Ep07qPaqAINzaGFegCtUKo1sPEOtabm8GVzWXEv7z9jAuTIzkjKfMYvMQNj55iGx3rYtvoqxxIm5d5lgYRPnSvSznODb3p448Rma1Ig4fMKjCjrK3mDSv4Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmOfoffA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmOfoffA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C787C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758398393;
	bh=MVtp8+Icw4bTrlhSv80UGGm0IASJBEcHuGMu2SPWUx0=;
	h=To:Subject:From:Date:From;
	b=ZmOfoffAfMi58QCL4af7AdAdNg3ADYQEInmyrP95aL0EPCCHjv6Wl2+1q+9v3lQJN
	 WSEaZUeJHTrKpaLI2pL1WOtcSNoepbPSn53RN+dF4LHp60rBHlSg4TxuxHr8BI45wo
	 tTm9CjniHW8wBl+tkYlOJe+hspi/VEPvB5eWPq4t/OzywWq+hsippQIzlWXqDd2lh+
	 20zftKTDJLsrxLKETqQVIP3Lzb2xKgMYxi6NVaai7fi8HFv503V29hcfhoKjfDQEBs
	 AP1wO5tOCeNUp+v8uHlGJs5dLBduQOvv9tgsQ+9zGkJ8eAUfUn0QkL58zHXNeSGTVe
	 p4o2CfFiDUXbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB6DCAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175839839357.8600.17967206060600484529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d16b0857dd49db1e6293b913e588b7aaf5acd5693de23ea91cec1619d1aae748
Date: Sat, 20 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758398393
