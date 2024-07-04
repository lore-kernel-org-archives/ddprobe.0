Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4601AAE0F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 09:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720085123; cv=none; b=MVJ1egdDqs2LqqNBeogmYE34Za58Am99o9JW10zxjy5+CZyfhtJq7njBGzFHW+BBNWkYLf2RmEI+nNFEF+Gq5WoKSw1Ya02ddt0PvyVydAvuh8I09fuhKn4qnVTGARoP+iy5TDrXXcLF9XD0WEkc7qTR51LeC1VDTyXKUyadkDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720085123; c=relaxed/simple;
	bh=bkVLeKzFZNRQYOPitwum3KSb9xNOPvEw7b8dZur4zv4=;
	h=To:Subject:From:Message-Id:Date; b=pPPTFFMGbZMUOh70/cPIBvW3kRj4RkgBbjP5oHjceYGPIT9tCkkDSZugJzOd4ctc5PsxklwiaQaY7I2w/fGHXsQgfQtbU0vzCIr8sLqyPBjLefg5pcg5IVk3+krztEOCiN3oHGyOkAhMFA7gxFDk/J6Uv88iZeb5dYYU4kWhSJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFQ6mBSU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFQ6mBSU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53D1C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 09:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720085122;
	bh=bkVLeKzFZNRQYOPitwum3KSb9xNOPvEw7b8dZur4zv4=;
	h=To:Subject:From:Date:From;
	b=IFQ6mBSUfsxf4PtG391CuoabdnMu/G0hFyl0SLKYIdzBUNUg/vxl2au9TvWC0TWYg
	 kL6RoQqLhqTZt6o4Ja/z+awNTgB5f1JXCiOAWg1X1Pl/DdEx/B0Y2F8Y404n3sklrW
	 Qd6DqdBxoOa+DyfqsibHX0PiX0ZGilj1PX1M3YQuGK81hmZr8iI4xCagc2EH+aJ8Qo
	 n8moMkPCuc/i2o2DeueKVWyQAGJdnf+0U/1UStAUWdNqvSxmPhwJo57PZ5epKBRvhI
	 RYTBAP4xZmQaoiJBQhMX1CQyiEvdvmGYWcJY2ILJsaaIXcJEAB/yIpt2VXdPJK9NRS
	 JOAGKFNNE6XgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF74C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 09:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172008512277.22421.9467643468859204386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278b984c326de216247e4adc83f92cf17ccb695bebb08460e90efb7cd275fadc
Date: Thu, 04 Jul 2024 09:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720085122
