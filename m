Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484A7335C0
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743116995; cv=none; b=ElYl0Z5E2jsG3dngdOnnlviwOZevVHU8x8JVAeF7m1p5PFp0AzQM3jnxVqxM8ThXSMmr7QeI2OazFUeBEyq8tk7Z3Mi2FDpl8uVTpNIB1Gg095Mz7CCL1s7w34L0DGiKzNkxvk1ReYFVnBj2IEJpH33oEF40nzLokl3cfAt69+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743116995; c=relaxed/simple;
	bh=m+bnkEuUg/FQgJKgggUu1di5/w0hU911R2M91IRF7CI=;
	h=To:Subject:From:Message-Id:Date; b=Almvzr1tZeh0QGo/kojdDIM2fXedSVs6/gPYuRCQhrLj43zxCe5Y2yS6cOl9mgP8NZanAC1rkxABXRjcETgD9K4S5y1gUmnKHJHmKTeQVZdvPN+lPs+5Y8QGBha/edX/XQXyIrSyeWqugCVs6I9j/sGiNO11M1SWEyes4rIF2GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/4Xe8xs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/4Xe8xs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C18C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743116993;
	bh=m+bnkEuUg/FQgJKgggUu1di5/w0hU911R2M91IRF7CI=;
	h=To:Subject:From:Date:From;
	b=Z/4Xe8xs0cOkaCM7dyjr5fzDAcg33WGSeBFglr8AiXFLbF9AhQFii1QH/2wlu+Wll
	 O8bJ7tXPL8sgKvxFRi8/ufZdvhjEjCmnQQKTpPucb19n3qX95vKPlq55xRNvbjZ1iQ
	 37q0xVe6WE2pk8YEQ/pLBfUY+2+5nvazsdsb/tLexix78Uh1uiPTUgAMZCakStVqP+
	 zh3s7wmvnY1+wAuXnBZLlS3sM+Ity58QFJTR/cZyG+7952wUiJ07RqblRFEmkjdWWt
	 MtDuKN7uHngaKrvm24Ep4M33gFqOrbiXtnpbXISC1s4jRtaq9MI1/s/Hxfv0Tyw4lK
	 IajLyMuZdfxcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20F5C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174311699365.13218.7507611229511700780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac4eab188c34d03e1913b5626003a324762a42895e89bbc74811d6093fecfb90
Date: Thu, 27 Mar 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743116993
