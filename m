Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA6C482D8
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728011754; cv=none; b=PJaLWLgNkVrLIqXU5D3zy0/RGKDOMoMZ1JYuutD9NHQhRTe6n9RQGH+3MDwycjPXMp7dDxUR8jC591VrUSEJvZeOku095+2ESqJLwgiorNluv5X/VJHjBYit4/aRcSSfn6+s2+vBYBk+tFRBz/HNTyxoeh5MhuX5yzuXJdHW2/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728011754; c=relaxed/simple;
	bh=SZmalt+OgF0VCzc9wyMN3sn1ODgBrCcRInDD0WTh2X8=;
	h=To:Subject:From:Message-Id:Date; b=HHnoCqZ5W93agx6zIQ8KjrLqhNzvTdSFuH/0c0dULNd7+FaoF52kxjfa0k6brrtGn1Hbv5lYOuNJXrp1U3GTAErtecWuXtK0iGg4/R/u62dCo7Mt3tGSKuSU8/5Db9BxST1QL7DZPBYAmZhgcAVAEU8vtek4AIHiftWl+8FZDC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTCQyCkg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTCQyCkg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64E9C4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728011753;
	bh=SZmalt+OgF0VCzc9wyMN3sn1ODgBrCcRInDD0WTh2X8=;
	h=To:Subject:From:Date:From;
	b=eTCQyCkg0FEzWGiRGdSgHVQHHQlsPbeHCuLAoMoOuRt5vtfvIRFCiTy8xHbVIY+1u
	 vMqYGrpe2l20jpWcjebLQYiGi3k6ICVIXBqe4d1z0foljeXLX7s3uG0XKnxxYC40jm
	 XOSqb6QgUJ8lkauO3Xt+AOf7Vaopbv1NBMHkX4bmIY+lD1N33o8BPaO5cNIIrgcBTK
	 hbIKZqSJy6z/mNTKZOV0Rmq6Ze4PI9x3ZJ2zH1BdqGLMhdW3TQmnOK295QB5MVNr1h
	 6QVb4ARxEyk6Twd+6HHpWLCpFJNdLa+fIIVEI28mJ6sMy/1loB/0+UfcReVF8MR8lu
	 LtoNSLQU2dqvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A068CCFA742
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172801175364.8241.7454898024568126485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980f69e4f81bf9427b0d7695fc3719e81dcaa5a220fa41afd241a3d2e07ebe4a
Date: Fri, 04 Oct 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728011753
