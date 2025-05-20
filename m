Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F4D20E713
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747726194; cv=none; b=mNbraOQoxJT8699lv63dGCjGGwbk4nuM8NnUhMTghrUb/zY21IQJCvPAKeovxeqog1ZxXyPk1+ZkKaSfTpvPMSwL0X5obv0Ux8qH/9Ts0ZIn4Pv9UGsGmL0xrDX2/TUAKiDoLn5vIca+IrLoBtY2xGfA8ndPnGfyCh5Yc/bLtjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747726194; c=relaxed/simple;
	bh=544C5dAoqoDrJdx0ozIHMX7YBohQhG5MOh53jVWRAe8=;
	h=To:Subject:From:Message-Id:Date; b=WoZ5pVsybDwBkpzjRf15u7XR/7C8WjmF4Bw4zw/vsWeV2np1pL0FGPfRRwEi/7fxgxZbMVueMccQye+RYuj/4mfSkNAgCSoPTaabyqSJRC7908ol2dJZBmo8SE4w5iPFoa4YG6isz3gSGP0D/3XrL9LFJSctvhDx04yFUt/JN9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0so/BhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0so/BhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB17C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747726193;
	bh=544C5dAoqoDrJdx0ozIHMX7YBohQhG5MOh53jVWRAe8=;
	h=To:Subject:From:Date:From;
	b=B0so/BhYkkc9srdiWxTgj2+wsupozsfMmvmD9f0S+c6E0795KfDF1MUk6C5r7xqWQ
	 V3DhD77hLM6k37B58gxcaGyU0BFs8lywSuI/vTggj+tSdidexVpgXANH065HlVmdj/
	 1DXAiPrrc0DK8puCF7/h+C4Xeywp9uOYjM1LbJBsKbHNqSJ0g1JSg8dm7T1wzH/I52
	 BDwKRNOHipnYwGcRa4i3HawS0fNY8+TjvzVlxrGJSH4dU96Z9M0Q7bf2eJAlhTvrZ/
	 x1iO3iq5M4HlgDrOHDvFWn1WjUO7Z2hdQAIRyegbBPfSB+ftyTyX9J0TpwXsbmXvgV
	 jK5cWglDHtslA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8DDC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174772619357.9507.6697088580090318872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 865c83b13d2abe275c242820010eaf623e992cdb28a7426f9f8cd4c66923ff7c
Date: Tue, 20 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747726193
