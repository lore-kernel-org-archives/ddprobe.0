Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C4A75815
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 19:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717096463; cv=none; b=fhXxkSenBiU3CuYR1QmcWP6Uac7BOl3sPuGYsP6mZ9FneGVxM2qizpqGYnZgrwQMY8nNEqD9vCAbwyOITIO2EiU7s305OLYzikc2ID4s6I4D3pBeVBiXILP34Eq/J3ygro6JmyR8EirddZJu4olKV3WtYQS0YwGjw8DfbF5KTzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717096463; c=relaxed/simple;
	bh=uHgjFyt85ojmLrnX43sGlCv4qBUu/Kh/pc8wD/0+yEk=;
	h=To:Subject:From:Message-Id:Date; b=UE5WnNuAPDg7UcbAIZnbtmY2BGoj8f4rmUHEZrnYaE85Q65rGi+xZVq10kF7JNWNkNkoEDjNjJZ66QpuyIZEg+ckvgbK5D9EX9bC2IJLNUumSmLC9oQ3vJqQDxZ1T+C9Zf0Qmq0vMGPkDPpIYSKtIMbyksKcbQsR8dsxW/DGNwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMXlEOdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMXlEOdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1D6C32781
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 19:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717096462;
	bh=uHgjFyt85ojmLrnX43sGlCv4qBUu/Kh/pc8wD/0+yEk=;
	h=To:Subject:From:Date:From;
	b=kMXlEOdAt2seYwH73I5DKbZxNe8jKusrrbfF9hU3oO/lQlVae32XDX/fFBj5Y8mRs
	 jSmWsE8KAy4VJaLvhT0uOCnPBE+LUrSmO17mv+CWJMRj13ev5f16rhJYbq+mKnDHo5
	 fbIL+gqdp0JIvTD+EBHEGKaBthEBOkWS1rGsSOSgCf8oJFg14f6hw7XB6SWb6SnqVv
	 EgrHFZ9xxkBpRRbKkdbqiuE0YtblF7vSUHlcdvwQw7Yjbcn6nfzJKvhHdRn06zwa2m
	 K/U56Tusmha1Qlsvh38G1KM7qAeWLX57TR+oT1Xpd95nc3MDKnED2mSqZL09+ru/3l
	 r0BdSQaULszUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4C8C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 19:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171709646276.10021.12755719226199658141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5669d83cb19ab0ac4fd259f6c57199a43df0b180394b767afb98de18aa415f
Date: Thu, 30 May 2024 19:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717096462
