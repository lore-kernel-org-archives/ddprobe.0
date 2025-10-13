Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CC82DF139
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760346594; cv=none; b=DJFPHnGZSUAXkZ5SWoEMuJkt0ItE/mf7uYPQE8pA3VoigUMEaojLgItaPpGeWGVNncLjnY/pARY8FsH5jQU8i0cYtR9k+SRYTOa24qNSuy2gqQfpSIDhS3f8s8kAzzaUSkLQ0m2Btv+gMDQtPW4uOuaNnH0UBvjNI7r41d+FLOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760346594; c=relaxed/simple;
	bh=+0lO4y6EOm8VSMrNNy5PogfFrGSHvc08e6YIy54IzDM=;
	h=To:Subject:From:Message-Id:Date; b=ATFijniyDEnAuAN/1qdNecplVb1JOr+k3U0aKaJ80Mqi9XQcas63A25YkgMDY02nAPFKRQhn1rKGoxaTwkQS0rde9rgewZHpc+CPtTiwz8O2NuJPHzcN0cu5rR5/2hsMDtFGmsZscVY0paSw5C1ifFrZZIPt/P0gNQ6KNVYLdu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UVJ1wOah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UVJ1wOah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19E4C116B1
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760346593;
	bh=+0lO4y6EOm8VSMrNNy5PogfFrGSHvc08e6YIy54IzDM=;
	h=To:Subject:From:Date:From;
	b=UVJ1wOahOO2kpUOEPMG6MBvSYsnDmIUEyohD1V1GuBOkEsZTuBtLDxXOaZibdBIdX
	 LeNPtz6Urdahfc66ZxPqWQ0v9lj1Eix8A8omX4Etvz/gEgQBnSPz1SfiTI9KlQ470l
	 yMaT7zUK8JQRgzcTbXcIz1k9A8aPXTtcmr/0STtsSXya4k4P5gMO/LFkw4Zb4YMM5C
	 +BS6N5sE4k+56yyjg9hxFDwfZ4uq+/ANkwM2FZian2ItRokI9xITWKxxqKlz68BeUg
	 xRI2j8+9RK+Ny4JE3V9lQnpkcRVQNU1FzJGE3mEKBFtANh721OxJ/2eCWxBgTWNuA1
	 eytPdkA8QeIIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F952CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176034659357.9683.5614216000320007333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 705e0fde6015493ad70572c66aafd3046608582fe786c083a0896475db6e4a3b
Date: Mon, 13 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760346593
