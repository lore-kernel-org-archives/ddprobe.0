Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC071B95B
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730453754; cv=none; b=R9ZxG0b8KYdsbU6dgGlm5eFqquQhcz+f2aMUbLbFCG2fImXfnde6Rc1pWO9IptqbxXQRzQA194Z588aDbiOTTuO/kngQbyM/VbFtziVauQQNt6q4w3dYxtTq4WGDg71bsfsGcuOFeAXmFy5kuUyaxW9mMzT+Nb1BSfDOsoBTpWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730453754; c=relaxed/simple;
	bh=dR65/drMbYKFB5qGzgeTIm0MC94QPM3nFfb9HBFNHtE=;
	h=To:Subject:From:Message-Id:Date; b=UH4SclNyPohZ+CtTXGT0aRJqr9SrXzK1cA1uR/nwpk/S4lKNwAgiLQXEj9lqAtICe+6YcTjyMDhV1ehaspAOVIO02HMu1TWrhLEkXCNp4lEnd9NCD5snBr/znS+6BSHh8bCsAP85KEzISAQCejppoWUtddEyWYqsZ5nVLe85UC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQjguHZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQjguHZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33E1C4CECF
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730453753;
	bh=dR65/drMbYKFB5qGzgeTIm0MC94QPM3nFfb9HBFNHtE=;
	h=To:Subject:From:Date:From;
	b=gQjguHZpBQsco0lTx84MXezvAl1rng2aszCi1lThyxzcZZE2nxcn5ZE7PpOkVLSlg
	 qpJgE9eSab4xoBfF75WLRHIJ1r31zHDPuxdlapGK5RcKaYK400GLPu4eQIsHfP/Grn
	 wFTSlC8QNo+C8l7eqksoAhZhAC7DK3xUqFC539l/Q+gtylitzJ95NOA56/csNpT6xW
	 jtIR3VjbOmYWkCxwF4ljwqCbvy59Q/A78hVWp8pu65IA6fjNE+fhfuVV1TLtvL9fxJ
	 KESwK9RdkfjMJZaA6ilSZ2NxxtKboVfh9fAZc9fZSkM6ufpdq+mGeZYWy7xSl/NvN3
	 2NcSoX/E4fqAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF7AD767D8
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173045375368.15878.17646849570073703786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc9697b0854d12e23d98dc3c8fde2ad46653f11bb4fc02093c0f27fc0f096dd
Date: Fri, 01 Nov 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730453753
