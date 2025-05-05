Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40BA1E1DE9
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746481793; cv=none; b=jGKDW6AKqQM/atdaECOUbsGGJdS0rTmt7XEFxINvcpa3Ncf0lUMLMsmgQn9dkAloWo7yr+DRRTei+RWcJm8v6nZ3zvZZ5KlIIOmqnQ5RPNLr2bigmKDE5K2mTO3WN6iIe8WmdlPTzvxN3AokYReRtdq7Ew7ZcNIpVkmff22PBpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746481793; c=relaxed/simple;
	bh=cx7ZGFEo56fAe/sIn/PEMSS6lYXN9JPcmK5Ohv/9p7o=;
	h=To:Subject:From:Message-Id:Date; b=dHRDCjQdOsO1/sN6rKqt0SlZ5ZazpJ6PfxmTd0ZCLg6pEIgeeKDcOdr4r+weLlrIc0m7hBtJ3XN/NhXdf2n9eYa9neRIpg6MPb1+NAReYI3tByGZHIO1pvj7poScgl94pVA3YUmmNLgyTK6OPv/beGV/cE1vJjkp4SO81yxJA0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jf6TNp7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jf6TNp7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCE3C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746481793;
	bh=cx7ZGFEo56fAe/sIn/PEMSS6lYXN9JPcmK5Ohv/9p7o=;
	h=To:Subject:From:Date:From;
	b=Jf6TNp7ObdJWB1T/knSzPoiU6Lg5WuIDK4b1hCzVIuFZZZ1tI4YZ+ag08rKYEwN98
	 JWPieGNiOCbyQWxD1+PxVyG6gm10NqKqLar1BgIWq69OQKz1w0ln4+wbLh6YljoqUf
	 BRwV73N3AihjG6yvSeBGub62J6osYH/Kzwl5DOx5CE885eqrJszvWKxnWeT9o0hcZN
	 gdr8AmqT0ktKRXB9qQxnanb6k1evylXC6Hq8jmMtsHLGpTbdx2xMu8WVQNGhL/1LwD
	 1T/PLY5HaQOKIhZaXfGnM7Qxc0uERR6cjHF62/3uXuqEq7W5lzPujdeyPj5knsau6Y
	 esHW+ecXMDWWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E97CC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174648179357.15606.2423021007295967302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 861cf9efe8b4a90b795adf89975796924cc0c2c71b4a71e00d0ee7070d544179
Date: Mon, 05 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746481793
