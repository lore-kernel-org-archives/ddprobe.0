Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A0F10A0D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 03:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720756043; cv=none; b=CZ9FQV7dPtCxXSo3ateOtJP0+99yIwHcVNN8FNJEdB4LhLM//y5H8c3PpeT3ycFRTwg7HBLubZSg4ZN0bQrDGr0a3YK5STrjOCWaksnyI9qQoEVTGhCH0deZ+v6mqTJGD8ak2ZGyjr8mgV8U/YiCXQptIIsXUR/kOA1lrCDMnhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720756043; c=relaxed/simple;
	bh=JUERc2gRDH10cxm/v6v+86RlndE6BUZH7LLRZzonWoY=;
	h=To:Subject:From:Message-Id:Date; b=DmWS6fRWMlkwsUcU1f24seiC2MaKA14c6sTqeo1X8lfBcEsQFh1gyjZUdtHAl0WFpcYcaHpPlCN9oHqMsgRv07AVlR/jkR/22zJIdO3fUlhF+k+YIV/e13gOVlhRJQOXsF1Oh9mY5xZT6wRy37T2UwOmzU4OMffEA/+NcsjvtG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i945MCj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i945MCj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F77C3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 03:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720756042;
	bh=JUERc2gRDH10cxm/v6v+86RlndE6BUZH7LLRZzonWoY=;
	h=To:Subject:From:Date:From;
	b=i945MCj0+JLsgCeEIz4qyVsGi1IzbkWz271TyEZTe67c8UmFkgeXGLfoy16iid926
	 NRZzM1nx5rNW3LNmPTEUESEHzOYuPZFdGFsQfRKhWLt3DY5oeh5Epn5LIN5Ws5WZgZ
	 qcLoELkEAwvMfs9WbHhunmsHaK6ge07CUDpIDvsxBcuK1i+e8XOJPBu1WiCs4DA9n8
	 zlt1HDlxjVyHYE+1WJyzK7O0otL+dp0FOioYzOCGwdqIMyIq+6nbmUMV5ErUXXSfy+
	 gtfL4Koj6n4T3FYE2tSX8LKHNrJCkXm9DNUH2qjdC3oOvBl+66xR3GRDz7gykNVgK4
	 TMrq9oLN+ZbuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67BBC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 03:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172075604280.28326.2212710200534752792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be7ae568806cae6cc7be82b94325a7cc9a4843b68a9319837af1d81b8141115
Date: Fri, 12 Jul 2024 03:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720756042
