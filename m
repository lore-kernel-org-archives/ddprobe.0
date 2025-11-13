Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D69D219A89
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763021994; cv=none; b=qWpK2VaSc+A76nn1GA/eoLuqMi9UZjHO3WPUjoS31nKv4lPsfvPx98VvD7yMWQxxupaG8LSx7Qnv9cryobhx5QEkTYarGfIkJkoDgAyoOCkBZDfOTaISUPa4XzXCE1rmtKwbIEMGmiuNe4xChm9w50jpi2RyI5boeKfx6FIY5p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763021994; c=relaxed/simple;
	bh=UH0TLTTzeie2+FbTUmu/NTiPGDXM8OXozfvwPcEujfk=;
	h=To:Subject:From:Message-Id:Date; b=BRQQXodXgvrCe2VlMqtjpO9dV58NRqdY0lMHoDB7f2SS3xggaVFMMFjp+EFkXfUcHjqtrBZzQtNkO6mEbMRDmPA6UHzSf77b/T3zrxXiFrdrIM293TwN24bta5583wzSeTVDrcT3ucYZ9U/j9IbwcAhtVxLRVPiV88QTu4R2r+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxrodkeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxrodkeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6708C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763021993;
	bh=UH0TLTTzeie2+FbTUmu/NTiPGDXM8OXozfvwPcEujfk=;
	h=To:Subject:From:Date:From;
	b=IxrodkeGK2S8xMZRvI7+rgbOcwlazJt11s3WRTMu1lpJonCxkiQ2fS1hMvYPY0ZqC
	 dLiL+ClKSmdtUcQPSYuXZEeyw0yTtDWT9eZXElZ5P/wM2FBPE3+gapvQD0PyEk94mK
	 g20btiEoCONvxwCcYjHGq5t4rkLReAMef2cx+u3B6YfkyoWmKwcEjnmxIRMWYAsnNu
	 1Lr61HbryiHshccfr/kWGFg67534WtX1JrK/X0ExTCH7Zuba2J0eFDHytYRNBF0a6R
	 e9/7/LnoKOom1rbuU/ywi875RODJE3H0D9a5BUrClA6CpyWOVU7sWhyb2gPD2eQROP
	 ECcM5y/AToQCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A649BCD4F50
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176302199367.1564.10630894992194097936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6781228a2fba3656a3412bb295a1936efa411fe3704e5eeec2b4fa47a91f8f5
Date: Thu, 13 Nov 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763021993
