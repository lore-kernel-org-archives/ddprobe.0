Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDC62DEA6E
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765539774; cv=none; b=aQZHIXiyGiFQsMhdS7mpLnfehLk7mGcNj3UEloxcBdd6GAGVAfrN5yOFilUcfp64l0ph9MAGRF5IDJ2nNcphSuDqKoWO31QBexNyDydPsWW7c+fi/C8Jox2Io+61RD6Ytefmc6jwEYtbgwAqum8KqBsOvG+scEktzfZnK26FlOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765539774; c=relaxed/simple;
	bh=2WoJJUu20sa7NdWYY7OOFs15c+yRlABVYtaRSGuw8fc=;
	h=To:Subject:From:Message-Id:Date; b=Sbvs0Ta3zMZ0tzAwDVBfe1j9pcbnAP+qPeVdXZO2/AMlDFjV+8cuLv+PdTEdRS50tiH8K8n0PCuUxkjQpX9uchGPGH1HB1atQ023DfecJmwl7foXGk490nl2Jou4GkN0nG8a6k7m0dhrfbZJ8N/ro9hMxKDSSS6ve11LmYnnNFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSjul+cu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSjul+cu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86B4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765539773;
	bh=2WoJJUu20sa7NdWYY7OOFs15c+yRlABVYtaRSGuw8fc=;
	h=To:Subject:From:Date:From;
	b=SSjul+cuRNsBLmExowTduPYzC6yuSAC8hd8xZx9VCu/FJ9cy6/sHaU5VUrg5U8zVR
	 naylwXTTLKwr0K1BPVNOflwjsmG/1KcRsLhZX3l2J3Lkxxh4kXRJNeFO4yMCUwuvnF
	 psTGQQDYoX+UR8ZQnmLQiUjE344M7+/HCiRMYixzPFJgf0ofrsmSFPrAK8DEH6LVcB
	 BtaHysHqvMEPlKOEPPTjS/U3MeN+7RwXK+JF/xV2zLcSypb6lReUQagE4OMg5oKKZF
	 DkM2qN8/+t02R/TbasW+qpW/bNkcoip2tQc+GgpEphofX4ZIeMOfa3WmYiu7OoCtxr
	 T+BpSBHJAzzTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971EDD49202
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176553977361.1694.10180081484532936577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3809254f8b3f43c8619299f76fb21d79ba212d3c9b179ae245fecb1dbefafcc7
Date: Fri, 12 Dec 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765539773
