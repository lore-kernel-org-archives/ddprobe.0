Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341F51FC7C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739576334; cv=none; b=V3jf8igmggLFsL9yrith9UVLYNyeVQ57FUXJaGdPN1i/3512Kr8y7JmW/PaPnY6xj/S7kE/oeVrv55J4ohG6VV1aqm4c6MPaluImCyrrlM5qu+00EjWfujcpl6cammLRPV04pjql2er0bjTdw3QTkQ6sUUWTTlWB5yA8qsjPQLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739576334; c=relaxed/simple;
	bh=XbOUFy6n4ukM4JKxhumCQ2NZfshoOhDAMEbzxKimlxA=;
	h=To:Subject:From:Message-Id:Date; b=FLJ44GON40o5V9RdwmHDgWjHZe5kHLoWegpEtYObBJuT0wyoHCjUCA5P4l+Aw4RMAXv6bGmv5Uo9ENdWM/LUUV4nWMEwbYYieS01UeA6B5mO/lHfWSi8h7Exxun//bsj4pusjJsbYJOXaP3HlthllpSAiu8uNO9MNPw4RxA25bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCoJBnJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCoJBnJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B24C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739576333;
	bh=XbOUFy6n4ukM4JKxhumCQ2NZfshoOhDAMEbzxKimlxA=;
	h=To:Subject:From:Date:From;
	b=lCoJBnJ87b3qGbPN8dzFaLAmMVHk9Di6sbnObisfu1N7AisaG1GSeTUheRvQooRcG
	 v0RiaYdsrdbXUjys1VKiHnmbGuRFErsgXchl8m83S0deagCZCPsOhEEcgS4YFpqTi+
	 3vhtA+B63hVq1vEqhqmlhPb9F67ui1yBCmjm/HDVMb+Wkg3T3KH2HZFR+dcrDiYyal
	 SvvTuAJm9YpzoKHRYqzlDmpMYvb1DNezStYm5XsyiZ7q2ekZNCWCujPkKDgJDN9v3E
	 cN/+LnQRynnNhdcMjwMp24Y9MsvtNNq3kB3BYmC5wJkfuuvBW/nx/2QFvcA1KWL2qf
	 YK7sldvtnzddQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99886C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173957633361.32281.11845862072031808926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5131cd31a0c5e1edbed58d1368e8def3ab01119b85cbf90aefff9801bbe64c9
Date: Fri, 14 Feb 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739576333
