Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 744DB22616
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720469783; cv=none; b=dHOocgGwtS094fFVMwaXP5eR2Rb4z8UM8vtqSx/tYXehPszo+KOG+bYkDYNR12/HlbMgVVTQpKDtmJCcotx0BtYRhAIZJTx7qRXKG1Nf+hrUia2jxU4RSwnbs2gPRwl4owpz3ti+fNssXFiq8uWRNIvmbFYzaNEPgBRvEKb9VgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720469783; c=relaxed/simple;
	bh=FpClQLgPBiB1KjTLTzOdZpNMuO4M/UPASniiKKr/0Os=;
	h=To:Subject:From:Message-Id:Date; b=VoUqPK/jOJ5X2Eqd+DwlVjGkzMBurZjHaNLXbHaR8YBA7B/lcBarKlsoMyLQaIb2EewjV/0rwPQo2BAhnyHhETF4TCx8/97kcZSWtf41m8xBAZWpMzrDKHwopDDFILgCt8QtgrL5QGMqqoqbrC7NfbYHQWvuAeHWo5fgyeK+6Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAV++yBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAV++yBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E46A0C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720469782;
	bh=FpClQLgPBiB1KjTLTzOdZpNMuO4M/UPASniiKKr/0Os=;
	h=To:Subject:From:Date:From;
	b=vAV++yBDG0r1DNfjOqvhzIlFYFIarRx06nF7sTDuynArD0eNGlYOdiBRHJ8Ug0nY5
	 vQVWtKtc1VVx+mxC9kelNsu39cp7feHIQvPeAodhOq/7wWICjvxHwsSv8S1qHnhhfs
	 h1NEShScHGEIOCe74Kwb+dImBo5dobr6618cgD8QT4I7uxaczjjznywtb9StZZe+/s
	 LES4tbUlfncKOVg+XlSlDq92Dcj8obXLqJom+sSoUVdlIzWGCSCJoEnT9TczKWkAus
	 Cq1QS8wJGn6Bh1Osh1K/XMlFGdeIPJh1HQFHKrCVrJkOy+leVIONId/5RgmAHGnCOH
	 imhFoyiAKr8zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C98EBC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172046978280.13420.2391305018097528492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08e94c540c03b36207cf6bd386069156e93c5139fbb972f6f83ea5328c12db30
Date: Mon, 08 Jul 2024 20:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720469782
