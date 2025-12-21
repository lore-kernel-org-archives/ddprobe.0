Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3042B13E02A
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766288034; cv=none; b=iiS2to6bUUPAwLBJlm5FB3LfcpeKyENiE8BoMQkmQ9sQX+cXbwcjdDuBOcpwMJpQEC2zznCLqXRJFHwClMOjNxjEw7FULbgmnPiRJtt9I1OAdT3Q378On+wu2b/yGtSohsq0Q2x29Dp2QWoz7dHzWNW6ZN+sDtEB4yVR8xs/1cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766288034; c=relaxed/simple;
	bh=JPC2AEf7b0HbWJ/YV3VpmZY9kTh9f9PH44WM4RCPxdQ=;
	h=To:Subject:From:Message-Id:Date; b=oUHgISwOBFXGNj6eQIG0aor0F0PlcdAHoQbKS4v0bkucqlca63824F0ydICrhPdZ2/c0tQ9yeqWha9gQ6UpJobebEauUMDE3AxLhrJzKzQI04RZpL8UyFnYX0Pque1gIZ+JOguGsGK22URTTu8m7z5DRm0rsFHtQcczluk/ULP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lK6+gzhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lK6+gzhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC25C113D0
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766288033;
	bh=JPC2AEf7b0HbWJ/YV3VpmZY9kTh9f9PH44WM4RCPxdQ=;
	h=To:Subject:From:Date:From;
	b=lK6+gzhvIQSKRfLupRBGGhxjKYHDJGQIb0t8ulql/r7EMlZ2SXSjTbYaT/i8OoGT2
	 MEaqppnu/s2B6wI5c+yYKDv35rel10wZPaK8qWSz4FnK7bMJi2gSNqWhlGyhx0DCuQ
	 +GkjgxQqMptetz4hqy9PLkM0ZUyZKJ3xk9XCZkQXqTlD6t0aWJOGB3+Ly13bQxRA40
	 uNaGKX1ZwtwRPsemwY+/qq1/YgrmChaTRB4xpUIAURykibNujQR6Q2+DZG3INDh7JZ
	 mjUM3vxRW0uT9xqe56MsYOIE2lx7M3845Zaqeq0Qw7mIuSwxLD59oudnl1Ylc0YrJr
	 9UnG+3Od3cD5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97277E67484
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176628803358.4173.14095454893654902115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99847b379364d61ea7f9ccd826cf9ea4554735b45e3550d0b067dfcbe8542bb
Date: Sun, 21 Dec 2025 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766288033
