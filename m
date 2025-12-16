Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B186265CBE
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765916634; cv=none; b=Pllo8SUqxvPGswrhpk96jwK/hV5v71I7+gumknJQuHymck+zEZlExo8KjQTVc+ZLaFssFLJ1dHBWqXzSDGNLoN/KgPVskmsgLwmL6AqlP1jq3976A+tXyYyokslCJplvfbMxtzbuCvnYyHXvI9I/s1PiaS+tC2J7NBJ9J7kSwWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765916634; c=relaxed/simple;
	bh=XVQjxaaqZwJtq7HQRfqhDP4cM6BswemhiSWGaYHjdKM=;
	h=To:Subject:From:Message-Id:Date; b=ZIAYCdaAkQ6RBg9VfX4XWCea152g0QAXF5PwiaelxJXQYVA0lSgVVOVqTc3ybiolJCKv2USV7he7/2UCwqAuS3ONWbOZa2zHsVnGKl9h9Hg6gE1mCN1/aLJLwwMQuTGYge+w9yMTgXteD8HcvKTdjwNG1/6ynom4d8j+tCQO4Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hd2lLIWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hd2lLIWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39BDC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765916633;
	bh=XVQjxaaqZwJtq7HQRfqhDP4cM6BswemhiSWGaYHjdKM=;
	h=To:Subject:From:Date:From;
	b=Hd2lLIWKjUmWrxyvYquGmJwKUgLzYxa7Tlw5av/QYQfNjF44Zw9ZmPyCgQHRMNLYt
	 OME7h4gA6UrvlRG+Jpv+vFEqn0VPugnppnj2m503DrlsdHrfTlHrb2qxcOqCkkWpGB
	 qqseg9OwnfetOhvmlFSQRclScQ15/x3WiP3pIgyOXX6GoLUZiMvNYRe1H6gOjj1zQj
	 H77SiWid1f0zCWNlQI8q78T5okBD+AJFFUGPJA7x9z7A/UwI5G3tuAJoBA0Ser2NsU
	 LyNtg4ZsrnkZ3Jv2vaPi178v7TWXs3D+dG2E/S+PzI1cTjYPCVkEDrRRNHeHFjyG8m
	 I2WIjjz2l6ORg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FFED637A1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176591663358.24529.2615847677494459167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40e5b35bc699d09af1f4e42778b003437c5d0f4d99ca167b9e87d44c7c85b0b
Date: Tue, 16 Dec 2025 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765916633
