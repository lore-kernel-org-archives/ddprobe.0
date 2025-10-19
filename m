Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A7626ACC
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760858994; cv=none; b=jzEyFXma0H2kIX6I7gPg2dxQao0La8ZF7qBkb4up0hPdDsD1FYtoxtwvYjp/B0DNurgVlMfSknr9Bq1ToFPYXFT1GPaRY2ErDZ6/Kr32EQPWVFOi69XXIPtTs7XV+lD/56cNIWpFPpu86L8vdPSChrddHDODL63pv90EcAlBRnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760858994; c=relaxed/simple;
	bh=TbDTAokew6nHTEe6aOs5gAoJHTu0QfoIIzwxhW7vuUQ=;
	h=To:Subject:From:Message-Id:Date; b=pk0oL/RLIjsPgwN275KcarUaxjsUEOsfWqr12OeupIQn+I+vo/LlW7H3kOXxDlIkUa4boRkUf3ffpmnNYl5HylYkuqqA3qbONSPh2y8h90gyUyuDzkxat3AisidGxCiB2QQ3NQK/tewwf04hmwKIkryK5XHV6N0Vf84+BLrta+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKX9YlWe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKX9YlWe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF323C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760858993;
	bh=TbDTAokew6nHTEe6aOs5gAoJHTu0QfoIIzwxhW7vuUQ=;
	h=To:Subject:From:Date:From;
	b=cKX9YlWemT2mfyPhH5jLtqYnMl5JJ4pNhdAfXEGO9Vh1PW34le8m7/SJjdiZBg8Eu
	 nmOM9wyEnaYBDHbFCE88Y0N6WjrLYmbT/6LytkcvcZLpA1EMmLfx3Ojy7H8g1Cu/Hm
	 j0P1DmvJ0KbEf87x1uhMlLRDQDW4AJj1jiNMxlm/uTFuLPiHzDpbyrSs/J1sKRcwDs
	 rMgI3f2/w9KRoIrxSe3y+hzi1EASjDQGhFFUnzFx3jJulL/J/k32sVm2J/TPyKzuq+
	 cUQZzVT5P0JVfs9dZwYaIfUE78ZH5OK/QmxOviOrGvxARJYIkcMLgmbCwHZEPUc13a
	 TB8mM9ul7Ah7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC35CCD1AA
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176085899359.14323.15786912224333487202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86d9f286d43116ea76178404d2aec1f383129a06ed1dab6575faa3051beb889
Date: Sun, 19 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760858993
