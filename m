Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D36027A444
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748360994; cv=none; b=VJJSt8MJDuncLxTHYgTN21jNCJxvvXGF7mFkane3tmkLWyPla2tCumCLx1DvS8GnyjOwCD+4wZ6jjIDd/Gc0aeuBg6Kphkc6yCtCJ9gXG5RnNpfYt/FkS4fzvwgL1f8Vqpj9wAZmuSZM6Hu4EzeFqUg0xWlbxXAOJjGbjJSU6AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748360994; c=relaxed/simple;
	bh=8FldNtkw+TWmkduO2Iz0Y/+2a3dtq0JaaTqHJAX2mgM=;
	h=To:Subject:From:Message-Id:Date; b=NJ1WhauSk/QMQi6oB92b+knKvUFvJKg28iNlJSjUa5mfXb2sgDWoFNz317JNB07aA+D95mDnvJ2L7Nagaxs6fsM7v1+RQPGbZE2qLBbXM3z5Qzg31qPhOfnoF+YPOAE7pE2Q2SgQ9bj+3wfOmDz0cNCZSyRIsBXSwa8Vl19YpRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cClDMLg1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cClDMLg1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46D4C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748360993;
	bh=8FldNtkw+TWmkduO2Iz0Y/+2a3dtq0JaaTqHJAX2mgM=;
	h=To:Subject:From:Date:From;
	b=cClDMLg1PZhwDSMUzcNsjytSL+lY5e4+NLS1/f6d1NrVSbKU/IWTQS8NYx+OqVLqP
	 aJJZn81pAoI7N4UdbvRunNqU+lW5AmoCVLaR9vLX93OsVbSpnec+rtG8+HnkbXqdR9
	 ZI9XTFfo2bkt4dGmIhTDFcYV4lg/JFA1sLZwx1jtEiOReS1fneIlOMLjP6C4/nP+ft
	 f/vzPwDGAepFcQVkSjJFYqcwJT68s68bNI6cGDqY2zzSPEVhDIKdZFJSIUsAHEzwIv
	 VAk+JdAExN6j+uUE0iqHzQN2OS6LgllYuLhwSXrAaee4ANpKiQ9MAFljI8YacVVs2E
	 ztpj0cqUEu6sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928F4C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174836099359.5471.3117838055465859500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a52c6371287bf6df2f37c693d919988600a0479a16db08b1642e3ffc720599c1
Date: Tue, 27 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748360993
