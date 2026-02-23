Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1197B1B78F3
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771831494; cv=none; b=cg7F33rCBad2yCVLmarhPgQQ/VJuQI6eqQNPeywQn7WwqXnj2j+AEMn+14jELXy/vXXDJ3RFlWxi2cVx3MFu535KITrJK7DXAeKS9a/0lGXK5nM//Ul1fR9e6B1qA21118zlB8Fc+NefAAcWZiMr7hdV+OGG2mQJghBbt/W13gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771831494; c=relaxed/simple;
	bh=OKP2yAuPi7Q0gXQRUCJPhtc021vJbtrlD/J3QVfEmT8=;
	h=To:Subject:From:Message-Id:Date; b=eO+M0Al7exW60Pj6c3U4PwgnmDKVVdKRPZR6hclD6GtussL9OYkQLnDsU7+Er2NoduklC1EYmge9KraurJQmmQaDmMkynwIvR8GVmJGqBHItkYNrtZNDg7vkrBk4hLojSLppQ65Jpqx7jyrOKJ9d7flp8sJWbA+efvfiUHLEOKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEMJRf+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEMJRf+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26EEC19421
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771831493;
	bh=OKP2yAuPi7Q0gXQRUCJPhtc021vJbtrlD/J3QVfEmT8=;
	h=To:Subject:From:Date:From;
	b=bEMJRf+39QzzAV1SUcj3EGVNk5iQpmHX3ZSukJ2p+S7rkB6GaaPojNGr/zpY2AaL8
	 r4ORZfA3E35wr4LHwLN+67ET+wgBgJeEuuUBhjmypkXrkSec8XX9ZGaXJCGpNhREde
	 pjLqowjr+6/BYkjG1kP7jHVcKtRRu05xVzsmOlF/mw1m6W+L/XKzItwYnn3aWbD6qn
	 m6PIBIH3CZbgpPmT2C9FUn/T8Djf324sQG0M51Dk5huT+E9mmh9FatwSj3z2olbzhy
	 X1rOaUa5YZGrXWMtYJMLXk55igmGQNPps+UH708bbbuPOpp/0k38bqsCbVIu4DRmAb
	 YVLO/OtEt/Sxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C67E98DEF
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177183149358.1908.1945543192558321802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ec41de1c8e980ceb21e77ab115daf19a93502617ecd26d3c1065f90fc0601d
Date: Mon, 23 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771831493
