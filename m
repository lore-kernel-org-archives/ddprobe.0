Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D581344D9F
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785798034; cv=none; b=QoZgqH8O+yVkqdyf8ExttrgVotTHDnv9i7u0aWypCGqBs/ZRa8wT9iSN93qV+nMDevxtKnFxIvcGdex0Wa1Wf8qaB5WoOpQG+Pxcaki+GBFefj25W60cxwCU+eXbedxMzIK3BlWxbUI/nsJpI/rdwmRfGwBZStLrsfHntUMUTAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785798034; c=relaxed/simple;
	bh=0Pl9x148mm+HSwGZw7oLwzjpZntZi9xIngLrewLhugo=;
	h=To:Subject:From:Message-Id:Date; b=PyZH2/U4RKMqpvW4lfKuRcfg0gXwb1HpYjyoFR293iiKj8nszGBXJnxtwAOVVbwd5EMwkmcUrXjNct5IWmmY/dXK94cKtMOeDtNek2ItTWZolNkZV41C8vWPI9W/LgeEF5a2MW/gmZyrv/XyEu9n7FJypQRONfwkdYKMPSZH2mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecSTxvd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecSTxvd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0379C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785798033;
	bh=0Pl9x148mm+HSwGZw7oLwzjpZntZi9xIngLrewLhugo=;
	h=To:Subject:From:Date:From;
	b=ecSTxvd3qGgByuZf1cVwrf7Y5pab1HuabWrvXqNS5cJ5HRNpMoypBIU1TiWMLJDAh
	 M0cJXT8xhZ3oZAUPTYiXIe/gQAUFNu6JpP3KgoXgsKdSX9ynlTBLMsiKKvQ+1UgDTe
	 RwUcadBfp4RNTmwo15lNCzF0/jezYUMQ39MJ2qztGLIBogWsGVfCwcJLpumEB8HG9e
	 B1l4f/gsVQOrbvMzA/3MzApudKneGExXSMf7jnMdhtyVV4AbkSxcmiR4AlqHRCOeqt
	 /0K0lDoJEFuMjo4c84VdiJgjF4t0gbDFF0MjJrHT7wclPMqlGHLumOmQAaQkiYaIRT
	 eLR9e3BVEFoMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA96C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178579803369.21153.10202014937914112038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9289b596f4bff3b4a55be3264d2cdcc527f3775a4cf252b93e9a93f7319b0787
Date: Mon, 03 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785798033
