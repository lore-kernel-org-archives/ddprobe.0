Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3583215198D
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 11:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739531934; cv=none; b=RZBKm5EjuWcxPrXmzATN7la4wU1Ev4aciDrNUCVFVlXlMgDw87Au1aeOubqXAOVGjgcv09iExqCfYPN4j0MnVGhPhFz/+Fx3tibr42RrolMeJb5WOdKlsv1EBlnrcidzKwfREvuV+D+ILMonYh0sZoLxkVvw/Xk+vluXHjUboZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739531934; c=relaxed/simple;
	bh=OIeSkX8TQ1z5+7JocwbzVn/n+tii1vmjwND++wG1GDc=;
	h=To:Subject:From:Message-Id:Date; b=hFt1piHuNGZlLNlt3EO625OOBmJ767fCEWcyy0aGtc+CuDDwsxRuFEI3rVE3iIauDmf8v4KZS1nR6KwcZMXYm8YE/9rjuzmEmrFlosDA64SBam+3iD/lIIlex/oQV2W+O2g9qHLfh+jkmNGcS8DHpZqNp252OP1Jdwxac8c/yWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guG6KpWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guG6KpWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89CAC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 11:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739531933;
	bh=OIeSkX8TQ1z5+7JocwbzVn/n+tii1vmjwND++wG1GDc=;
	h=To:Subject:From:Date:From;
	b=guG6KpWU5pW9xwvbB9KU00rcIQNOO4SrMb9UdiD5Uu8jkcweHsh6I/h9Qmhe3QWmq
	 Nyrdjvx+ANHGLMPjjZlhlATiAOY3Ac0IqrE5e+eZGEBrQuas5Hs51UaFvJJAucEtBN
	 QngO8r00tUT3rSECNuUY/ERP617xXz4hB+R7Ml590QjgGTzKAoPbGP+GNFc/HX7yib
	 u8Ufl/2LElZouV+18scWqvG+WrrHB4U8GXfMn2XFk604AyPHz9OFr3hDFPSS2qskW/
	 aXYvC8V+MkAw397NJZ8t1L4nAIFCVDbuzDHeSjqbjp9YxfwmmgFc1c0Gown7sj38r0
	 Mileajm2IatRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DA6C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 11:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173953193360.3347.16841020579647193720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1fed57725ef6c5ec95cbff5d49dea3e8362f2f84e060c5d844106581d244706
Date: Fri, 14 Feb 2025 11:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739531933
