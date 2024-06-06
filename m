Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E2019538A
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 11:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717673843; cv=none; b=pxL7ojZZPJvSAUogKdUEzqD2xb/vRMjtYF3pFu9oT+WX1jaRcybIwrm+YbhquEgkhsALf79kYQdrgZd2qXCNLCMXVhj6Eo92o9doi1kqhXtcTWM6zgVLyk/1d8NSsR/8cCw4+SvqhKdZ316AvUY1jusQrhQSV3S0BdEBfsph+/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717673843; c=relaxed/simple;
	bh=dlqnVTd2ghuk3JjYUFpfrTj1KFTFn0qfs7tclNykeYg=;
	h=To:Subject:From:Message-Id:Date; b=NeZ0YUlejIz6gILp2OM3CRRV98KOClndQaLOvIecwllemSzxWBEeaDQgm4jMNP4+AlgEIzRYTqADs4yOPHQSWw9Rmhn1WTfR91VBU4RnbyWm9BF0uTCuW/jg7ufn5sJzBYchxpImO+ZVfShUqj8CbOwAkTTLb0pZ4Rwnk79RsSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzdC19rg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzdC19rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1247AC4AF07
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 11:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717673843;
	bh=dlqnVTd2ghuk3JjYUFpfrTj1KFTFn0qfs7tclNykeYg=;
	h=To:Subject:From:Date:From;
	b=pzdC19rgS1Ck4JhuX6JMTRstspQBCV5eEXKltVpWEOu2l0FT4zbBkFRpQzOhcG3+E
	 R6VGZG9dkMnqNfBsNDCPdyvbCXCr0EL52tsKMJ3r1MSvPpHGnpyB3tJVWU28McmySm
	 UPkdgXxG31t0AmNYb2dND7KZj0DuisaVa9er4BwmyrDMKpzDgo4lG60NkvP7NEyN4M
	 PMlpP8uHcIcvqY95jF/pwazdQQPXDdLfV+6C4UBO8nspM908x2GxNa3Oeg5zyLglh9
	 PCAlJU6/gThVa+Yqfu3ISljZtf6EoFfEpIxMmO8fqfcLaEXRxjdnPo5Y+Wvzznwx3+
	 Z2/WLepz/4wIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E85ACC27C55
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 11:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171767384293.22770.11118420013456421991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c678a018cebcdc1046ae66676f44856b2c1e7adfd2177a981f5b645ca5be3599
Date: Thu, 06 Jun 2024 11:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717673842
