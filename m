Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2501814E2E2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745528994; cv=none; b=mCJ+SDJOu17GqTE+98AImDdH5ltdkIDruQMEFq4+WkGvz1xBT9gNQVQLZXpyu43RZ4smUBhYMYQbn+jlAz8jO2VRypi0thZ3KVFdEACCrNrsb4WxJ0RlhGV7v4DAe58M81RHsCGAVI9ALG7TuEED5GTae6CrxZftyJ21Sxwr2So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745528994; c=relaxed/simple;
	bh=eqYHPSe/YEIoOiOWBZND06Jhb3gsbSE7s94uP14aCJY=;
	h=To:Subject:From:Message-Id:Date; b=N5kyylVmn+ByjXXUw6KEdotZKf6xF8/7z1ls80Z7AHv0TOVSFZ5QB1cKPG8YtLMWKudCMaW4TgYh3gPICEsZtxnX4VzIE2+SuvLlWSxh8mFP8W7M3FfklywGRCiasIIQVTKeAfOWrXPm47h/Vvlof15+zetn+TG1J7YHDmBJhwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcytQ88L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcytQ88L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C1DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745528993;
	bh=eqYHPSe/YEIoOiOWBZND06Jhb3gsbSE7s94uP14aCJY=;
	h=To:Subject:From:Date:From;
	b=jcytQ88LC35/4P9ZpotCkvmQxT9sWhVNycFqKFMkCqnCkSvx3kGS8vi4Bs+9YCZ8B
	 7iQOT2xkjHU334z0zplNIZuruws6oWcGbDIBcVkEwtP3lZRC10KHPOLl2xuohI1JF5
	 b6L7dud9GrOI4pcYTgI4GzDwPUXLhmvkzziacL2LsNUmk5EfeTycLLFDzuPyYsEWzr
	 l03YxDftd/7JSx+Y7y8WqU193nR1owmd3bf4Slini3OtlvPNL+zlvK8c7gvvl89eMQ
	 9/wxX68m8rBZkUqJjUfrLnHHnSe1qqIFsTzPQEaiDSk6HZdnz2NctPh2AVtdr1PYsm
	 oX5hzvJzqshzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDAFC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174552899358.1977.9847913943072184453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b90b7f252d1b695c912c159552098c472d57564cc752e072bd959c068b0b8b0a
Date: Thu, 24 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745528993
