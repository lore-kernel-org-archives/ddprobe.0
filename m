Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4DF264A86
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754003394; cv=none; b=SHauVE022UKd5xdlHA1XCEqRgQNQVslh8uFDVikQr2uWG2wqERVoXsEF95xReNfGzTbBN45RlfGGtj3sgiErOnNps7KpUrg4TPzGUwMw8jJQB/TKCRLYywHXqY9mO938bwUMJnIIDzr9kvAQKnhthO0wks1y1fAM4IBaB/qux1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754003394; c=relaxed/simple;
	bh=5o2o76dtpgnwAAqfkl173OfpHUJ8iiOiZifsu0i0VhE=;
	h=To:Subject:From:Message-Id:Date; b=ez5VWlGnZ1Bq0nGLC+XA9ymHmIf/wa/PVlMn1BrxM3djqUjjmh2ONMTL9CQWdVCRG71XLtCKVXYYECmG/JycJ9S2R1QnWVTtPo7qQQg0EJpM68mHDNNheSEoL8qpvQXNLNVKpSud5512ZfPKGYuvyp1Pf+sqnC+CJFe204PJlKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJYCdiBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJYCdiBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A08C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754003393;
	bh=5o2o76dtpgnwAAqfkl173OfpHUJ8iiOiZifsu0i0VhE=;
	h=To:Subject:From:Date:From;
	b=fJYCdiBroROoLPK60/WIo1bqgkxowRJAuW00syywiKzJ+GR1qbs2TvjTZPTGBoQuS
	 ThrMewdEPy81ibt19c4w1jIk+ublgpgRgDLGXxKaSNgKruxNbAvJuhTOlS25oETHQx
	 idywkjq+sqowyQ2tisGeuDyN4cFpGiegwsm3uqIv1LR+N4dwfy3kObu5o8uvx6W720
	 PwXP0CmJK6M3fwFAvtaGV3KPOt+YrTBA/zs7TAeF49IWidG+wnWz4SIs7pAsKy1Ps9
	 usa5Ju1zVIP2YYtaiSM9TnwhJEVIykNjEtZ+pzzs5ttJh7h0eeyxsAbHQb0llPjrp3
	 CLSkkSiIsOPHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951C7C87FD2
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175400339357.3215.11697464697082423164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc5e330dab8405a293d2326c680a3e5af5eb1856c1aaee30facecac8ee511eac
Date: Thu, 31 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754003393
