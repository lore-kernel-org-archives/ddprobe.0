Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B24F25BF13
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764709374; cv=none; b=dYy/o9ZQN/OvIahbbhyfn5lsUxM3K90Dltqs0ZoDcSBN904e+QYxHfR03C74sWNiuxEuOSzMrs/lP6LV+FjAaO3kygnLZSVcYRX+ZC0nLOr/FufLqPRu/wgrS450+hJw67/g6JL/iqa8Mdx7a1hlbdHKCGFYDRDOKyxCB/vkRac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764709374; c=relaxed/simple;
	bh=BJe4VuewtNxI9sSbaYs7ArwPr6tNHrBAGJArUutYBhQ=;
	h=To:Subject:From:Message-Id:Date; b=Be3WeZDyxXMmvdGkGUbplTG3Il/KXkjIS6u+e4wAbmPMepWAMQnlaJzjKsDCYOUT92Cw2LV8c7yYkAt+FZAOIQhE+FK3tCC7NXFjnfZWWMD1wEFcG6u1BmQTpudZOVv/aCIs2+3ZKmFSwNN8i2WfWv17T1m2OmUNsOnsKnF60Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fO0U8CC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fO0U8CC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC62C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764709373;
	bh=BJe4VuewtNxI9sSbaYs7ArwPr6tNHrBAGJArUutYBhQ=;
	h=To:Subject:From:Date:From;
	b=fO0U8CC0VHQOArZAf5nT1DMAjFCbBjioQH8s2XEK32DVrbvumug12Hr+ndb7VU843
	 wWztSaC9lfaUiEU+rBqHHUGSWPY3S8MPc+dAbSQtr5GBfnXXSbcnq937RqgemrQ+sF
	 geMV7AefAUnXlcMuN4XwZ1avvLioqM/7Ff7cgvoMDqhhxkwbctyZ7jYXRHft+DhvRX
	 +PO78L4raYkSArzBfCIs4UdISZpm4uvFR0B1HqyFhpLUW5MvpcDIWmKjszq+46Fq16
	 6cceA6A0tQjozKn3JsHx74h6iqNH5tMyMYNEs1HHA4cISYYh/oR+2rcV05D/vp7jFN
	 6L0uwwqcmhr2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6F1D12673
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176470937362.20566.7746462326551851965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ebe44532b2c7d7074b7e0338b7ce026abb1394821dee783d62fb02b5e6ec603
Date: Tue, 02 Dec 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764709373
