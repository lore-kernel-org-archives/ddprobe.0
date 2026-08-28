Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94C141C69D
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787936434; cv=none; b=pp2s8dSpH875MiyoSgO+/SyLHE9+a6KHQbqVcR80mcXe1CunH3AqW54BvJF4l8CuT+gqtlygr5GECvkfRpLV4P1/tQ+CrN4zd98hODq077fjyo/c8LYnH27iTjHxMZ0XEdFD0XuMeTRXo3Xu8SEo/hZXIFlBjGaHEV+XBpVhJhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787936434; c=relaxed/simple;
	bh=V3Uq0Aag5ZsxostM7K2GdDNf8sIVXPufQcm/uwDXleM=;
	h=To:Subject:From:Message-Id:Date; b=agoFfgIgSa1zUAGVvwxgEWSfiehyWlZOnecy0HAYTy4eJ/GDukNUJKqn3s41GCjyob9JuBnH4Bzp5p29wzSg+0iyPy7cGIFIhXpooDHALnKX3scHwz26FqL+aXStNF7eMtPuS5vIvX+VBhqchmvnmll3uBY19xlCaWHenydkb6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FStHG78M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FStHG78M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AE7C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787936433;
	bh=V3Uq0Aag5ZsxostM7K2GdDNf8sIVXPufQcm/uwDXleM=;
	h=To:Subject:From:Date:From;
	b=FStHG78Me4HnpRl7BtJ1/NVzPAKipEPkuF04Rbpwng3plUi8p7dJYOYGUXtu6zeYR
	 d08eDj/CHPRSuAp/S6sMIuzqK2tnENWW4oO0CWXFb8jn+2/DJSmj6s2elPq7RRL4rc
	 vPrcJyQwbOSS/aOGzKwenPB34huhlSuOmCRlH+fa/hVLlKYl3RqIFB+dVDm+MmRmaD
	 fPiCgicsDGvi8GGXwGGvjCuADH0H8rgsET2Cc6BACTUJSwfPHlAbsrJC50CBTcrWcx
	 1PauHMWHyEFs4+gPMxPeJdBjH3aO+qSHVH8b9+qZHIbBr4kUq9Bgi03VKVf469zJF7
	 SJZs9T0Eng74A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE435C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178793643370.897.3070462142904563312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbeb078c66949fad770953122e42786dbe245a344fc563a3f338c2dc023c2503
Date: Fri, 28 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787936433
