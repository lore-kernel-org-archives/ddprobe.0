Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1B923A564
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786305634; cv=none; b=ncAEL8qznEiaf8/7MDgOlxyDo8FNb0htJIpjx9VvlTAv8pFPf/ZwfG2FGGV8mST3fGnSY+Z9K5H5reso3J24yskgmf/Xs0Pxe89YGgPyoMzooaQTuxqfKdkAPJP5wFSZ40bihG4o2YIhtk3TXlliLGNEkLgAO8ShoSih9i9jhJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786305634; c=relaxed/simple;
	bh=QVUygp/5uCyyg5gJ2nlNimcBh63yolxKPThksAZyh+c=;
	h=To:Subject:From:Message-Id:Date; b=ScWnGQde4+ZQEcTeE1H51pVcojl64qek+lI29lavHBdPVGqwLEA7LAy2/p/hkS3XlELMpG6Uj20/SDn4v3L+Uofx86RgqvYROxlx2609DeNSaCLXSrnOicemEGOWeep9hm80fa+fD2JCggTT3uGE/9X5MIS7jFOgDNBp+TnD1wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRo+FyRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRo+FyRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11A3C2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786305633;
	bh=QVUygp/5uCyyg5gJ2nlNimcBh63yolxKPThksAZyh+c=;
	h=To:Subject:From:Date:From;
	b=hRo+FyRBkRq786Kmbl6cBdAufHhKMyoazVyq5pmHgSaQcgiR9MGJjIIrdIsufkVwi
	 43CJPwuzQBCvN9L0tanqFf00PIb2SryZSNgFZD4rcjpmajWtcsiQzMB+Fn8ZIltuf4
	 6TBJR+XPN0xN8DWuys4K72Ec6AfqyyAeio9x71yj78IEY+XCfP9iCDOU7Z1SRvXBji
	 sUGF8rQ5t5ocPtJn0zIyFtrdbKTsuz1WbvgTbVhx+jK3jm+cmQ9koO0W8wGJakP9PH
	 XcUsmIkdbUgdCxRZ4sJNNOdNvzv+ukfUgAkw5wAxuZV/e+lWmB9nHVyL/C2nvbZ+/s
	 wf8NrIm0FFecA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7A9C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178630563370.17442.5090201732363139711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c5bc2cac505871475da59ab48524d2bd1736515fccbb485230bd80c5afa966
Date: Sun, 09 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786305633
