Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FCE1F4608
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749122994; cv=none; b=mTfwDmwMxrbyvp5gxwiPhd/W03w0jBYFF/4olfqumkzTlVxF4iPypuEqFVRjGU51BX6G2VuTOHV578i49mJTi8cn/V/91+uAFV9Sj7fH5VvMXWAruHC1poVCPsqdYDj3xFutAC2fUUsGnPuIJ/7zuPR7oJrNt9X32TT3C8eASfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749122994; c=relaxed/simple;
	bh=6FL2jJZEhy0tnW1Gb0I7+A5soyDnqkqrxdwcaGZcHyo=;
	h=To:Subject:From:Message-Id:Date; b=bgeSZ/qzKyOGuj28csqm/FYc7lQvZHsiyD7C+CRusQgqOJnVkL+2uKsRKmzjemGwslftOD9m0LSe9fiYE6eqLcdlnXnrDk9X/ADjM7vf6GbifkIr9taxTB3SUWq3M0gCsOx5zFkCd+5oNqHyJ2WHVPBdKXvKKDg6b7O8+Zfmn/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ay/YBIRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ay/YBIRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D86C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749122993;
	bh=6FL2jJZEhy0tnW1Gb0I7+A5soyDnqkqrxdwcaGZcHyo=;
	h=To:Subject:From:Date:From;
	b=Ay/YBIRluMK4Z+y8kkORUfTuC7sV4cAOYRQo3+Z7Qto4bnnQQDJJrStjnDbma/Sn8
	 qQ1NKzAx5ogLU/M2kt1bBenrMJagG3try1CFbkDpkTRhsp99UMI2Wni2GsYPoX62al
	 aL1ITwqgVk5Mz2kbvClciy40bffIBnkALtxTObaj7C+S+fU3vS2RfBg8FlJUaa96B/
	 IbwbspEIREf3JccjFAzOfm0igEGeiVNXXu3mrbzDUx/LSAxGQuk97seYr2ktpz7reS
	 bT1oXPXTbucDbYN41vB1vlVdOtrpGJa5oVUSoijHiUnQl0M9O9VSOR/vIwj7rxVQux
	 AwvBNN2+dCHCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C5C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174912299357.19219.9890516735731567668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16737cbf2a1e4b0a3ce5afd9ba6739ed9b6bb3f553d54996fa4ff28357fbffcf
Date: Thu, 05 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749122993
