Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F6AF34EF05
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779334235; cv=none; b=qIjb30AhEkxl4txOz0ZOPpVPdIyKg3loiko/SJ0AsYrnIvrZPZODy41puPLIVOrVTiZzUTHhJWjK9zdwewIRgJDOd9ZPgSq5a+17jYaReur37rZigdc5Z1BdLcCaGYns1g1C8I9zgzJgs3NLKFDsi+cy7KqGajHSZ+rqUgaIjGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779334235; c=relaxed/simple;
	bh=Wnu7B+7E23Rw9IkMPRCYP/olv1RPzZAJ3IoU/Al4ca4=;
	h=To:Subject:From:Message-Id:Date; b=Zq2QVKsbEUiTfsFmYr2QSd8ywcUUgXzvEPr7z0BU3T7c/C/Pyf8WchMK6L+L2lZAPx+53E1Cxlk2+675z7nOCBW4io0JUcn9zIq24GDp03BltibnGoJC2WIukCMF4c+z/ZrPX2mua+aSfs7WDrlbd7XPGpNNon5R1L086FXGqbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBahYEXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBahYEXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B55C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779334233;
	bh=Wnu7B+7E23Rw9IkMPRCYP/olv1RPzZAJ3IoU/Al4ca4=;
	h=To:Subject:From:Date:From;
	b=oBahYEXuCTKpdpY+z403Em0dEpUTZdj9IP7VDaf9DpEUaLqJ7PP4jutjj7P+qeHyN
	 +5QWqqbP3TWcPXIAVZaj+bN0AyI7m3LPOX3eaIhaZ50UMvwhOug+d9QaGC7zUO2kSb
	 kvshgTHyANuxSv/krlxpqh5Z5Jgp6PhiPheTrgz5HDHZIVYJ6mT8NfNoK49LDMUhH8
	 GPwoMQ/Lryo/H+JXO3EmEtz4LqABGHSE6CU0RR/V9q0sE33/OheupZpoNVaU0aHosg
	 5g9aNln16oH/zi3d3+ey6jpzZVl0WooEBjTQez3OQDIGSI9MYxIhykPKX+gYXrMlgk
	 nUc/clcH1Faqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6244CD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177933423373.31836.13650697042018606282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1d1d988694942cd20da59b7294b4c44e726992fa1b3d914f35c05345c81165
Date: Thu, 21 May 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779334233
