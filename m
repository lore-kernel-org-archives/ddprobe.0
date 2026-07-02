Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFA24C6EE8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782986314; cv=none; b=eoRwChmZTdxvox5T3T7i2HOhRrzHKufmjWgPsYB5T0jOPs50+E0RUSwg7qFim/4s3/Qcs7LtIz/l9qyL2DA4Vv07Ka08oWFteibd6N3DnpEwDavZawbWYoltLS23Af4chPgl8hauEYiafgWAc9c36ymKk+Pt2sB6PZP3gKbAv/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782986314; c=relaxed/simple;
	bh=YGxB172daPGb+M7INtcD84fM1Mpbpj9DORaVe0uv4F4=;
	h=To:Subject:From:Message-Id:Date; b=mJgc6K2GCR5N51fj72x7n+OAD6C5rxLMbCJfve2C8OMSIQ+lfQ3NpfUD5KDYWUU0sFciwAKn2diHz/KeFon+qexsE8x3ijJ+z/+gsiUFTZ5pGMQ86SrYThMtq3fbwVYL0B4dv7xa2tbyMXcYnV2yEA8NrwYnaR6ily6dfXo1Haw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bInu2GWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bInu2GWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E77C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782986313;
	bh=YGxB172daPGb+M7INtcD84fM1Mpbpj9DORaVe0uv4F4=;
	h=To:Subject:From:Date:From;
	b=bInu2GWo5waijPlmiqnL86vuI17U84A2o6W5KGrkNs4HWwGpj68OO+/X4Q4JvFADL
	 6xJtDwGgx1vMlIoMgiGjDsk5XdsF+qTPFEWCYvGU2Sf4m8mSWwp67TTD7axpCmeHs1
	 GLBVC0Hdp4+a9bsTGgjn8f/RBoMQXN/o3gjRCy0NeaaLA8XkYeSH64qqriEB/oie3t
	 Zez5HFFnoJ7ia0MgXQmB9PyA31zEjIhWuZTNMyyjdEuS3psDDKeFWMvQz9jsMp3ihF
	 rv1Uwmd5KM7Cy7EdVQuTd5abuGlcOclSMnJYjC4SRsMAxPu4cQ0L05H7eHwPuFZpJW
	 moATilaqsBEPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E3FC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178298631368.5100.14113971435157657108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81266d4cdd3bf98bfcd5436d58ba34f55d9a78c27d79d3e3bddf802c70ca5ff5
Date: Thu, 02 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782986313
