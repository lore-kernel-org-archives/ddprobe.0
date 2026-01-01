Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112181F3BA2
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767311634; cv=none; b=rjmO3Dj+thfHXX0TLrpYQtwWM0KOBfIqZIM3pYcEBM6NbjqUzSF48HCAVJ+PGL8/0LJm9JlAQ+0RXIfBjhRSSxU7AYv4QYoKflqNgm8s1lVoLgdrT2JFROoIPVlpK6d1PPxcO7cAyboO04oOdc2me2d4cgJzEVbLQ8tijPmEFMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767311634; c=relaxed/simple;
	bh=Z1f59nvQTcVFOiNF4giuj6yGjrNf5N3i6n9Vvme7Pbo=;
	h=To:Subject:From:Message-Id:Date; b=DRXeVWc/hVWdZDI2gqopCq4wHhSI+NIq1jnWO2iIeP756r386mYMPDslZ4aiBq4tjyMU/tdi2U1UeWeSxXGjibZv483gdcvM0UJKGanlF6BXQPHanMtgqSXAjMhqxxD6l+Hex4KUGY0jnstarytnXxT9fhpoIXL08H7lqilG0LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osFRxQ5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osFRxQ5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E21C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767311633;
	bh=Z1f59nvQTcVFOiNF4giuj6yGjrNf5N3i6n9Vvme7Pbo=;
	h=To:Subject:From:Date:From;
	b=osFRxQ5kS6Q8RsZvg9tNs9uWPdC6PFP1kzRayt5fv9mF2t75Qga1THtLbWyV6frZX
	 dXJIT404iDj1AVgSZ8NCGse0d7whONInvFCdH+QQDizSIkV/buCa5W4jPfiNNfb+sR
	 MEuHKUf74zt46iPwEqOAk7O501qD7R1yk19hzyPccwAzVx9An4JPmoJiXmqTnBn4So
	 3a4PkNXHZWvRsP8WSSGQuQJNJJuuVxmPM7kmIrSACtJGLCwk7dPw4TFITldY5G+hcl
	 3Y26EcumGmStqDOZ6dUJEDMlmGXXn3LyAJWOHpSP8ZRyn012p9BaVxB84zugl5L1Z4
	 7mAjWNbFLr5RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D32FA3724
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176731163359.15887.12068929783933893103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ae74bc0ba8eac7fc59cc7204e661c462d241d0f0121c0676a2abef42eccfc7b
Date: Thu, 01 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767311633
