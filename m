Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B17233CEB5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763560915; cv=none; b=QjYlB5HRcY89ECn5tILehD2CbitQ7Qp2FiwBbqijUsKEXSGCl96JhuRfs3QM+wUcXbjskB1r51k/xAIgo4HfF4HYXG40fpT8KatVTXkJ/hUEtyilgio+R3AnM6rup75PnBNTQT2OQvF1AMLp4ET/ZUqapPtF3k8x7p9SuqjsUfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763560915; c=relaxed/simple;
	bh=yG+UVl2TNNshqClgEIU7ymcSXk6AgmkOJ7yMyo6Da+Y=;
	h=To:Subject:From:Message-Id:Date; b=oBdI1e/jjTbaBRxsE+Hdugt/sh8ljJ7HV+A4ZAux/3VyTjOt0sx6TnEy4orOT3aDIMKAbmN1SXyEYI/YSOPQKE7CMCoC2tyMAyZOz112UIumG3oUKET7riYsvvRjorOk5hxzIgP86qDqLzC+bMHaNJ62vyZswtF5nxNHDxsqDj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjlbFjLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjlbFjLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96ADC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763560913;
	bh=yG+UVl2TNNshqClgEIU7ymcSXk6AgmkOJ7yMyo6Da+Y=;
	h=To:Subject:From:Date:From;
	b=qjlbFjLdK7P1zsQ2baE+0M6dgGVzvPMzADKweJrNBVfQfa3VWRDIP/a+G2ONNi1Ge
	 PTa58O1bimRQliU/f3tOF1DEerGXRFE9CcHAqbqoXjSIj+PfnzlutSszt1AQXgQGAG
	 zUIUKEXN0KWfeMkQFf4vPCJeP8WscT7D/2JmWR4zmCHYWpElSv/PNNqhyoYbYroY2E
	 TBdIih3lIHMAVFcfUYC5ySqf0L1AGpfNWD+7M5EFRQkJ0JTeYaTfPkJzvTsw9dDAwF
	 hbDW1MdYmIdmVLrrWRIS96+CZP9tS47JADmPpESx+aa3n5LT7o0vALNBM7lf9J6Vqj
	 Zpm9Gd+qD2BpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919F9CF34B2
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176356091358.17171.3884057676989601943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f19d373c2dc4cbca2954516397542932bcecc7a2d1b84dbff68dde7fd65c412
Date: Wed, 19 Nov 2025 14:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763560913
