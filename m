Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427C2329E67
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762798794; cv=none; b=dYdtb0oKVOddDXDpjrhYDlROzragP4P86F9W3LdXDNSseq09/B9PZ57bR4GCTskzbAiq54AQaYXMOkOtHBU+FRmf52ZVEMWUzGyHo2QNN2bjKc+bkQyoLE8TN7UoRLsRBVUWcZx8raRZmu4T9RcAkfkP1KhQX0CFSGpWPa6O5II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762798794; c=relaxed/simple;
	bh=s2wgilsNSpp4evmmJvsMbityO8vLBC+hrEsFL0OHt8c=;
	h=To:Subject:From:Message-Id:Date; b=XpdAgCZu3h6w8mWNI3RYaLck6Xeajp051GPHN8ML70ghUFicKbPT3lYADzCjoGBYnAGb657kih5ahaOZuNqs32TV7Ixx26LFSPv4BM2W4cdwmF4O1ghsSvh6x9vdeLObJs1cphVyPWuLo0hb/6wpzl8O2/tX4CtuMbbINQqMYE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDypHcK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDypHcK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2060C116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762798793;
	bh=s2wgilsNSpp4evmmJvsMbityO8vLBC+hrEsFL0OHt8c=;
	h=To:Subject:From:Date:From;
	b=sDypHcK87/Nhsyj/6lCspQYbbTjG0J3szXVhDfdlH3E6RWl23FUdC7U/Vi1aZcJlZ
	 NQUXwEwhKID5A0uOs/OEcPzCF2Lks40eI3IvOJSfzzcirji+asgqAwDD75s2qxp6IP
	 2v2sdpOfUPYiSK1sM+xTqRxB9Cth0kpXbXG6QkiV9TYB24t5J68RIaLjXf9SdYeqJD
	 +urtDpQupJRIV2S6JQg1NEej/Cvo1+RjCh5nB1r6E3nyK2X8uqCQlFxDbrlbhUY4HD
	 adc5b7hdyHCELMjvLVYl6kmfGqoAvtbqzTeHWPPpj6lruQfNgXGO5vdi7f+0xpaZOm
	 UWGnIPvcrGsyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0FCBCCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176279879364.27035.11374735222827583724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d699fa1e20995d1c2b822fd1af925829f3dca313aaa923b38c6dcc61ebbb8435
Date: Mon, 10 Nov 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762798793
