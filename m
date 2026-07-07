Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3C53C060B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783417714; cv=none; b=NweX6ccaF4Cw7f0rQNPFiOxtTOkXm9P8yXe0Jh+aTrJAdcgmVklRxRSvYHqgHcGu5+62o3Lf/6N3wtlySnvmy1ppX2aRQBk/5jfjWISRpsgFXVFePzbJX//XeVQ6WIh8WtuTJl/pO0oxsUBp+16YTWZG/QozUUL7i66mIay5HSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783417714; c=relaxed/simple;
	bh=H+/kG146Etq53B8W+e4TesjNh9b/CmNXdz+iAQsRg30=;
	h=To:Subject:From:Message-Id:Date; b=AShLz375UqUK1KNv55bdOwlgtCyrddXX9M7uO8HyqwNdWtIJ4BiSFGP3J0amgHxHruVwjQtEj4fYn/fmwkMEhx09wc0pEaVjVEiXau09F6qU48yrjitmvObNCmif7l/mRzVsaPdkC2fsXjOvAOqBs16v+/oG+BCmv24YmJMv2KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsIO0fZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsIO0fZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF245C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783417713;
	bh=H+/kG146Etq53B8W+e4TesjNh9b/CmNXdz+iAQsRg30=;
	h=To:Subject:From:Date:From;
	b=gsIO0fZQ/5/g9zlv/SKhHAIB0f3dEzYxCBhTKXtIh7d6qWB/NhFNno1S/6KI7p1r0
	 v9jsbbcF+YsvDU8gs7mrTTW3QIxBg4NiYYHwyWXTB+MA5WkKeCVfhk0CsAAJAS2efy
	 sK61C4TzsTogYnpw2CZ/eKRXe4etVH+RWtmS1X/pihuDHuhLotJKYRcSWmI5toAWV6
	 QpOzhP7LhtK+YAdZu3BcRoOlJn+YZoSbFaeUi1T+rZ5zwwidSNdug/fta9j9D7oHof
	 c3rIVTx/MzSVGIDtv4//VRhE/wlwpxnjwcWrL0ikVEWc2Y1rgt69BqGyx0YYvLRYIm
	 SIRIStzHW3xaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3DBC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178341771369.17558.7718207736956205213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee15bb773905dd20533fc3c6eb8986b7178a938f7fd89e21076c894eeb61dd5
Date: Tue, 07 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783417713
