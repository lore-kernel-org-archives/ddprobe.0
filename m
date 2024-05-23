Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA27F9F5
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 18:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716487403; cv=none; b=ZwPQBh5LyO4GrWV2Kr5b3rxtMLcQzl4LqGYrNB7ePbgVhW1nU/q2iC2JUuXV+/7sx4ibb60aZxnT/wtK621dC1QdkmR4EkHJlN/ap2GoiaA9PfgciseEvw4ha6pI6IX6verBVsW7lxKMEqBTM2IMJvXrxqsgCPtKnyR8obHHZxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716487403; c=relaxed/simple;
	bh=3pY+bD7C1OPgGKIhWShm+FaYHBD9ncreg7itC2F8piQ=;
	h=To:Subject:From:Message-Id:Date; b=IvsaVCelzZdGnt9qufyxBdraBekBkbShkkoG9F+msLmjkyooCNKq5WVU3F4LVWlVgnCVkkPCqAgdxwejf5feZE+j/bXuwazksE6quL5UXgmDLNsEMxZWNbTLnTk+zwfwdkIrsbFtNZw2B7y67DnF6+hApc0lvbTDWaEv4wrM4W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCHeIfXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCHeIfXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4A9CC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 18:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716487402;
	bh=3pY+bD7C1OPgGKIhWShm+FaYHBD9ncreg7itC2F8piQ=;
	h=To:Subject:From:Date:From;
	b=XCHeIfXz8t2icchBo+kaJKbbrSvTyNdcI+b0OPy8RlNITshMwOZI4dDxvnEBNuTNd
	 wXY4P2hUnfONk6HePRLcxCgdTIwqpz94HJYej9cqRG2y1DL3RYu7YF1oTpsNlMTuOl
	 M1v3CJBUzFq0vmRahp3lMXCXnB/or2fP/HmMkwN5KweiPLZJespUf5ay8lWErQWmbo
	 2kAjWdnSY6SmXnO/tkLWQkNP931bims6uUfKTGgEGbz2p7BmP2yy3zs0TT27D5OM9l
	 wp0bY1RvnCE/TksX/v5pqcxfBISH4iC6rDvapNpqZsNuCgti8Vr3Dm7sWXM5LA3Ny6
	 VobOINCY88t5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF8F3C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 18:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171648740277.31244.4772492568511410546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a365067d3e4ef903fe6fa5d87f3a085c086ec0ba16cda662d404fc61828b3343
Date: Thu, 23 May 2024 18:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716487402
