Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5120013B5AE
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730618754; cv=none; b=BIt4slUedy8SWi/Q3lz3TPsKYlRJDyBEn95fDXvuRLMWRx4Q5cxsnwSPLnpdKOXHJwzr+LIRLfsHXFfep5VvfFPtQUQ1zGpSrQoBUtvmzX4YSeGE+PHouWNxCDmPZE9Eo5IQQTNGKAac1ISWcogMCadujsrTV2w+JvJ5pS0fLT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730618754; c=relaxed/simple;
	bh=Dnc7KJ2dtRmHJQCD0tljIH7dBBPIdH3dz0Et5ZzlnqQ=;
	h=To:Subject:From:Message-Id:Date; b=Jd9xzG4qkSMJD457MbGiWf0uo3HHmFv2hyoB4SodXFp5tVmPFtNiddm6Yu+XTPo3QJhwU8UXhDl9nVyAwcpqKfu7cI06py4ajoG72Q3Ukvl0mn51hmCyTRH0FmHmJaSAqxm5c9O7T6SBIGxoYsWULcuLu3XX5UlCNnu4VnV6qkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKpaMygp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKpaMygp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF25C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730618753;
	bh=Dnc7KJ2dtRmHJQCD0tljIH7dBBPIdH3dz0Et5ZzlnqQ=;
	h=To:Subject:From:Date:From;
	b=YKpaMygphhbgZjvUo/g9zfCuyPBArCZ8d/ax0+aSkwMuYWf8uE4FLFUGjAzTSWe46
	 BUHgdE1sQqLuAKWC6VJCtlIluCc+pMOyeWdfVOhE9bjRw5M8N3E6I3JlH0O4U+EvBN
	 2qU655Zp00Uqo+eujDhBBAqaOpKItUV2uTHUY6ajwMs2Hvp1lNhqWA7NFOJcVKUCog
	 BdUGLSgLOoiw5bxHZRuvCngKmq1mzNjedc4cdv27N8pr4ctNe2o6FpKc/a3wKL2n/P
	 C8Zr2yL4MfEGgjc0agMFeb3jL+ilqEU74Gme9MYSpy+n4WaJDyFqSL0PAaHR7ogNdd
	 jBbirxFl9M14A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96490E67806
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173061875359.12110.6571094956126887356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4fd836827a168ae111afded94e99a411a968c8f454b493336176cff3ee05911
Date: Sun, 03 Nov 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730618753
