Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264632772D
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776708454; cv=none; b=RJXRPQKi1BdQSx6hzqet72FIQXjWdlE0D1I4FdIHCFek6+I1UNU4Z07A6FYCTBwdF1Hzr8tNizxgWuj6SrBmCUmyI/uY8bWPUJJpD1lbgp5b0xxZlyldwfk0OY1UphnyM7W1fq//s29cvT/6+yyNb8JohqwvmTx/GfQOQQoZDsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776708454; c=relaxed/simple;
	bh=pOPgUxmSU0ovU7X6HFTSvH2856Lw6qRH5A90X1cXoTs=;
	h=To:Subject:From:Message-Id:Date; b=oWJ4HXuOy8wXCdN4d0MxEXpHK7ro+inJ8cC0hFoBVSEzdtsaXvOt3LxD89oo10jnF/3JCYn69mD0+MQ9KdRrQANruNvcgSeVhpIt++Jc/53eOjMA7VPye8rcZUsKMCTwoYpXJJLWip1LTNnZn8SEqAzQC0nNDXiNWxrFzPAS4I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dElbMC48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dElbMC48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F1CC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776708453;
	bh=pOPgUxmSU0ovU7X6HFTSvH2856Lw6qRH5A90X1cXoTs=;
	h=To:Subject:From:Date:From;
	b=dElbMC48F9VHrf+pI+DLk/8LK8TOpVT8oMpfWqPhj9VjSKSoX7V62YZgaxjUIRkko
	 dIQAMPGoCkhxjFSCktR6Hj9Mb/41zuIWhXPgni1MCDefMb68Qhlg2iPPn8YsRyc1KP
	 RLqASMydy+RvyVGqrrpgNcXUeiVnCZ7JhLrHyPFGNYXZkF89DzNb7DMJNAAhlbDeg4
	 phs/FMO5hrfEGBs8vfrCOb/tXCsS9MhUK/OJ0VKEbMn89DCkmxTxJmp8Fw8LR24RV/
	 b0HqqGNXptaHiqBdHe8opdIUM/l/NmsHuAYz4PwOzarFP91xRab1HAXGr6q43nVA3a
	 ePiyoX5c0mIvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EFAF5A8AA
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177670845368.2472.12431505105853935148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e9d0123a988655be725c3ed2d5ce8cfdf54f9be25876ffa709cafdadd6a4c3c
Date: Mon, 20 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776708453
