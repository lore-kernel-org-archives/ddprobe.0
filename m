Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0486C17BA9
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755910794; cv=none; b=lEXr9JMCKtvhOdP3UcQtJlkhpO8ppIFSoLSbJXamMivXU3XHLcEGRB9kYj/YpOudRZ7L8WCDmtYLV8pqckvRRiZ8d/54qZ6nT+gQuDyTUot+6ny8ZWDWejzUFzrCMSTUiUMUwLFQ1JHo/MmVjSN0tea1TPqWzJyTZ7gmfRLPYy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755910794; c=relaxed/simple;
	bh=wmSgjqb8pRh0tqwCyRcMSm0FLkyujgtcQ+KYAVbhme8=;
	h=To:Subject:From:Message-Id:Date; b=YRFpBwXPdGSj5WQmZZHQr4A2JsnZN/21D5GLCPMpiqDqbpctvGO/VjGUyaIP6NCkUexHYAO3Zg/LAXsafIKkSODX81mxWf08L6yzCqZwzpGZy3RTWx09+BcL3hmRqF+gNssuHCRRUVSBbhS1SqengCIlpdsuC5eaqWacUanN0JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtMfLu6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtMfLu6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 982A7C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755910793;
	bh=wmSgjqb8pRh0tqwCyRcMSm0FLkyujgtcQ+KYAVbhme8=;
	h=To:Subject:From:Date:From;
	b=TtMfLu6Er4fbaRI6X6CoL1At5NBgSPU6Yv67Hk99TM73b+UShtX0jWtRtMaTH2PLn
	 0RyNdKjfF2ihCTGtqWQ+mWWh+Iacle27ksYNx9gyiIqs8cFq2l71sibzxCuk907I9Y
	 t7BoAZ0ST2I8/HgEwP3QY7SXnSUcBzYZ2ZFYiUqCCErbZia6NrIt7jR6hV7Owar7u1
	 70Uxnp8GopZ8iXv0R0rAJSrqFoSysSEaKbQIwQc6nkSmDEvxoSVQNozo+pbvWuqsMI
	 ivjmblwntT1mj/ZjfBvOhreFlei6IDZI88ZsF8zOQvvunxIsJijpMa09OqtruNmXLD
	 FSLxLonmJZwAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA53CA0EEB
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175591079357.28786.12254666139744081391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9186e502e22a3c829890e37e9f9fc24cc175382de00077fe87374109c3c0c8fd
Date: Sat, 23 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755910793
