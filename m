Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10227242D84
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783046914; cv=none; b=MET2vdqwWIV9rxD+PB0EXDEDahdlHBJcSfnmDO6V8XPpoMkmCH6b+4HwhquBa8dHcKNmY+Vi2o9tBu5nENSJfS3jifxYnA87h1FTnoFXjteNPyp/kibmXY6OPAjDdMTS2Am/BCQalf74RRZa5ovieydLMZhROirxlkEfYQ6BXAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783046914; c=relaxed/simple;
	bh=WvX4WQQLw0NtIgNIoxWOqtulwdoPdsXofvm6qst0y0A=;
	h=To:Subject:From:Message-Id:Date; b=K6gSMuOlmpFclk8Kcw0CVF3+65pETmCNAOK5gC/2+hdF9Yv7mmK1JOS836XwC/KYvUPRBMpa88hzxLCh9eOCAmr/0hw6pfoCTu1sQn5ZO9WwLWBkfMQ5kWO6e3rql6DruiKsp4eUvaXyVI29WMPXrYRYegR4HJB0MSBIbiPe9u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYGrNiEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYGrNiEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB539C19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783046913;
	bh=WvX4WQQLw0NtIgNIoxWOqtulwdoPdsXofvm6qst0y0A=;
	h=To:Subject:From:Date:From;
	b=BYGrNiEnH/61QlXW8mdwJ+IkhxduLjPSe06ZPVxjpumFrGVDGZxpoGo5RkTXSsteM
	 HnIEDsibfFmFqW/vt9dLyjyYDBoK3O9ehAqels6RkQ7CndTpmJLSXyPi9m4q26JbZW
	 +6i0KIug2C79hHAlK3xGNqZJRvHrXa4Dul0KwJ1YgaUFe+onFoMRgIIo266qU9lKeN
	 m+tld5q+frPazTvBqyyKh3CTFbcgJ37TIYfizEjv/p/yfH3lT8K+T3tzqwHqIQProZ
	 csQF4oe7OFOQGPwflwfSG8y6Z+c7QEWo0TdBiloyKnPgX8VHtAS8YMQaBdk15OfP6Q
	 sZHX6cFRRhNfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DF4C43327
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178304691368.21627.16870651434385041578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef029a9f2ebe0ee1bea8c62a72da02a33b52d7a548e0a37f2141bad76ddb602
Date: Fri, 03 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783046913
