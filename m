Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9A672632
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753401594; cv=none; b=DM6coSj+KtAEpyL0Ws3klfGTxOUfyrY7jauFg5ZZVP2B09OHZmigfDm4gs60hIlyJgSi/S20kqrSxM/3jbzyTmfdNfhL/7BqSzgiPOxQ5FX153p0OaiudyaoKBb9YBucL69+2HHa9Tz1418ipQHMrNDEwRJQX4qWscQOekOhzLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753401594; c=relaxed/simple;
	bh=bn551111qL5JFP4PAIPFBErhyv03a1eBvtfz48eG+mg=;
	h=To:Subject:From:Message-Id:Date; b=rwgzRcPN25w4ZLzdAVhOiB/LvMODRgDga8AqTDqlMQFAkLf4s90a4OlEARl2GgkF2Ev5ZWZAwy7sq+Bow+YwUVAqyvW2zIfHgfC6hPidISXL79OpgAtChi0EWOOpnbjg1QSIkUdaFXnUMkb1RDfTi/rBR+2qyFVmhg6+Mw2vH6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FY49LxQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FY49LxQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBBCC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753401593;
	bh=bn551111qL5JFP4PAIPFBErhyv03a1eBvtfz48eG+mg=;
	h=To:Subject:From:Date:From;
	b=FY49LxQ3Ah1YI3kEwbbtZ6AVwettKZmPQMrg0zH1nBCLXtdgIhS8zwTol0DCzjnBg
	 r+2tKGtVWjT38cK8FlCt8XwH5FyetmtpYBpnP/n9uHjH8OxgfyPxOcyO7tR/7u5C4T
	 4fGamk3pOXCU/S42ytP/4ytAByvEfyznzi8fJENjl7vUaHpwPx9qR0XW2HPiIVMGRP
	 j6hzSrOva4xYuLGrRPTkkKUtP2exRYfFMOLMLgZnN+JmSwG5YtSOhq+hrewaKSoeY+
	 iTEropWllKdLX0kpVmNfpRsH0yBhHn4k5u6W/gyPOMoMwzFFzcYH/e2hEQcxZfPdws
	 gqpfAcbSmlYbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFF2C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175340159357.9615.7908890333074511275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebea2b85996098d389d8ea061e68f0b9e03a9d35f134d657e457db4ddc1b403f
Date: Thu, 24 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753401593
