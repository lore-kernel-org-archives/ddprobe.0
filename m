Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2904614D717
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735286754; cv=none; b=BzqsOgKxaVwRdnEAtu8XgHW8vuW4/T8WNj5FAdqt101ILa+IK+Vz+RMFqFWgFO0Tus3aBTwTjNLMO4u3+Si30OG9wUuNWBUBSd7mi075cytOAOdVx248+K6IBNHl/aKh9T4Zx7CTby6/fT06fqexlipwuZjVyQ8nJaqtbwT1X88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735286754; c=relaxed/simple;
	bh=TTC+2sqBUnBSEaaldQ8B43DkZDvQ+pfFA3X+OAwtjRI=;
	h=To:Subject:From:Message-Id:Date; b=GmecSwq+nkoAKDc89lJVTHbZcGkTpeZ71GMppxV7SAccAAAJWekSc5R8KNHkk4xmVglvwIca7y5yQ+wUr1hgJb1EKLYGpUlZGM3Jwqz2W3BP4+KaUZsoVfbo5HzJU06e57ZUszHk9qYScV9CjROlyhPYaVFwGxwr1SvaGat2Ncs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9TVP0V6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9TVP0V6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47CAC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735286753;
	bh=TTC+2sqBUnBSEaaldQ8B43DkZDvQ+pfFA3X+OAwtjRI=;
	h=To:Subject:From:Date:From;
	b=A9TVP0V6S0IZW0I5WOYyoocjx4bnCC+Do3x5g3KroAccDIVXrKK2jn3cDpxSKzsra
	 MTqd9Z5WEW2iMmpmUuhEchX8+PLyX2ISdDJzam/M5kICPKv3HjSTGxG81GiAUV1YAI
	 mWhgYl7hCAfnHRJqFjBDuzBpiU4suq6ELLOipVCeIeLN9OArGttZ5qMogsLOy3NKi4
	 4fNPOzlnSD0LMc1fwaeAnkMzcIB9AvtP9PDTFML0D3hxaWOgl+s18tJucwBfRbfhWF
	 G9peQAvhc8ECrRy+O+4OhDc/zdN8b0ftGa1OjrHHyWSKxDL2WqHHxP7rkQBI4KJHUv
	 ugi12joduG+uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9753DE77191
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173528675361.32377.8327543131184221039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7aad08172c965f6f162807d1cf01fe1803c5d0a2dac9a84fe2b8db0e0b3a17
Date: Fri, 27 Dec 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735286753
