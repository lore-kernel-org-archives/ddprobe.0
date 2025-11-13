Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B0F36402C
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763052594; cv=none; b=cTWndMoMaF7cAjRoyL0qLvL2tn1gd/YR8PUJovKPpg5oyEe0D65SCenLuJpswose9+yk+stUAi1bryJ4Tqq1G4r+tYJlf4OeA2zeWdncBjR5+nUP8SVnLRkRx9sc8yvuU4nxGxQOsPAjjUXkrgjnfYKyGCf6VdIodFNdCpMPZ2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763052594; c=relaxed/simple;
	bh=bNWry/MF3yxmIY5w2bSBetKSSFdTKgC2zl5wQtDWT6M=;
	h=To:Subject:From:Message-Id:Date; b=DoDpcLDmAxTPGMr5Bj986DFhR69WZ22wQr5sxzXnus/+uWTF8To3c72w0f2DwLw+a320Y7GFVAKj9zdTP94W/z/KcXT0c61zFKkkekdp77vxlvb0yumcClQ+n+9aDuSl+eyclQPWrg3SjmM8ldz6HsnQJUZIkeyds8jt/nF60f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8H5ToqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8H5ToqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04B0C113D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763052593;
	bh=bNWry/MF3yxmIY5w2bSBetKSSFdTKgC2zl5wQtDWT6M=;
	h=To:Subject:From:Date:From;
	b=J8H5ToqCQDHCf2cMEY4ZYr43UNXLhfP5Ps2gNPdp+jMmZ9gqebBAUjwDod59fguDG
	 AmBL/8YbdwBWjCMegmHtuXiqMcOH3whOAy1AedxDpFAESsJOGIq9KlWMaM0pLcJz/t
	 JxiHBCsisg7NS/pJO5pJ+dlCDPxu6I9iTI8b1geiSVMk+XfUEtLeKLEHEveThMo+kS
	 hOoKc7mT3T+udToiNZnLrg4Dpf4owTUAZVW1cpLLvRRF+B52bLoK9NyBTpnMLxM/RX
	 HqIE+CdAFkmB3E9Peat1ajHgo9EDe7DV36Cy2a4kHxzzG/LaYKU4e7Cj32xg+njrWy
	 omww5dKuaDKnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90778CD8CA8
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176305259358.31010.7481896376742446261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f95cf6f257837b86e09ae0d79542c473c269ea877146fc0cd7efd5ede0df4a7
Date: Thu, 13 Nov 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763052593
