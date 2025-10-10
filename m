Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E0723D7CA
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760118595; cv=none; b=QLEJnyh0g2sXQxz2H+/AV6C/NayJkdf27an59aaog7Su5Dkudbvt+4tap3GYEv9qdFft8b+lt1U8yIYJRSIyPlb+HEIXmUa7CX/oD2wsQJx70p55ciSFpoS/nhAAgD50jpwffT8A1HiIt8oBJ1TIfZQnPc/G08Ca3enfRUk5P6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760118595; c=relaxed/simple;
	bh=r2aNSrwkRRK4GAa4aunPDzo8/MB3o4H5u/AGLJe5G5U=;
	h=To:Subject:From:Message-Id:Date; b=kterFeTYwU61QN8j3BFuR0jORQK2f8290mi/ilQw6uAlh5519QOA2cKXiC7kmZ2gbiND42d0sCCqO154Uvct31CHdbEX6VkQuO2SwldwT1mgMkQK1CK86Dd7N6na1vWUp5fD+8SUiFI7YTyitgcznJO4thb9/+AKrg142bNepCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IiH18xf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IiH18xf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A308DC4CEFE
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760118594;
	bh=r2aNSrwkRRK4GAa4aunPDzo8/MB3o4H5u/AGLJe5G5U=;
	h=To:Subject:From:Date:From;
	b=IiH18xf94P0RTFed97AinCPtrSzOEyMEV3RfZqU4zTDWKl1pBuQavDJ4UfqbsEIYM
	 1HqhmDGhJ74XE7W84bLAsC6WQEgGJhaSKdBH5psIFF7mmGv4OlP6ST65+4mfRucySZ
	 Jtqw6hY317AigWvX/qgIB01M/ytoeCTTvDzOF2W6Y9RVddRojIDFjp4ylnumbp/+Gf
	 3VykzXBxJEogWynPwZ1bVObfrYnZWbhsCNizjMDnRMhgkhIUYXP1EmquIF/BqVumAF
	 ULPN7U4udd6PSx2Xyay9tx46Wkg1thOkk379lwEMR/qBTIvaaoWrYWx6BztXfkBWXs
	 rp/stwK2XRZdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9076ACCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176011859358.31467.7658200884232213947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c8ea0ee5f8a94a0ef3f6f8da5bdc8ac573960da9121829898e9d6658f541751
Date: Fri, 10 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760118593
