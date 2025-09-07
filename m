Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EDF1A9FBD
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757236794; cv=none; b=ZFuLTNiKOqiQ+ET09YPuEeyiR7jDIna/DNEwoKsNS7rjNJz9HxJfxGA7ZiBf8aAhRbjn/dfFRulqTxwN2d2HC0BLWqDlXLdB25rF++9eqBCV35BzTvhtBw4F5K0NBITAbqIjI83EUPjvopZQTN0UX1295Z+VMTJKRME0QCw1NVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757236794; c=relaxed/simple;
	bh=72KMif/Gu3Y+32QifAgruyQd2nfgzcACVQB4g+VK4tg=;
	h=To:Subject:From:Message-Id:Date; b=fe/MTBT48ITEx2/XSasnbQrlvDVGeusm/C6DFJipw4947pZyDPtsMtqK5qC3knLIysEAtmX8nY04CltC483tqsu1/QZJCrJhbyzmrF3VkCLKdAKzNkIeehcFXuT7AwDTs22aBSe4MPduZFc/qAADxmFKnK2Tn9G0vsGIl+eion8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEATbCe+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEATbCe+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22AEC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757236793;
	bh=72KMif/Gu3Y+32QifAgruyQd2nfgzcACVQB4g+VK4tg=;
	h=To:Subject:From:Date:From;
	b=oEATbCe+3MTOYgIc4I3TtyB6PAM5ab0eD2cf4KWtEvaJvyPqP7Ll01PAulig0Bfsa
	 S+rF+dsqUkBiT7CuxwL2lFFWD6ldKRZVQf0fsOMNauHQWGfXR5vdjpqwEUckIXXmTc
	 EvzdCdfTVvLBd9XkPWRGVge185eq46+bcRAKpj1SPW6AiR09Ya3n4G67RUtJKw38Mg
	 nNmYmbBD/VY8U0YYzECJn4I74pvyyZlcjzPdw8bV1wkqzt2DK03Ljc1awFUsDdvxCy
	 2YWwXGcCOBGZ0E6qbxbfiqwMvwYbzV0LizQ1ETZDN96jaQAxMId843hw3zRDE5/jqo
	 +CXk7w/2Hp/2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D84CA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175723679357.23490.12223379314877879021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2192d775d07802ebbf79853c923eea7cc448bc96ffc6d37f596e8245cdc0518
Date: Sun, 07 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757236793
