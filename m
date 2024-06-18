Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E2851DA53
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718727563; cv=none; b=Tzy99yaimKJm0UChKxMBr1g1L/kKTuPpSkSo2ATu78xeVuSqURO+GZ6B6m/h4PQoWJEJjfeqZWJDVUlBRZNSJ1ASl9jNwAIKUPrJ9YLJ4VjxjOFwkP+HdW1t5JPDze8ygfeW3B3QGbY3hR8t73RXC7orAPiTBfs7KjEoZ/Eq/7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718727563; c=relaxed/simple;
	bh=an7NO6YzA232AJ0lq3dLu6W6mwnnhLf6vwJqAkfyJT8=;
	h=To:Subject:From:Message-Id:Date; b=VDWmjk8lScJFi2c0TNjlE/Ze4uvszY92yzFQWXTSTxagb3oj0Pk5uEnXrPndksapWqSOqKbIHyrxxgWkA5c3FiXS8Ps0YpUd0W36IJrPEu1BVf6D6+6bZqGRR9+43T4K0F+HesHFvK5C4kE78cUL/rPlLANSYJE9g/zfjp6lRzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9mtBanK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9mtBanK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 198B6C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718727563;
	bh=an7NO6YzA232AJ0lq3dLu6W6mwnnhLf6vwJqAkfyJT8=;
	h=To:Subject:From:Date:From;
	b=s9mtBanKk8GP9ovLvtHRg2zkheS+2UEjubIJ4krNEM8A7UPYEivPIW/BqJE55jLVY
	 BAhgtYS3/OFeyPd77ZpAoQCAfqDrRPe+avmKmUPTXCLijF0uaS0gwtuCttzRzGr/Xx
	 JWKaSQbwgOMRJuUftHLgWZcsMoH0u8Ioy0FOlS2b9pPVi2k5rJy28wMrn2QWjuzICv
	 MhmgVOvINRp7wC0AwA4CnnKTB0LdccBEuubaiIHmiNvJWXJctmdfvYtLNBnH9+hHDJ
	 f7BU1J14fiJpdRqEhomMsN6wTNqU7QurZkYuQZ9cGP7KLKqE1MZsxR7jLl054vQ7TS
	 b6VVlV6rLfxew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFBA1C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171872756288.5255.3586999519612762294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc1e33a5bef66b2c464aa6a20e59b3dee585a2d30f9c01582fc3788f36e3695
Date: Tue, 18 Jun 2024 16:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718727562
