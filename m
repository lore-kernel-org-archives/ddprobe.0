Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2389B21771B
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754933994; cv=none; b=dvGlaDwWArHjB6CeBB59Y6QjRwOw6cMXltzlbCx8zn1qz1bzaZ6A8bxcerM3NfRSgBYSl+IkV5smLTf+51F+v7vosnvJulyr3QQY3OiMVTGmV75k++ax71kY3LytH2xY3nN05RtisC4hoK33gqoM7n40GV+ED3CeqCOrNms5/6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754933994; c=relaxed/simple;
	bh=9HKlR194NVl13JbgnhHIE+z8829RC+t72/25rx9W9ro=;
	h=To:Subject:From:Message-Id:Date; b=I/Bs37i1QP13fShuTEH7M81inI5NqyiwISSeBDkYY3EQMSvZsPcAdboj10aZ4axdXicpKRp4WY2jCDvfInbezvk7heGffukrlO02S1TLsqJlZh5yuSs6euC1N1NftCZokE8GN/NObr/kTdeNdSKD3GYGB2j0I/F0BB2jrtJPpu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHeg4XN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHeg4XN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2BFC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754933993;
	bh=9HKlR194NVl13JbgnhHIE+z8829RC+t72/25rx9W9ro=;
	h=To:Subject:From:Date:From;
	b=GHeg4XN+vMFmaykY84SugQjKOO9lK/cZ+J05c6PfQ5J7hMDXmDLRP7cwHrPkfao40
	 GrYTWX9kpAT1aUXrmr35HGepT8Sb1dhWNaCQLAT02q5/008SA8dkHMGCE9RdLs1Fa/
	 h9h+WvRW5nd6n/SuZ4dqSiF3vTZOOmBeCx/+UEHehFHpHPenHv4916cJg0zPVPDgNK
	 dVBPrh9nw7zfI7xwHj1+FCKnSC2EprpDHNn3JPyhi1qSaM92mIctI40WI1YFYRWOY7
	 81HWHkP/sfdTZ94jHwRQIRMTs0UHWxP+LcUIvvpCUw48b9r5qqyjl7blTsrlATHKO4
	 WqthBOCYMQwag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F777CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175493399358.15398.16792741262486853008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a645c00b7316f9cf8f4c66201787fc51505c853dc86f17f51462008661aa3a
Date: Mon, 11 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754933993
