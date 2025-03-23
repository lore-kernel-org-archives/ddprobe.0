Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA981DFF7
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742711394; cv=none; b=INh8nJaX6qmpqabCd2SelcY+CqhoXV4yA7lXdHI8rMVc/RiBjZ9n69DPf+XlWvMaCJPumkcNqivq1PhaEYl68VYanG11ov0lQBaugaJoBEjW9bhvF9EdrA94bbdPqmBAvGM+VpjJVRiBF/t9+q2ao5o4oRQ46qu/ZHox/mWsuwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742711394; c=relaxed/simple;
	bh=P+UdT+DErJUBGQzZ7ZeFNPSXVCjUgPWxpY+J1loNGQs=;
	h=To:Subject:From:Message-Id:Date; b=ojbp7Yey1C81zsBPMet8z8//NeGt8cGxtu8mQWaIQa77BM6vMKYFR6Fr4gvRR/TyTf4Lf9HJlwF1D1c9KtW1ZpXvUnGyMr34Ht0XeCMR/CJmPWY5tuPC/Ox1Bgd0XhgjTMkGnw8CM/3JhpE9reEAbggg5dHrBktRnDiLxRD+x8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLQApK1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLQApK1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B1EC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742711393;
	bh=P+UdT+DErJUBGQzZ7ZeFNPSXVCjUgPWxpY+J1loNGQs=;
	h=To:Subject:From:Date:From;
	b=rLQApK1UJYptpqtk3eVzL2z6wj0BNThzPC2er1/4eDUTiQl8RIFEISBH9rmlumuou
	 ZufItFSLqwZQI+B844a1nQ8ze9FOFui2DY9UMmarLzCPX7hp4erEpdrQjtQOfE37bl
	 ADea+892wvlNogKxOiYCitZWWA4jzMeBrRUa/DRMgDWP1rvBkcyDooK8Wjy66CtBAp
	 ylJ1c9eCpGvXZ3ARlf+NMMn2FXoV3+aLv+IPNXlOmeJXz/tlZVB0FsPRnDZMpMoq4I
	 vugT/B0pd8CnvkSkLuxqrrXRMCqvwcJMJOn95wYKWJ+ujSgFTCmKNn2GS9OHXz8ghf
	 gherwVsN+0agg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A47E8C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174271139361.30829.10702071956446649643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703c5bf0070482f57817b93297b6e4dddbf3544e5d1ce131060c006375296d7c
Date: Sun, 23 Mar 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742711393
