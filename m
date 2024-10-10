Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2514819ABBD
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728582354; cv=none; b=jv/yeTuPI8MrQS65aDI2rNpYefVLp62DacjbYftP2Y73xclS2nOyN2F8DwVNEsUcq1gzQhVf1GtcPHlokz4x1i7xgPmigRxi64owJP3dD2lzeDHISz3l50TPIro42/l0uKQZ5ZSmbhF7Y9t5ipWAxZNB70HdHImNaJm58bAdWMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728582354; c=relaxed/simple;
	bh=tbrWkhGV1LTYare0RW+wyfHW/77MZMWh7IhW17xspbI=;
	h=To:Subject:From:Message-Id:Date; b=HMnRjTvlKh30Pavcngf4xyJl6jypjOMXl3WlDAu7XrpAB3K9GGnMmVyZG0Uk5p+kgOYOJSEdaJJFaGibNsqcGOmQr2HesLG+5RbzAUWU4UWb/liVfyL0LFNQJz7pPD1zzesNLhhnnyqmS7/VB670W2ELVVbL5P3z3NcyypgfHcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRfSuy3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRfSuy3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53F2C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728582353;
	bh=tbrWkhGV1LTYare0RW+wyfHW/77MZMWh7IhW17xspbI=;
	h=To:Subject:From:Date:From;
	b=tRfSuy3s2ZjI/I7ypswkSyVjHGY1UVSRTKJgoYYnm8WDvJivGFqse8pJdgdZDBdtG
	 FtiX4KwwFfIkNobBD8pR4Azqd0C/HTIFdDn2F5tSHykg4iuv1YF+fcb9HClDJeIO27
	 h/tLwpxowmdf9L+oJLrKHl8HiTU8vxaq5hcjZby5Ot0/kBqJsBXZWC0bvPQme2MMeW
	 GQOpBLM9LoruvWm/cJe0dGtoPEBcLIHeF7hr8+TBOi5EHCc/H3Ky0cp2FTwz9HTZU9
	 UC08HlE+DzfyIPDSH5znaVW3wTfPuWBItt2aLduava86vZsQ/eXy3RYdv6CfzKz90l
	 +wPUCdynpZtfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F35CFC5E7
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172858235358.21201.9727213423742209390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5366052a943ebc759ce53c96b0d6c5bf98bf406fbf5dcbee21dd9ca8ad060910
Date: Thu, 10 Oct 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728582353
