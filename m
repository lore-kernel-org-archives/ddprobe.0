Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A9C38F65D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781160994; cv=none; b=nco5atZx0aO+dedqQiiCCGR7c4lHBYQnobq7KScsohBPpriclmduOIYGf0zMxsi/uXq7j5sqGGiG39Yp6m+iZh29lUYINoSmXEdplaTwNudwv/RuTs19CL6dfRzP17Yx19qVCzxbeLPSQ6uamY/nzhSDdocFROIY69odQTqC7Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781160994; c=relaxed/simple;
	bh=On8KJrM6wqs65gDiywIc5EKZkrlVGjzacItkDVn7P9I=;
	h=To:Subject:From:Message-Id:Date; b=oMO2OixUjKXBeoTxe/AJ1oT6hkbdCOJTy+wXr75OG/DsWpqZmbHTeFu5nwH2iIceXKjKdIuNBBTaL84JVGHOTv6mOlbRrugf9LZCnNVZX9Efgc0jilZjg09MKrxr/rS7luCNwk9WKfG1zLJfSVFuqg7N42XF1P+HIzY8r1UzgZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuZSt8Qg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuZSt8Qg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF3AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781160993;
	bh=On8KJrM6wqs65gDiywIc5EKZkrlVGjzacItkDVn7P9I=;
	h=To:Subject:From:Date:From;
	b=BuZSt8Qg4546t6JXQDy4sLc6Qaap7sxnR83/s+GYCAkSBrA4IjsJtRVZqQ4L2audL
	 +T5KbH01TEMlWaUxPj7eBCk2k1g1263infcM8nCKeS4fT/BnJ5KjV7wCcEYevh3or1
	 zCB+gHU62teteG5CeVgRlxi1CaTWx3ubb+//38PeI5X1aZKBgKPEAO0rU3cUj/lhGf
	 TSH32e+TCVLjCq8tqfU7KDkLJkyykeSa8SN6efQffagOzv0+2QLQ3a6xedOlKWNLea
	 NWAvOshiGMTVFo+yJOX7nfwNAoTBCfbdBVxCpUX/uPa++etnBa+6DBgOkzxKEDfGmK
	 CNiPXUXjMk2Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE785CD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178116099368.4074.9912342336968865576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32cb7956cbd477ddd27de0c6548b0b70558f786212cfbeee6a7a09385d68a846
Date: Thu, 11 Jun 2026 06:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781160993
