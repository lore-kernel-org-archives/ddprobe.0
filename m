Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6931607B6
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724063154; cv=none; b=XT6uIIVvOxBCV0ID7SRbtrU+sEzd49BTGuoE+TLebcqREbXkYOHMhYomlHwNCkQ7ATElutyK00SQPLL25diW4So+7MM95A2Po7ggX7J4lF+Co7VIGGl7zdt4Y6b6aAmEBHrVk4mONYbkxvg5HC9ByXfSPQ9/694dNUv7xuT4ZL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724063154; c=relaxed/simple;
	bh=DYCWy7ulvyEDQyIMmfkm3p5WgbjyncnF7cowXmzcCPc=;
	h=To:Subject:From:Message-Id:Date; b=GtJOEv7KcpF0LAdiOXB1WunREdTIsvkd58QW418imHHOczFlYUCTC8NXeKwtvXwwerK6qFU42vLXaI7hXyIs00Z4cgHrg85aFHIlavtU4JsCS58WCC0GcBVx4fPmOg1kYQW+CP5TkLH2/ewQt65tauNpS8YHIrXKFuW2w9Ygaak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOR6f6xx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOR6f6xx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CCDC32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724063153;
	bh=DYCWy7ulvyEDQyIMmfkm3p5WgbjyncnF7cowXmzcCPc=;
	h=To:Subject:From:Date:From;
	b=lOR6f6xxxnUddMwZjEPBaTzc2SiLpTY+//hkiPk+OsjAtJ0N3jAq31ykwDGoDvdUK
	 wRTvxwJozKR0iLkoN3eMGq32I5cg/jsqDtQbBM8nMIQM/ZntlC1z0YV04RIGDhhDdk
	 1HCWNuLlt4U1SMP6LRyLBulm1AkZS3wWTh5xcnxNrQqIt18iW0sPzN41h48q7VNyxH
	 uoP9wfpAsY0MzhqM4ytjnRRPx8qGJ5LXkoc5DRgh0Rbta1jDwTc6h+4IsElCSoPM1H
	 ee+L56PqDj5TFoguGlAS4ZRfU19n2NW0g59of9M0kUqc+Qq5UTKgVeEFsavc5UquZg
	 nqEhpo8807dKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F6DC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172406315363.15817.2100180488915407322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d66f092e7726e7da2bf78044fb5297fc6d38739aed1dfe1ced41cb93ca46f848
Date: Mon, 19 Aug 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724063153
