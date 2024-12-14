Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A942137E
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734213354; cv=none; b=NfHL3bGmSe0/zWMT+CvBpXYzTM3hLmjTWOjYHFGloqErlm3CJtT2980EFZylfeFbrjV8refmnOdW6utCoCGSB3ulwYCj8bbtC25R5Sz4Bc8kDQHagHv82lrJGCRuOygovMMLZP/AWW0rSbXjMKK3LKilY8HsRjB4x0J+G9jVi0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734213354; c=relaxed/simple;
	bh=WnCPKKpYVGWpwS4oHEEEMYGu03uJ2ipKpkpErFHqFcQ=;
	h=To:Subject:From:Message-Id:Date; b=hgCNnn9seLFgN8gBCADSbCci9vsGUt6zoddk4g2lJUmKVxl7KxtqYk/i2UhsXDDeSZec9plGbBZq7MmVV1SJRpbIg/ZUoxc6p71KbAlz2hyphleo7H9dkd7qMdYcuyI8k7CyVE4N3nybIjeqHxP0jlpAgYmqGV6sKUzervuP7TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hf/i9nrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hf/i9nrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCC0C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734213353;
	bh=WnCPKKpYVGWpwS4oHEEEMYGu03uJ2ipKpkpErFHqFcQ=;
	h=To:Subject:From:Date:From;
	b=hf/i9nrYGSaYGgRWp9ix/kyJwXvZNWcOC/O0LpffhyE30seecnAelkTqVgaNgc/5O
	 ObsJEgRzIq0PgMQKsm8PVpz0Q1gjOVMpCG1/HsbJ8jRqXEPZMOD4lH1govIJKErSeb
	 b02dPQshUtCqB7lTyWo7jIy5xKnWviFS49d0N2F7iKybFcevyWv//zrSWlPmrcWwLW
	 O8vSmh/qbMmqeY7uPoXGjtBqyP66Xlq/udDmTz8T+vXAmsA19WxH3aR2eWOCVMzLjZ
	 YeT6WLR0ryaxPFNMTZ2wljKQgErCBsTqgKSkeTjmeXpnAhjpesLt8p59PJT377SuvD
	 hxrkySNxmd+vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96251E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173421335358.7268.12771263414063785994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0865d402f6042d9674461a417171971dbd7c4c98414ab825f543ab9e8449d91
Date: Sat, 14 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734213353
