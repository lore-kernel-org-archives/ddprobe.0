Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425AA1F61C
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728171954; cv=none; b=ub0Su1jKSqERY0V4zoX6XSpYhflnuDsPnbIIZJ402fMAQjCq4FXCoSYdGmIcG8Pv6P5R8HkqB4UirHplpi3xCWt8uqfDBM7UVHz0xTY0GNN6kLKi85211MkZHI3WblieUL53iakJZeg+P91wOlM1P5+8ADJX/AceeIfsJryDcsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728171954; c=relaxed/simple;
	bh=TBQj/VMQkEAuOdV1TIHEvg6GnxsqwC4zuNL+c6ogL/s=;
	h=To:Subject:From:Message-Id:Date; b=Kb6zwV0U3WbkbVjsGRfe7rVOA8qjVJgnb/H4L/wveoYqnRgdHXOTizF6ppF/rzQAlwy4wzTn01sUTjVI712iA+93ECZqjvhozvoT3j23cUnYNcCBBLK/diG+T8/MrBWDQb2IHd3UAhPM1scvpnBXukX1XWZVTuIyyOVTSZErPEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7EuPpWX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7EuPpWX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2896C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728171953;
	bh=TBQj/VMQkEAuOdV1TIHEvg6GnxsqwC4zuNL+c6ogL/s=;
	h=To:Subject:From:Date:From;
	b=e7EuPpWXqb9Ugql2eZ/0Qu/6WwRlc83AyBlSRKyQyvHaEOxVdn2LI9vKjO//gZk8W
	 U2JdwpVM8v29Tkk5dJAN25FAl7hfNe5BHAHzSLb1uIm8G/sSA1G52Gc8zisXK4Dzoc
	 C6CiB61uel7Chr8dIUBrtOaUb0F+Fou8nE9d4W2hrirobidCGw1XHI/gHlTeAcv4tL
	 3kHUcJGEOWvWS3tzKFNeEBeNILmwULh1lG1COrAKPYr/p1ORfF85kgXDJ/wfZ2GJii
	 cYvyqT9geoONikEcu6+oBV2Ns8iucY/PQ6CWSnsdikbqLFMkMYPxhhYh3zGpNohXjD
	 wGWz+BLI5kjCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1AC5CFB421
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172817195359.30423.7163605570787668771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7320535abacb3036fb68b06c06e2baed7e949b4ff52f3334550f863885274afc
Date: Sat, 05 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728171953
