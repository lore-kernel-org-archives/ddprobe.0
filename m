Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465EA1420DD
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752295194; cv=none; b=Db8JjJhtjbB9gCDQGG15wG+2r46T5+Ai8ZDXqcU7XED7h9nGsBO0ZvBxEmyrphUxGFNu+EHWCSF+juH+3/n7iDzfbRyGvIcblUsfvL1X4+ulbkWHi9DQaKxdycNoALMa0+ZuBbhbTGGajtAJJrEXhlayOdOIGp2KSudkzDo0aUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752295194; c=relaxed/simple;
	bh=RZ7++alBrXpYooDDUgCdcFV0JoQhIqNS7k8qz41V6dI=;
	h=To:Subject:From:Message-Id:Date; b=n+Ro7B1KlZEdLGmq0axIXRm0lNgBGFt6KUyClysFoEWE6gViWzZ14AjNJKlWiuqqOrplLqimZttFWtJw0A3h3vZAXOt9oQdHtPuLYUhmZZ+f12T5g92HVUsgA8s/exAmPXp5Z24zh5Kl4+XpFtkiunWZZ7FtpRyn+1yXsy8+Uc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAOGQ3BE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAOGQ3BE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5322C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752295193;
	bh=RZ7++alBrXpYooDDUgCdcFV0JoQhIqNS7k8qz41V6dI=;
	h=To:Subject:From:Date:From;
	b=fAOGQ3BEZvbGz+IQ2LiCUcpSbxa9+fUbKRdqNac+2JffwpkDRl3NQTv4VH7uVGFmK
	 MOGl5sEH0zEWDkcNn/m4vu2Uydg5X3ww9B0+pBiebBF/6heLqtoHdc1MF9BGfcjEwc
	 TAiuXzldNm+laSt3dn+vxB5VAx82KgUBdYVCpYWxLyf49oWVHmYmK0Ro2cqSiADe0e
	 04Nk+bdSDAaiTseLA+FxR2ml/Ljb4k+K3P+HkcUkzeCPGjuhOxnzz6qsIOcUfJf7gJ
	 tZwLDl5q3Z4AXs2GVvc/ufVkqP1F4wPfqD3dF3KkJTRGdxENS4dT+Qi1pH9zaVWEyF
	 VauK2Qq/gXvJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9459BC83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175229519358.2239.5870187429344465368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1a08a006e7f3815c6ad7cc917eb8ed98b6269538e14cf06dbf0afef14cc049
Date: Sat, 12 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752295193
