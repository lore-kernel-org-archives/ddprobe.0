Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CD080BFF
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 03:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741232934; cv=none; b=uPbGuCP9Eh0c60o6EqCpmwFt43FW6Br+pLjD6Wy0ODaAuD2ALwut6VM7xe6/MoLFyStB25hlwGOr11Ud+vaH+H77RDwHc6R5sZ/Qsmsc55dNPoJFJXqepZ7hpIMy4lP2SEutEQFAl7fv1EXVHY5EdHl2xJs91oBGK7QUFfSF1FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741232934; c=relaxed/simple;
	bh=ua7b/Hqcd0OkMpp1Ca+ef0fyRMX/lJEArF1fFtha7gs=;
	h=To:Subject:From:Message-Id:Date; b=CuCGTnnWVaHjOEzdNpojSrRHM2AM50e6I9oLKSP+pXY1TCTXg/zNawhI7wzHs/rbgJf+X8nKrtxrU0xqa6Ky1vTHwddOoLC6iFqQBPLwmCSIPsDVl8Ps2jC3xLFo6CfsVXETRhpKLfUkUEBrAPHRoBXXEROCFhsuYzyCl+Y/abQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAwDgySR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAwDgySR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B840EC4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 03:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741232933;
	bh=ua7b/Hqcd0OkMpp1Ca+ef0fyRMX/lJEArF1fFtha7gs=;
	h=To:Subject:From:Date:From;
	b=fAwDgySRPdhuKfM/+lE/iZljEsoLcVtTSSlhyTwm3ua+Aq/TwjWovEj0oCImc6io2
	 xIteO1kSZOD+DDK/Pk2a7kIjiVSl7VlTiec9/iQmziyGrvlR57TI7augjdcichvzFC
	 eUHM9ZHfv/iIbdueLYdy3k8vqofKRU53apytUS9XH6cuePMn1z6KY5i347FVVLSZIw
	 pmrxXDtLE0JXPvS6qOgwILd9XVRfSbiOaXhJSz67FepHbmdvmpuUi2k3jp7pE1oTpv
	 D1x8MGeJpAvXEipAtzLNwA+MNso4mGmf8ZFnhTTbVsxTSnzXi309qFVeCIbtajuyl0
	 FUpXErbtW2iOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5069C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 03:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174123293364.14668.7360340052449034301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e73e725089cc57cfcd699b9ef8ebedfad1d8bff02a1e7cae327f5389e5834af
Date: Thu, 06 Mar 2025 03:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741232933
