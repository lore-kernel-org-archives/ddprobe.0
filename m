Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EE219A2A3
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767509634; cv=none; b=X/IL1yOa52hejuXVHKfZWSRDP7VmJBHojyOt/kiy3T0Zy+Hc8LXYPh6zQPdVnmroQS3MQVmaEnQ3LEunqVduYJWkjpvP+oFZborHcYZst6EwqkYXw534WxU9TwPv5mBEVD8npIEIFp+3T7ZoCWM4yUtxvJrX2wlnafLL2RqRtnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767509634; c=relaxed/simple;
	bh=rtdHVIgoU+eo6/i97JSwuefyqiNofpmntns81SiZ9mM=;
	h=To:Subject:From:Message-Id:Date; b=irNROc/9RyDUKKjIRXCezR4KNEq9nV6hS7Jq8QIQ8KrCLMMMNx+ifrycoao/wgX+uqQJfwa8tPFJPL8hUnsffuur09Dd2g+a2zOYqN00QeIpyJiQT8KZLLUs8+lPnz8Ne6SazdVPPb4qPt7FHnvfiBR5TiGBukbwBwv0JjTpEfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfRAtbC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfRAtbC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3828C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767509633;
	bh=rtdHVIgoU+eo6/i97JSwuefyqiNofpmntns81SiZ9mM=;
	h=To:Subject:From:Date:From;
	b=jfRAtbC088eLl3md9wBcicpn+EUZS9jgTtiYX7VcSviBuQ4xCd+KvQSGpR8j8OS8y
	 0gWRq7+h4qBvqGDO2SZliqxYQ/bRd5KNfgMpe7w4ugJ5lWSYWOhQy3+QuaqkLKPa3h
	 wq2xItsrBa2o9vCOBUvbNylhXWDxpcFALyUhMCfKvLO8K8nRV3joYel/sKTT3PPnLv
	 Refwxab+ZZGmY5ll9hI5GKo7jVx6uZ+ofNHCuScPMkJqrxw7YYxjcM90jv5F+37/ZP
	 ColKsjZMj4QaVs+yEDtta1pA0R4Qd+9ItEDNd3sqaJl7irNbVocYisrPniWYONyEUy
	 j3V6r3IVjqRFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92291C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176750963357.25426.10375198010030134197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f77d3400ed3cf7c21b4a0e3ec6842ed394b67b02b1af2aeb663737bbf46d4ab9
Date: Sun, 04 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767509633
