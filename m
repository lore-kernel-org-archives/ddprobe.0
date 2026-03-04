Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C3636EAB3
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772631294; cv=none; b=OQZpr426QHA8d0wla76BWQn5WRSM0U8xdVS0/wMOv8u8TPjc3/UYwENh6xm9RqvIiAb4wHdcL84pWH6zbh41HXk6kATpOC8kewqOV8QhmcpQZH8n6oHlhvXkm10fRUxHZTyy0z7nz+Ka/Ca/0v2mUCVYk/tuGfuDcb8tkpU2UK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772631294; c=relaxed/simple;
	bh=70PkWFxQltSfcSvnLAnm+jxbSkIhw5S3IsMxgAceV9Q=;
	h=To:Subject:From:Message-Id:Date; b=pQC7lU/xp/wBg5rDdgpe5wMfp9EXrvCrGPAA6wYg+9hjnAofLwPdBX9MrpF6mkI4cIzY1Ypx3rxBQdX9dgOLi6U6rujMmjVJxXDJ5eNr5hD+TYBTUzLVbYWMvilxIH7ZxEWRXULqRoFyvMgadYE1QQcRfR5Ag9gTOr52fBec8Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O16iLQGA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O16iLQGA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA760C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772631293;
	bh=70PkWFxQltSfcSvnLAnm+jxbSkIhw5S3IsMxgAceV9Q=;
	h=To:Subject:From:Date:From;
	b=O16iLQGAsVedjHicP66IAVXyN+5YBpv6m7e6NLJ4ZXXFMYnGPLqzy5b4wkygMcyYF
	 qhGECE0+fLhRVCxtpawVQltDfnLlYkKB31D48i25jQIujuAKUssFqFuIg46Faj9xgM
	 d/sX1e41MVHRjrnZhd3l0+wXrn+55RYpTYGw2DGwCVVjcZa5AUrqWC2bEwRtfhYCXl
	 aUxlO00CfcqijRstIqfZl90qfrZD/Jji9IMFspzO3/c1I1LwDOGtx4xaXVuMa2fDeu
	 urNzwCJZb9V2IcbupAXXUn8Mh8xuGItoCL1I91tbEUVl0zZZewJJHRPAMNtpTBt3IM
	 sWe6TCCxrH1Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97845EF8FE6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177263129361.29908.9051837298317663286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d478ca116de5f3f2c06dcf94727d70e330c8dd925c6d6c7dcc9f810f5f4c690e
Date: Wed, 04 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772631293
