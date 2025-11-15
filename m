Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348E517993
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763218194; cv=none; b=iYdDRv+Lh1drjnEVjhuxQ6IZW6ZaNGO+6zFjPWrfeL8A9DmJ9NOToWBcmi2ToSGWds94ZfZA7Rt6dxffSpSQTVVRGik2gYav+BNfegDXNQK8eZJ4krpSJW3XNidBAUlakc+7Pu/K4Hl5fkQAba1AoS7qchVtIqv2zy0yiW/hOpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763218194; c=relaxed/simple;
	bh=60wPbWTfHOy8RNE/O/D5wcX0/b6XRXSCVNAxAHbiq9E=;
	h=To:Subject:From:Message-Id:Date; b=Gkzosl0jLoTtWBlj8M7lwB94A1KLmFQ2Nnfuy01f4d+gHs+mZsxtqq3ItUXAznZaWoftcDZjlqiWN1BkVOQdpobsitqYxYPTHYIAz9mezq+7tuwvYYv5JU3dm6JHQP9YDRuTA1XHlrTljFW4g1NRuYu4dJY/qlH+Lm89t2zBXNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgEPsPed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgEPsPed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3998C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763218193;
	bh=60wPbWTfHOy8RNE/O/D5wcX0/b6XRXSCVNAxAHbiq9E=;
	h=To:Subject:From:Date:From;
	b=EgEPsPedtl5CiRMO/4CdQOsDEHPgxlQqvhUf+uStxoQOT9LIfW/0Zk2CFjX+qNXMv
	 HeCL/sXvpfLyjsQ7IU2G/oGgPNhYbQFQOYKAGZZkfEaDcK3Jt2U+ScSWVLCdasxdhC
	 vYAnuCM8C2X5HM4eBT2Rs1ERoepc4pRtg5nFrDC+F8p+J3vMV5hDwBHRMt5fPtqFx0
	 1FrYHkao5nwAJSJkfW+mzlKM2hFDf2rYgpxEKdbI19RE2x+N1qouf93PiFG9Hn36Xy
	 /OGnRQywkGFI/MbN3aPGJTcIPyk8vhsXu7IBvDYhyrHf8HjgjXtYh1LrCltgROHlEg
	 F3eJDcqiHyqJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9695ACEB2C6
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176321819358.3217.2509748567770094488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 690a67a7466113e0b1276cf9f33e1f727f2a396adddfd8624d64f08113251cbc
Date: Sat, 15 Nov 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763218193
