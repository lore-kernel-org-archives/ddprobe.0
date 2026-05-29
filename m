Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228382AF00
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780032754; cv=none; b=SU92lnUog1464cMKd9xHhcKuuIeZE8WZcat0sD2fBI4SIMLJJ2lsGoIjUfLEbeqEayjE0xRABrcehhXMOfqwf7RLcCvw6QT15RRCMZTLD+Tpq4lNVEm1r7OcCYtHHtbJVFLhOIPVzIxHLNwD7QkkSE0vuchtc+BMAiajwrk4ISU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780032754; c=relaxed/simple;
	bh=udGaIgK7pxCFp+hQ7oXbJL0chrn9ki99DSKbwEKvZhA=;
	h=To:Subject:From:Message-Id:Date; b=XFL1hopvYKQi7rMXjXphhvlpsF+23JZwlfDXcfxyF9YC5TOL5o0GAcO/L4dTwJKl3/kthal4YFexpac8f6axCIcfyc2stEXrWlfLBExcYaz7GgG1krmPnCNXppNLBFPkG8HD4f0tvClh0WzjGPWxAErRoVCXW1257teXkeb7YYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvNpWq9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvNpWq9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF26CC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780032753;
	bh=udGaIgK7pxCFp+hQ7oXbJL0chrn9ki99DSKbwEKvZhA=;
	h=To:Subject:From:Date:From;
	b=rvNpWq9a2Epu3ZFtZWwxPPtjHmEVcBZQp4crC+3CQw1j5Zg6JvsVDXnyKthLMe/IZ
	 yz2aY84FOiYKk/w3yqa7gCjtEiGJUo6UmFPnN/jRqSUTGsDmrYnygE7zYzg7OaNxWb
	 Z0IRFCzUh1ZHR/56YiN6kVL2Dgvy9Rr+qu4VDg+fqtsV0FJw9aT9XvFLAB7g8fHGon
	 zBG51Kq2B6NvmQU4sRsNl1O5qOyMEqYv+QH3QhSjcGtBvBpQx9rieQURX3Oso0MDHX
	 vqajpVEoa9dvld3KdxK8FpXfvFqAPSFzBUrH5E+5tQpCMdbiLKz5yd7iQ5Hqlg/7Cz
	 rSDgjp6WpEnMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8518CD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178003275368.15804.13462381931289694499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04f786dd77bcef0d97d8f4fb0d9e1af7c519a80373d3d04c241b47bb9693991
Date: Fri, 29 May 2026 05:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780032753
