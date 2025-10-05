Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDAD1A58D
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759678795; cv=none; b=hiWLX3tdOeCRptXSnlCT+mbjsMCBrJ0HsK0HJDSvWi9QCFLoWeJ+eOgsVcrYyw9JxJVy8v8HLrAw5XRVwFn4fHZLa0qXQo+MOYyxw9FXx1uW6BU09hhJwZ199yobBQIkIZ9VCpx4ylIXurmy6aqDbj3u4eqNzboTjY9wFD8Elis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759678795; c=relaxed/simple;
	bh=0+QzZ/0PSZUNgWDa+Du6Rw0+vp8/N9B905X9qrlWVlI=;
	h=To:Subject:From:Message-Id:Date; b=ikcciwUozek625bOFNCyRbvcg1UBEKwfE7mkiqy3Qh/SjdfF7sBDXA62IvqNpSr1BUPQEnhRq1TJODXCa/654TaXN2xe4S6CHHXUqaErQIkvi7OGzpg7Yw+kfjjXZ0scDPYROkd2xQUJ/uQMIyoCXNE0J/DEyd9vRgDjZyH1q+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTD/mCzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTD/mCzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E02C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759678793;
	bh=0+QzZ/0PSZUNgWDa+Du6Rw0+vp8/N9B905X9qrlWVlI=;
	h=To:Subject:From:Date:From;
	b=UTD/mCzVMIGwFADMSAYs/Cjg95OrWwrXbX5N7sVeekv1Xl1iEbjFgzjMvfWGR8uN0
	 GHwIDekdcK8376BcfTkPMm8nVs1nYcJ2a5vVGHbXzjHLrPyUMuvAjNGWt2n2qCPqbq
	 7TgOkUq8k3kEm6goUowPtQbaZD8jHl4xzDFQpenRP6hhKNHxfPuepvOiYvtaqHRADo
	 fwclAv2Roy5Cho7XLHISGPdmzQN/80iGsefLiIq/ciGMKRYYs4jJ+Gv+otFIRxZ5w7
	 8gpzdiQGF/TN/malml9gOvfIaH+CUxpAufJyw6ZEB3Jq229RhHAzMDR6q+tIC5TWW7
	 fMKmGcdUKSj0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B41CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175967879357.9174.10633595220727616340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f72c794eb65d2e43ac7c9a54896a8cac1671ad68ae38ab082d63f433238dc63c
Date: Sun, 05 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759678793
