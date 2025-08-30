Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DC553363
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756532994; cv=none; b=GCo2voJ6ir/11BlSgdzR3ZmwoP3zfFf5uvAnMmFqIkaMG5p+LMsHA9DcUw0K6rEypvZQKo440lI88QazZkOjypNV0dKMTx7yjQauR6x3KC1OsqM44UVI+WxlL7i41BLhR8Ep/pSUvO+uHtnClWWhzGiFOiyRH/0lWvCmFpJrGR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756532994; c=relaxed/simple;
	bh=WmxIjpTr9KMQYTpyUXakeDx0r6taTkhkzeoeMHiYpuM=;
	h=To:Subject:From:Message-Id:Date; b=g4EWXc9kcbhhJgFqyTVRICFHFaeMRzum42eLB9ClPKaHTBUDJUo1+I8vroBVHEt+mMdQG6+LTyJIsgBkNPsUeolMCy7pck6w6bO9byN/FPzQUKPUDTMDizDg/lZvWJozCaaDbVT3iae9DiqoJpLNc6X/5kyf+5X8KBjdJ0zaR+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psnDKMGQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psnDKMGQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E9EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756532993;
	bh=WmxIjpTr9KMQYTpyUXakeDx0r6taTkhkzeoeMHiYpuM=;
	h=To:Subject:From:Date:From;
	b=psnDKMGQL+XhL+g+EMSksxAzpJmd0ecXpt9O4yrUCPmF2J92SzwbjQPT6DAipZmK4
	 HXU+dXAsHOIhOcbDMF9IEBUDj2KNrtEdvPKzhPrnGPM+bVEQpylM+baSGtvFMuvBLP
	 1NLcdaqMHCQf3CTuSL2y9ooPoGQxe/qI8oipwzxVR3UE5e0oafpfiVRmXgukgp1ZJI
	 5GBLjzXc556kkLdiRljm0ybO/6j7yZAbdaGNDZrjAlvJ0ajo4xNbdy4tVQVhxToHPT
	 rthL6kEk4PWqp4xEjP0mxVQg8TRQz3suusReDou6iiYBCRdqwAmUnWqwwGRithRh99
	 F9YU9MazeTDgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9134ECA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175653299357.32286.1163522773151038612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04492696adff9366ccacaa34626bae2eb75f6edbc623e2ced0a079780233ec19
Date: Sat, 30 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756532993
