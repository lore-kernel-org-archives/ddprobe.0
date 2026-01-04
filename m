Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B4614A60C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767503034; cv=none; b=fGI9TJGfGDUC/PZP/Omn748u6ghhRaYV4DrP0gyKAGiXh2YSUDOcCbeFxlXCrlycInBIR6bd/b6YvY5m81DxRGUyZ1CPMR9wHKkDNMNOIHGkDCtle3Nf3a5Q1fx0yW86+TVitQlgkp1iUSPXNGmU3Jaizp85rUwD0NMiR3/cGdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767503034; c=relaxed/simple;
	bh=ZAnRfZirMXBrOtP4cAz/ARjCdv++NpAjRXB8LgslAnI=;
	h=To:Subject:From:Message-Id:Date; b=M7uvggJG9ZEdVNP0f/W4gk09cVZ1IDYtgNEGfl+8m/mqlCD9hqatnygpn5tlgpMKWifndVScejYro5pfvu9uPuLJwGRTQtC21bRSSyJDYBRiTtl6dSTresLrKHnKKsFkfkgM8c0yX5f2CA1A3chRTs4pQ4vfsqScQhHhcbtUL/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SL7WFsCf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SL7WFsCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18E0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767503033;
	bh=ZAnRfZirMXBrOtP4cAz/ARjCdv++NpAjRXB8LgslAnI=;
	h=To:Subject:From:Date:From;
	b=SL7WFsCfFXx0e+MAQCVKuLe5kZZXGF6fbK7g9TH6y7QOdKYyI2wR7YMS++peqIUfX
	 NdCYgMvJ07+jUFW9otOUyvpR9MNg2ziZSVw9lvzlbA3A8upqPViH3aQpEmJ+Lt6gxY
	 eGbXheycfTdKIr0j5rp1WLDRA5a7a+zbaWzIndqgOT7aYK85/G0mw4RmIY0J2xBdAh
	 f6cbVfbmP6oHFSz+pLPf01ISoFiiELhhQsMYFxAdWbjAKkVVmwhIPrgtxzuTZJx0zM
	 HwPbHV9QN3W/0ppdswV82UZ6wCLVfJILMjQ0UnoLq4czfQTUEkGK/MH2sWlyBVTmSn
	 GoXzd8+JGvzdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91347C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176750303357.11421.11204825549267456140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b609b1f41cf72c0607b6ea7eabba4f5ba79c59f97a2f8cd26b67bda2010ad2
Date: Sun, 04 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767503033
