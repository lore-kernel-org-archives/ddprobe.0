Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2153217F28
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736427953; cv=none; b=RYRb5ZyMeeWL3Nav8IRKbvBt2D6yEbBXQpMHUCq/fuwoLMPPA3EI5b33zmUbDj4ps6mjPtYMxEtDUBiSQqiMUhj9hCOKQXlYGWpjNReV/gtyqzV7MFXmDc5k8yXKSaNgSXP83GIvLBjdUeeie6rjyPX/pkFMoXF+3lLfZpmia/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736427953; c=relaxed/simple;
	bh=/PjvFxTK8mGEyuoh6eBEgsjqiQbmfuIH5b4jB0AE95c=;
	h=To:Subject:From:Message-Id:Date; b=Q+vV+e4QlJbMV2FqphUTQIbQAumi5/gpFdRyOoxxwgWM3AA/5DR19cvG2jEWiu/AnxP5mUvUAVCAooI5IQqUhR34NafyT6pq8wd/mgM370/1xSIP2mmkul9quUZMKSvNAlRNS6RD4ZZ/Q0K/UlvITn4gzFNthiZBDJWeov/kJio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=teTDkdoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="teTDkdoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33FAC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736427953;
	bh=/PjvFxTK8mGEyuoh6eBEgsjqiQbmfuIH5b4jB0AE95c=;
	h=To:Subject:From:Date:From;
	b=teTDkdoombzCCQP0DoJ8DUMUAeNvEiHBqBi5hs9S3hYp+sIL718/zLAg4i2Yikt00
	 F3w5B/VtVd5uolXBJ8DjjzyifBQyhPe5uGNCQ7hPiwLxbON6ebmFh+Bd00Ve6NFHt5
	 QAedCi9KHk6sLFXCpn4u+JBZeIzPTS96oXFNo3YtlzEKhRLXa97EHF5idrwbiaLxdw
	 Ik8KMJMPTiGTHozhzfeE45c3bgT0lgqAo/UvofZJYWZ9AbnrQP5JO37nLw6mgc7NpA
	 rZVaT1y8qOlFMeXHwkO0Y0PBvbRi5jQPgdBFTrgj4beLkoS8jWp0CCEKxlwP5J4GR0
	 bF0ZeisnhA7sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A7AE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173642795364.18560.10154718036705155028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35918342ae49207cb32b0c3874f64470d583b767be14706244afc3598b83c254
Date: Thu, 09 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736427953
