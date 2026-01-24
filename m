Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0F73EBF3F
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769244834; cv=none; b=VLPhDFGUdS7tvPhAQd52VfhM7s7zCB7HZWU2rcbaXBELQp07olzM06jKLFbQAWWpKgLnBc5U+jdlzhbKqdXSBSMIiuRx4t1KvcKINasDPTRfiFEwIAd9NWjyCQDnKYayOl8hrgXXS/HGobdOu6YkfMHVVIHm37Wzy1ISeF21hE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769244834; c=relaxed/simple;
	bh=T7nT1W4a39+uKT0C449OWKPVzHsYe/NPb7aaPPfI/hQ=;
	h=To:Subject:From:Message-Id:Date; b=eQpFVlv4txI+zkQFIwS2FNmfTuge4nFlfhAfoSLQl1jNEv9OlDk+XBO8wG/R4SYvto3i4QqjtYUA/ah0YfiqrecbvxZ0Bpx74rtch00CJuqvR6O2q3VZOF6v9CQ5KImo7KCYWL6JyFRGIqUfw2FYaXOHdZ9dtLoXpMM1vBvPUMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pa0mgfRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pa0mgfRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A692AC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769244833;
	bh=T7nT1W4a39+uKT0C449OWKPVzHsYe/NPb7aaPPfI/hQ=;
	h=To:Subject:From:Date:From;
	b=pa0mgfRDh5eW4lUl760UyGMyQ1Fme/Ac3xLSBAMGyDSgjG3w8/LGnJc4RAsOBsnwm
	 ZNa66sSov9HYHjJyBqE/882H9kZPbQIMKrrX0Hkw2QI9+Ys/kywgT27lYZGtisSjab
	 4Wq+y1EZh1b03hHE3zZQFha6m4tSZJbyWqnozmapsOtmlQawUJ75IYCCBEBJNeAnDa
	 XN2vumW0VnJZ4LFGVeKXcyFnbOIuFYcMz3FrYSgYeOFzE6s3pUAMLdiivjURPxgspR
	 Yi8DV0qdexzCiM1+u3qu29VxiXcLxlrz3M+TwbN8nmGvwrrKs86ZrtrBiJ0SAqyX1t
	 6nS4Bozu0XN0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B8ED715D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176924483358.16502.11360882685585986122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa5b5e5740030b7b5597e0b20eab2f8dfc50431e2be734dc05f4a7ba4348662
Date: Sat, 24 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769244833
