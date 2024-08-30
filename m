Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2782014AD38
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725062154; cv=none; b=twG4ofbLP63pjgYy9Rvonca7CwbCK+mqTk4LioANZP97Q/ComDMdgUshS+8PIC8BYWEhl5C9zdFCFhD16ebEvmgj9K9Z2e4z2pmJnDM4ObA07tDsh7ffgMXhSGEtFhXYf9I9wWki2gflOgV0eJqcdcAjlPxGCLI26WV0Fa2m8Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725062154; c=relaxed/simple;
	bh=bL7KxvuWLXmsGylgYSMcu3v+77qX/OVoT2GTtdFOHd0=;
	h=To:Subject:From:Message-Id:Date; b=OjdjNwxfwEhs9INVwCsrDGDtVXd95AIgGDn9O7wPvWQNYDAQ9caS+4uq/HZiHYp2L4uxo6XdWheGw1UWTrASIwyyvq2GoypuvoINifGep3BzbudNGOWuNf3/+EE90VuoS/YnMy9vXQnF4LWrRU4OYofT9MOJm+dE8RytnqL6QHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4ihUSpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4ihUSpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3E8C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725062153;
	bh=bL7KxvuWLXmsGylgYSMcu3v+77qX/OVoT2GTtdFOHd0=;
	h=To:Subject:From:Date:From;
	b=W4ihUSpqDbNCHQt2MFE+SVsOfSe/rGgg+fFQ4UgAM6XP69S5SIOrurZmsl0qYF/ON
	 edc8NHLypad23+mEP+weHpAFxDxKBBkPa8hleUkVzCpr3WDRdizSjOlPlV3muuy0HE
	 nkR4zL/yx1VqVLtXFGyeDjqK5WuDxZs6VOnNPbkR57+/7zcUCGYvSZwOh2n8ZZ8EgY
	 /kuAuEn4KiWJhrABR//vhBnGdW/G6aPDLODjHIJYaBuRnEwSIzfzJyxQZE++cdmk6O
	 MqEvdnKLG4TdzT9iKm8YuYIzXFRIy7AnDdlC3ZLFTVkGFRL0w09+ZratSPCRQN2O7m
	 Jpbo+t85z+bbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E38CA101A
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172506215359.2012.13224340147190781250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687061d0a7dfaa0472f41c3aca448f374fc9a1a082774eeb657788bb16b73fe4
Date: Fri, 30 Aug 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725062153
