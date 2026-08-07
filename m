Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407D2331ED4
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786135834; cv=none; b=pWgUNor76CtQQPrK/UiUcXcT8BRTwJXl65qF0Y/Q+SiFyvJIWc0XHzi/PLSLQ6b2xQg4l1wH42ULq+ONkr5+HFAiTrwZdLcjKyjrObee9Cx+9+/D1ESbrK2yRSdFk1jji2YKYE7J1d91K3KtLI0V9gbd17SVRG++r/HYhM/L2vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786135834; c=relaxed/simple;
	bh=SDucgUA/z2K/TLEnah+vIuFDYF+v26YV4azcQVT+7T8=;
	h=To:Subject:From:Message-Id:Date; b=kNtCThn7CWparZhtnhkFBFecDUuU2QDvHpGB5bf2LZpE/onw/6GLnsM/N7MWTD/J5VmnkMruGTjFmzcVmqbw3YaAzDrW8q02Q1FUT6p+0Y29Xfm5ZVpZuwHIs6XilSORRzC/kZ+coWO0XESFpxzMlxEocsq23zwnxscJN1E3wQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFK/R5D3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFK/R5D3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD56CC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786135833;
	bh=SDucgUA/z2K/TLEnah+vIuFDYF+v26YV4azcQVT+7T8=;
	h=To:Subject:From:Date:From;
	b=HFK/R5D3h1alvmbWdegTsuUDV6ixfl7jb29Hc6WKelQ7NRT04EpoVgKgyMiEXbuSI
	 eeut7I34ZL/oGuelBd8HythcPjceKgqlENWYowYixjbpXGVS/Hncm6c9nq2bvmrfmr
	 2jK0Lxj8MkK7NNzf/YxaeONuVxrpaFTEipnB22cLmsaGZ4DjC3wleg0xLxKBFfkZ7M
	 cSBx1wTyCr/bCVy027+lmsE2VTGrII5O7oEjZXgR3jYJLoriQCFGMktX66DeA8XS+5
	 1wx0CfyJoUDye9F5p6Pt8pk78T7ZWEAmRatjAog77g8KN/QViv0znFLuA2jPO5gpYv
	 b3gpZTGW06QeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CAEC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178613583368.28809.11172897696356014427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea8c0b1f106d47724073db5a6d6aaa99ef9051b2c97cd66f2e7a18ea6d7cbd18
Date: Fri, 07 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786135833
