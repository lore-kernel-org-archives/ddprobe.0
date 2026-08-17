Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA3122CBE6
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786976434; cv=none; b=iwFnpNX0bcOywFE1Y4Z0Pf5pHITguVaJfGYgMZrukHzPmLFZ5TrVeR5ChWjIqK32D5I3GK596BH+e5VgSixUjFlA6E/TjNBubRI39S4foHh53D/AnQwywRW5PHh4fD7zpyYaoR0Wu+IlMT2LvAGAEJMEkBjK+rPIc6zfW+vz3GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786976434; c=relaxed/simple;
	bh=tSv/IIhsyz5KduGv/RcpM+VChiIEJPSNbbBSrbbbh6o=;
	h=To:Subject:From:Message-Id:Date; b=bDspwRTukwAgVZOCEE1d8RZBiHsaTweXqnBNVEYmEn7z/NXitHvxdh+jj37FIx6Z6enjXL5E6ceZldi9SyfWHKhDyZokKJzmDBwhJXC/u77WebGQQz0eNOF6MDzTnNaAijmvgMzSV/vYBXk5ogd94pW1+swAn3YGQc87cMTX6o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxbDJmII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxbDJmII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EA9C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786976433;
	bh=tSv/IIhsyz5KduGv/RcpM+VChiIEJPSNbbBSrbbbh6o=;
	h=To:Subject:From:Date:From;
	b=jxbDJmIIVEhFgWoUfaow+O69tUJAPqznVYjShv5R4QlYkUCQN8/EtiMdFk8RmmEoI
	 Betyx13JBg22Y7WOZnaVAOBicZnSYTWQiCmeHe7TpLMfJ4tqiGRZkiXB8HHoe5W0P5
	 g9JlTN1Bq2vrGKtq73KB+RACc+oDg2RBG9UN6Gf+ED/Qp7/s77rRcqk8nl320LY1f4
	 VQyiH577bmZKiVO2Hss7ks1NC19aCDtzKdVTbF4F86JGAFA6/EeOdLsW4XNv4Qb5jr
	 OqH1u4Uzq/pQTrVPptd+c5wDqzek1wecj7wXkgZEHNTahPfNqAe10qds0o3em5t4au
	 8WJw27iMHxyyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1A7C5DF74
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178697643369.29844.16460589838862199656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7bbc47968807910f8f3b0a3ce07fb7d15c122da41c166ca7071d4b492ba106
Date: Mon, 17 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786976433
