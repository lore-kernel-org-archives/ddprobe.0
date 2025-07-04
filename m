Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E0A7D07D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751638795; cv=none; b=Xi2mJ/+uxwIvqs77Fn5dwnlgQvdTREMqMGnwy4STIThx4GDOEERsJHaI85h/ZPV7u6ZfF2Cqz+e8YiBb57XzbDOFE2/6CzX7jVF0SgbHaevgB+PKlu4zNHjTKV5Fidq22p6iGq2eJpAGPl9rvPfvM2e3RXLkt4nHdHBo+aDNYqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751638795; c=relaxed/simple;
	bh=15JQ1WcUKLOCmPsLVpc9Jbus3os+AWR7D8/+mp2bAwI=;
	h=To:Subject:From:Message-Id:Date; b=mFHvZ+PeOMYrY+jf5m0auUnOvF3ft1LRpZyxatLgeA0XQVYOBAaRQ50lRLYSxjBKxJ/elwtHv0gnHiIlG8EKBbfsfEKV6MlfiVIjCBxpqv+VoG6LzV/StRzNHIaX+7WihRMjKRCy2AVXmQJeUd1ObJIeT2dYldMF8AWwcc+7GSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgRnLvgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgRnLvgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D16EC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751638793;
	bh=15JQ1WcUKLOCmPsLVpc9Jbus3os+AWR7D8/+mp2bAwI=;
	h=To:Subject:From:Date:From;
	b=rgRnLvgnI+WJlA8K+ekX0H6Q2AyQhX4tWcNdepyxvurFOAqK0DFtzJIaseCi547BN
	 OoavT/EOLCf96Kx+jqMaX4da0VE92Mzk85egRzKTeAIbj/JFb7LP6yzUZyTsL77GNI
	 3vVScl1CstKMsEOKG4hB70EXQnu80h4tCFJ3aAwYLbOXrv7jDJdzuuL6W/o1EmJzEJ
	 yoG1V4q+E5vCC/D1pilx084OT9QoV9aMPp45VAil+Yd19Dbn12zsZPFlTBPMyrHR4r
	 3zVOwR4fHHScGHhz42kl9sdMa/D97o6lTBzPRafAL9vfBwHKIekydDweCQ7tjCuYoF
	 uL2GXKtk1oPNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFD7C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175163879357.19553.9113426820495718820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c415c9da2d0d2996153f3c496dab37ffd13f2393a0be767bf329136550d0f6
Date: Fri, 04 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751638793
