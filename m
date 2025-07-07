Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B521262FEB
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751914194; cv=none; b=ibisRIeYoNq10KzKXKfIrn3i3MD+HFBPy/+lRD8/OrgkOJilWhPh2C1P9TfQciWWPdB6FIBSSOOR0CMcdMDo2UTweh7VzSD4ltir7Uh9RcY6amew+WNISS7VBouJdLNLxFPfyokvdyvEsmMszlVTOeL/hw+6WE2DBarkI8HjqKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751914194; c=relaxed/simple;
	bh=WBfRGSVAtc2nG6eRY143MdqxOKI5aBzzEk0qWQk1u1M=;
	h=To:Subject:From:Message-Id:Date; b=iB7Csh4neZomAOpbYGmkn35fr5Jv2p94VGRHI+AfkntUK3wPOA0xv7ZA27QMtE7RJYYl099fTL8xblAzFTLpLAYuwIjIca1PKxFdDockRisNtakk46YUmOZ6ev9rabc3IxLeT7bSkT6hrc7/7oCxiv83Zelgdtiveu3+4n+iprs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcYhlAlM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcYhlAlM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3121C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751914193;
	bh=WBfRGSVAtc2nG6eRY143MdqxOKI5aBzzEk0qWQk1u1M=;
	h=To:Subject:From:Date:From;
	b=bcYhlAlM5/8Tk2WOq9L238GGj2iyC5tKg0+s7VGB29rw/9vwtZUNdsnQHgFWTav0l
	 WpUwq15hDUtgjXwrGGU77e9Kt0R6HMN4NMg1bmMzNilkUGc3TRIW4RiYVFCM1CJ5Zw
	 hhRxvlklWsaz2RKPRTGGcrB1axq6TClbdNf+uRG5XuTMJNYjsyP+RKcOnQHtL7BgI0
	 XnD0sDNIrx6O3CDcVZ2K6Di9NLl4iF1JO+iw47yrjauvC2f9tOBuPhGvyrdPQh8shI
	 j4mfw9M8gwsSjiqbzbgX2rAGDTKV5s+l0lxvMIt6uqHN31VyJRszJvDLyMxBj13pRr
	 9lDq5E8+lvrmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9060CC8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175191419358.7943.9888428335440247335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8645547379c95d9ecd0cd8210c9e046ec5a44e4262200a9cf64026085e91a3f7
Date: Mon, 07 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751914193
