Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8FC2D97B8
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776793654; cv=none; b=olgk/Bp749wdZA/g8lsDxahxqqmlrwm8IqphzOrhPFeH6Lj9dJtn5DYZgH/P4sMbEKQuDKSOF6uxUcP8Pfev+njeNr7xGHWOwmWeoJ+bfwe/HWmIpXbsJVWdOYnrShDkB/+7PeGRfqctFydL/WGRvM9CYz2mRdso7B40/eUxbzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776793654; c=relaxed/simple;
	bh=J1AtmuZbNZFuVO+Rd0nETmOz0kIKbVvjbn7tXEpg1Dc=;
	h=To:Subject:From:Message-Id:Date; b=tosEtpuiUTNkBoGlkdb9lRriI5+skwzQ+Y20GHgRK9B2dURLYGl6oxeg/1xY/OGuoJ1yTW2smRKCOZFMdQDe7atcNOchcgPxjAzR70AOxhwKORUPFDsQ9eH53V7tI7sDk7y/VJC9CKzHBMFDgQDyG+2Mzuhj9eZpqAndYtyL42k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIuyVydZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIuyVydZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9370C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776793653;
	bh=J1AtmuZbNZFuVO+Rd0nETmOz0kIKbVvjbn7tXEpg1Dc=;
	h=To:Subject:From:Date:From;
	b=AIuyVydZpccvKQKKRSCx4tFvcq2IPgPTZstoVa3H2wxEHOKlP123tiPb9Olj2eCon
	 48zD1xcYlkD4pT4W6HNPm8DSbrN5ji6Kxsv1O40oZkIJIdYdXafyMDuYByfU91hcod
	 AOE6p3Z+h7KiyDuw/gZ+9tKYZH0bKpMIn2yypWqP2LDfXela9Yu7i2NvmK6i0O3/tF
	 O7GqqHqXFWktuElgAA7kKeEPue8iu3STXM+pvpSWQu1aKcdn1R4D4oh5cEI79tpYLe
	 atzlNHlv8qf4mcvmPOLSKC0THDWDx5efaz6SFR2avfyQECPNvJtAQRJtaJMVJHaLR8
	 tzRLhEBpNGbaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA002F94CA0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177679365368.14269.5819010323272673091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261cea356edb9579a36f28948094e2cdeee64dfdcfbf837fbc36501dbf9beec1
Date: Tue, 21 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776793653
