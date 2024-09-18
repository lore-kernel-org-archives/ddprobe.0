Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419D13D69
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726620954; cv=none; b=I8+24ZBf6l6ir1t2m47FWyjuBfP93l5Fl/0XTM8fusOJRDt5Tk29gLbX7gyVdbPDCCFCv/3XfF+43xFtOJ6EHiKuGQY5uL+a6wher6ZzZGbnQAYhJUzpfNQlKGAM8P7GeymZbclZWzM/dcjM4jGd9oF+/f/CrCWr3jFFRZsx928=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726620954; c=relaxed/simple;
	bh=cA5QEfhW9UKjixN68kh4PQ2Y2WNZfSXhl7sb5S6oc38=;
	h=To:Subject:From:Message-Id:Date; b=NLf5H0KmHppM+4b0QsSNLwqp6/EI/W+RyHrU3nNVUvYxKH38Liq0Bddj7BDTcH4BKwgpF3Ypppfz2KJHC23f6/+Uat/wMji6h3Zk8PcI4Os4k8Zr93N35Ra/m21cNC2s9rRZ4cqxPtWdHmulKO5Ok9+RhXggbWbvmsz/FDpG76k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/TmFw+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/TmFw+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A06C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726620953;
	bh=cA5QEfhW9UKjixN68kh4PQ2Y2WNZfSXhl7sb5S6oc38=;
	h=To:Subject:From:Date:From;
	b=K/TmFw+1DRgHcCmU9sSt9GaoqrFC0zRFoSh3085sxLes+qopEfAIq6+J2WjJ3KF46
	 8j/yqUldCyZzcPWZgkHbWp1d8CUjfjc6KeHALPjM84b2gUd7/XrntBrYPfTo+s0gl7
	 FX2MyVAP2+mU7r7EFqQkJ7TZxmzyPtle0nxfDDMm0Otd6M+6jWeBKMRGNcRHdkURYx
	 iaWHaa1Bt/36pnZzTT0j1BTjwhGc00morbuA3Yjs2ElVihQOKm6Yj8zDEe2jCMm0+l
	 YHQpE1qmNUKs/jxrB92pQh0emKmrbQgtqXVacqd6W705myEM/kHb70CJikD48B0TwY
	 wj/49psU/u2/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A46D6CAC5B2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172662095366.14611.11545114289681987178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae84312af474b90bdc76dff6bfa00b099b1ecf2d39d1fc9024dbc94f4691dd0
Date: Wed, 18 Sep 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726620953
