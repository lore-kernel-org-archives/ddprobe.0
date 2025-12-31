Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F1F41754
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767143034; cv=none; b=q8au2n07ra9+mFUiDoXUdN0XEJYpVvmWNpBQFBPzpvsz6zJqwM6mRyS8gR4umb8l91Gg1XFbZ+OBBLKkMBIXr5Vpfi+Z4+y9uN4uLSPPebMt8oir2DCP1bYfI+ScdNO75+XpwSJE8uhqOHSV216cpXrFXN35XfpE9mVOD+bIu1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767143034; c=relaxed/simple;
	bh=tjKswZqNFn9ErgjqwCjedNpI18vcWUQsVAzo/0N2JG0=;
	h=To:Subject:From:Message-Id:Date; b=b2Aupj5pCkPz6BgtPLuMcLfiELQ9bY8Lnc7be7vTBJ0aIEhNfcCRPmj3TyF5hHyGylR1vzNbBIniB8GLVd4JmjYugtMzGiPY74UeQkRREQAp/IVtFbpmWikaW9SCFSxDK51dg0cpihedH4YPV7v++lfs7EI6rAVwdVQfJvqKsbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vI0jnLa5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vI0jnLa5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9338C116C6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767143033;
	bh=tjKswZqNFn9ErgjqwCjedNpI18vcWUQsVAzo/0N2JG0=;
	h=To:Subject:From:Date:From;
	b=vI0jnLa5QvhHaqkNrdmT/lsSJbEGFV0EKeOQuRu8TD2x9rk8j3kniiwkpgHDp5ndD
	 UDSz1Kkt5k/8J77B0QBctSthKYbtQanFnmjg5mtzv7uj+Ay7KuukQsZjLA8zo+XkO8
	 Ut4e6S0f/IehiGgKicXGoFFXSXMTvE4Oa7andc4A3tfgs3q3IA5A1uB3SGp86q9YUP
	 /uFdDwdorXcT8+5iTZGugEFUSYShWa8gYeV+Aqv9KP31onv06RtI/j5josY9C8aHOt
	 rcg55tmaCo7o1dTuFxR64nU8Jx4nmtkMRGxPBapYv3IhsbWJQ1QT6kA1GD0Zjj/oJ0
	 ZQ4P7ahfjshAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957F1EE57CA
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176714303359.12291.6080393565212453747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 482d198ce25d6ec9ce75917b1b6d51a5684086e6c286f786bd3092a389dae8c7
Date: Wed, 31 Dec 2025 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767143033
