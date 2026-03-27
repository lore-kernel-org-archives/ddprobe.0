Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC26331326A
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774624493; cv=none; b=t8hKlEUI5ftHpB6HgaM+WlPozAWmEXkvkLg20wLaP5zXjsxH8dxAjEopTEwgUaDsUWMpzLUC4U2MkEr0M9HjpbkC6ItG598Pvu1VIGlo4QLbSKAtwhDlq/3PzHh3VIqmbPMOcZDl9fIjJzhHfeoTf7nvGH8W6rEJj5HXTZsLo70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774624493; c=relaxed/simple;
	bh=NGnJq6ICN1z2Qm1nJyru/SCRTAskJKNF17hj/zwpWx8=;
	h=To:Subject:From:Message-Id:Date; b=USrfm+PjnGMZvdCrV/U06i3bg2f26l2M3FVuvCmZTDJCjFhjUjZH3AxyGkrb8Wiggc3E2gMSuKruaH0e60XktBqEx0pt8GSJV4o7a67YoZD3vlZQ75FcdRh7te7Z6oTtE6KswF+03RyaWduQV5rrzy787Y5Ev4BWjFx5kWpWC8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N99B5fQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N99B5fQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6678C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774624493;
	bh=NGnJq6ICN1z2Qm1nJyru/SCRTAskJKNF17hj/zwpWx8=;
	h=To:Subject:From:Date:From;
	b=N99B5fQb9N2tvrJ5RE1ik0pKutVlp4OeUkn8XqxsdJd9SLFX0JoMJn9Qn2cs3Zztd
	 K4WaXAp/865dYhPaUlHDeEg62LOsCd8PBIgR1+P218igA8gHnsMoDFzLUskzTrsfOF
	 xQha9oz0Xsnj/74vJARYRGM5PzzzcWHmRe7J1z8WexaRQYdG5kcHpWHgvLcJzTcEq8
	 Z3PebIUtb6ftY0hzAjocWK4zexqYwBOroGXcLAHPG59B8i95j0aFsRpW3j58XD7SZS
	 bUtxTNr8IUsBgyh/pkd4uwzczvgh7RVqzH4v6/Au1byGBdpcXUmxKRkhkKKOL1YAqh
	 oCC8bOHtzXpaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9288210ED67F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177462449358.22065.4722760944600196543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43cab8f0bfac49c1b6baf5f5867234f09ee85076b25ee76558e3d772ecdd50a
Date: Fri, 27 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774624493
