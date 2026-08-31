Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5834D3002B3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788174634; cv=none; b=jmZsH3Ia8hdCv8oYt7XFI/gmAmyr/LPekKrvbGipWhYpt5sFcFCEGt5Sk61B3fRHrbfuCV19sPNrE1yrPw8hE9JoSRLcLMsaHZh1WpXCgd4pGfVRAo8npZ6xf2wqx8D2TdRdUKlVcs/7QxoaIEjRHAULPridgoFcqYc7snJDjEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788174634; c=relaxed/simple;
	bh=dOCyXt9gvRep/XBO/hmfK21AT8PD2Jzu1ceQdw/Fipo=;
	h=To:Subject:From:Message-Id:Date; b=rY36nh1vXuh64DvMrw7w1enEmnSNjQAdwQxl+zT7540xVy84KOZBsU4vWwojeIo3gufES+IBwOZOs3752Zvk9+gjlLx1Jx+uLjoRmLUX62nii1iWjo+2gozQGnvzmEYQ4KJoP86WQAlIwAugWovN6ABeqflQTldA4MwqosxiLsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6ItzxC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6ItzxC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70DCC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788174633;
	bh=dOCyXt9gvRep/XBO/hmfK21AT8PD2Jzu1ceQdw/Fipo=;
	h=To:Subject:From:Date:From;
	b=H6ItzxC4BEaa8Hl+6Nh8y2FoKW2uyNxHPfE3O0j0i25Lq/F9JrCT5ucy8HXZTRyVi
	 VMGb4Iu+rWP3X/KQaekVegnBuhDZBe9Uu7K1ZMCHxrTShYKLuzgROJY9DT4zkVlH3f
	 /xEMq8LFL3XJ6RimP9zNCr0P/wiidrnWlpKISo8sYTc/mjtpMTZyXa5eJ8ju9Fs1qb
	 l26sUoSuAVPRSbKS84vXptvbEPBLDlq+VfcIkbK0S72r6LHnR1q4tRgO7rW8zMR7k3
	 MgK7xu4CUXvtcxQgiVpdxg0EqxPk2Vk93hpVlxN+7BTyEcAuytoMajZVqHRam91Vk+
	 uGk2C7kIWhx/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BD7C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178817463368.4073.7182532296857013318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f7e1dd076428d16719559e8bcd79ab79d9c46f24c5773ffad272348ffacd11e
Date: Mon, 31 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788174633
