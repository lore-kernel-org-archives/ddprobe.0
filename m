Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3BBE36493C
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790815234; cv=none; b=jI4B3h78UEcbj1nD1NPturQNgKlGg+zMYPI2+Fih3bmnmsda8hjWjygkwiG7SoNvWT2IuUXlgkiAdOuM+wXITJRs2LAvd+oE0nQny/IX8PtrXBJ/nyFS63MIwA4efEixUkGc+coeP7bwFcCXEG+2I7svfp97z4E43GaWQ4ps7vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790815234; c=relaxed/simple;
	bh=7bjSix0jpFlvjaYoU8rEDdy3omDlox0GM4FL1mtUBiU=;
	h=To:Subject:From:Message-Id:Date; b=IQwNUhwif83mo/R2apTh9JTDiEzZgvz00TiFXpEyCAwsqL5Qg93XcbC/3NMXyNWEbMmARktyYOUnZaBH+gAyqvF2wFXGC2/9HaVWTKrc5uiHmyeaQKev28KDxjuNPcd4bHsErA8cFQ8iyyiZKz/efdMnUDnL38kl96Z4z4FLoQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDRWFEsL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDRWFEsL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B21C4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790815233;
	bh=7bjSix0jpFlvjaYoU8rEDdy3omDlox0GM4FL1mtUBiU=;
	h=To:Subject:From:Date:From;
	b=GDRWFEsL5zshgH81mW1D8pqFrsp0J0Mb561K6pMsUncV86oCkITQFZIiaefF2IXyE
	 7MOGv1UY3cra9R+wUvF64jrLhD+bvItl4y5vkId0vzJtf7aKYbNu/prWIbdL9uC6aK
	 Pf7LV/gg3Ku+nvFOt7aL07SYRzarEhCFJ7asy8ij92TOu6LMAVR8LH5dtauqueF/L3
	 g1urmwih8INdp8EEKJQfxG9Ka3oStsmJpmuhZqC2zpv8hZGvADA851nLwwo2IsQarf
	 xxTL9XKsWT7ZemBCfkmab7K0KNAPxsks2/MVX84I+YnEylEtqqAtUjBKF+IXXvearP
	 JNAqhQr3KOCLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD3ACA5FC5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179081523368.3122.9899671408311476227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 006386e7f6c3ea0a2d2df9c410729cee0946f2331819b4cd2b5f2381a47b7331
Date: Thu, 01 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790815233
