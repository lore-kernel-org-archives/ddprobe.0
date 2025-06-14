Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DEC1E2823
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749900594; cv=none; b=s1SCBCrH5tq6Ltf6oomjqIEat7/3X04XtUGOXyJUOzDFbO8h2vU4dhzKvn6eTKUm0Cm3ZXLpYKnjGrX30xk7lGD6dyW/QhXwsaMGuEEWcZfqGTqI58m9eqdUX8Q92GtHrDCARVN0Y+UpNKCVEtwZMKmK3t/BzVaYBFs0L63rF5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749900594; c=relaxed/simple;
	bh=hq7EfItiG0wHjrelDZL44RuVTlgv+iPxw2DDBgKnatI=;
	h=To:Subject:From:Message-Id:Date; b=MtmpekmsARe4l8Xc0Ea+LTapZBFE5p9SAmjV6N2GHHNJ/rbv4ho068lbPa9RKn5Stwv6a/+2vAhXa3EiS6or//DmKJNWCeKcjWAsJznEm4FPsf2s3sAQ65pEEvJMejeeVv2i6ATD+nvUZC1qFvzbEs7R28YGep98Rzsrwt1bPxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jW/QypN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jW/QypN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27D7C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749900593;
	bh=hq7EfItiG0wHjrelDZL44RuVTlgv+iPxw2DDBgKnatI=;
	h=To:Subject:From:Date:From;
	b=jW/QypN0jpAGlLXiAFrTKKYjLzWM3Ee5M67/+978KuFAQ+/E3iFm4x1/50t72CYdq
	 sDd4tH/Gh9u2Mm6MRIX943x+8GpclOCRj3fiVQvCFgOWGLSKbcmLcTiecB+kySRVKN
	 1/qoyK+ecE8JaWMinAesesqjBhOAIrXWzzSlCmyAAoc9a2O4IoDj9rU4RjRhCXpoBi
	 fF1xYM+tnHjhomWxOieDckNMBBtNwM/wtL9C1AzUdiB583A/tNWtvD12DFf/SSs7Vj
	 HEKGmsaYEq4z9hyzccNhthwRn2M7gXmTFKYCZWlBzZOZCXnshOo2CcafDh/WZj2KHC
	 RlpgCPaghtnIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6B0C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174990059360.10046.7398298678255153574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a4b76d3b84f74816b5468e07eb76e25eb57f1c69aa5a1492ad6a5b47cd2d39
Date: Sat, 14 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749900593
