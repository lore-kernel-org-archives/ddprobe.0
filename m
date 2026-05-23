Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E6B28DB46
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779549754; cv=none; b=IXSZchjLgn9dgDex5Xrhl6olC4OKfDiYNhzbqpkNJNAH61Ot5N7TH3AXZMJ9hekOX0A0/8hdzZKAYq11rPct64CfjojOfB2N8hv/+09c8Fm+OATSHMTmuL4Bw4zgGBs2KTJGTtpumDY2gVAkY1IK5HWrbzwRbn7ED2G1kG7fq0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779549754; c=relaxed/simple;
	bh=XsUXIqLBddRakBFKgIwnI9xMoupCUHPl16nrhgJhBFs=;
	h=To:Subject:From:Message-Id:Date; b=H61x9kNFdBJnlOeD2eQu5Q+gWyy6JBG88/t20Zv/EnKSSi4sW762tDO6GIFtJlyZw2c0YFOizH3k6vvih+Z52zq5TVC9AUScYiPpck3Hy07BJri6cKDgt6TYyzYhu8zr2wW1wiq0sjzikAONmNxcPwsETBMVIK6Rmp+aQMq2Zqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Za6fsrPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Za6fsrPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8CBC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779549753;
	bh=XsUXIqLBddRakBFKgIwnI9xMoupCUHPl16nrhgJhBFs=;
	h=To:Subject:From:Date:From;
	b=Za6fsrPWsoMUUfos0Ga6mzKlocpvXUxr5Pce1n3V6egqcqKSDSL2Pw+4P3/W2Zl83
	 GDGI4T1txjO4GrCkJdM8/SIFbcPC5+mrFRaZOI0sJiLUfliWcfuCKGDs3vSeyqHcAZ
	 HpfEGXt9cgiKNeU8JeLKJSGqcas7y2e0AmeW5OkgTAGD3sE5/zXO475oygenLuHltN
	 jf4oFotJgm1IUqyUY4otrHn2NP3VnOqUTiDwHEi3DYQJkZnYyZ3qZp7GxitDZwGxIH
	 B31UhcnVVjP0plrYN8zq+JXGUTBTgnaEnPPORhFXybIaKiH2ZSk9GO/QiXqXhrwOkB
	 37ZA7jV59KLFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F54CD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177954975368.10987.14358564480937611459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792a098d138908ae9a94a1bc4315fa4e7c067e56569143d69751f2b8e6c816fc
Date: Sat, 23 May 2026 15:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779549753
