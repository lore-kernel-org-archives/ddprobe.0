Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7FBE17C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727025353; cv=none; b=sm/du+QPXzA39WWVWVxzFySLw8qb18+tAVS4LHVKf3CfpwJ15CXM/9f2yFZF1LkBRx6HJahHbVuC56Gm6iaavCtBXYwVjWsL6+GE3JdW1Jl8lNIhjP8aTYVt7hfcDyYpvz05qbY5Z8zEnh/po0MzWoJpc+yo4bODNCBGGB5g2XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727025353; c=relaxed/simple;
	bh=85+doDO9SfvaEaRz7+0PDHSCDWNJymipVAzXKAortyU=;
	h=To:Subject:From:Message-Id:Date; b=PTssnMtQhnfVPncXIMv2K8CQbIxt+pZoUZ97yNBcvdPr0RfDAtRvQd5BRfuzAbXKAnJXVoaDfqV7351LywI7djuQf1FZ8V8KpR3GQiKXh0HnQ/23vn0Pdz/GAnaOX3slpFY8Gt0paPPEPIe3fnIGbM003wjhU2rAeVwXFTUpEgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xh2oMtwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xh2oMtwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE76DC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727025353;
	bh=85+doDO9SfvaEaRz7+0PDHSCDWNJymipVAzXKAortyU=;
	h=To:Subject:From:Date:From;
	b=Xh2oMtwuY9zK5C1pydPbrvM5tNBf4Cf2zrEsCCLauCGGLH09VT3eXy5SMFnscQNfk
	 1Iw09FjsH75vUpQoG5I7+qR+RlmxM59sIsvgp9NvfkQP1S3d8ITDaCEpL2X7GOPE9v
	 FhKGN1nBnJukERanq4mvnRFnUYIEDFl5extBkgJufJCdCproaZY0dD00e7Gmg+MXw5
	 rusaShX2lkYEujPcmOrmL2Lldu4RTC2BGyMx4XgIFbYNl3cBisnizrHzy48eMy8osq
	 giGFXonQu2EL2Pl3kAqfQLVqzS0WMG+x1gR1QA+92dd101BamdqgHe+/puYNL9O0Vw
	 TiMi4nGKntdDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BA3CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172702535359.2511.16294771916327690581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964ecb01ff43a8ea8978e694545762b0aa5999829365e0ff7f2e5a4dcbbdd061
Date: Sun, 22 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727025353
