Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A733353A6F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790508634; cv=none; b=gN+SkVmRUZE/GGXIftCMbzCsStUnFqfFMR/EpTk5hq8sWtvacFP37KNvfj6w/5C3aUmX/GGqg7pMusD2/e5WCqAf9XurY8G0gf7G4pZPY8PwYFtTITDtzOfy3C+AUbnDfBQxos9Wt1zV8ZJ04JBoGy6wq/pfcTLOVKaiUxpZ78M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790508634; c=relaxed/simple;
	bh=ggMhKGJlBEbUK0v9SJwOiiWjiiKX6ES5kApgGef3Mxo=;
	h=To:Subject:From:Message-Id:Date; b=FK4yjtKG7kCgr7NKC2uUUZWEBcYt9ufIm6ZJXK2g2TY+GSm0fCeyzz9bELRQ1qwDTFTZJdHMQnGNY9DYtnvjVItxrxahzmrOFdZIgpGXq6BI4kYVbmB59MB463L35tyx2B76tkpEr8rtuO1RNZCtL5Z8aVtIKhylhzvEiIq8btM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cb1DUbvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cb1DUbvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCBAC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790508633;
	bh=ggMhKGJlBEbUK0v9SJwOiiWjiiKX6ES5kApgGef3Mxo=;
	h=To:Subject:From:Date:From;
	b=cb1DUbvpBI+BZMNMXcY1/H3827OL2FGJTJqvPjctYWkJd1gEwQ4zO0YpwjLSyIbLe
	 B+Hmujx5E+XFrUkHjkY9uMRJambZTl4hPUGyaGD/jwbeUxcwvjoU/qMU+JOm4LRAJX
	 TSfY+dMg4zLuvRkJczk9VN8KJOdewPwGZ9LSn47o/LKIpEuxhAGlC5W10AWgF4r/vC
	 1qCkF3SOeZ/QlwgtmfaynfU0rKVMhIFloeEZ4FCqlNg9uPRAhsmXESn22n5OS8DIGf
	 4OfVCwUdexI+lhafwmJ00HAEqY1ArPczXOz0J77MNkDiR2Obh2P4AzWLGWpT8ftx0I
	 b5mVZXcPwL2HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA459C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179050863368.5032.17795537854078900470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d87f6508791a68f7b739a4a6dbf6d16d1066426236f574ac603d73c8ec1570
Date: Sun, 27 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790508633
