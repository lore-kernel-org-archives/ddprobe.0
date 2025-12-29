Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7048DEEB3
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766982234; cv=none; b=srSAyiIZIdA2jWa2GQJMtugyIXLrTn6kun2eSc2x4Vv4+onRaeH7u1tH377qMM2XaCbQw6yZCDpBhLnAxzn8I6cCtf67qj7c/Bu0SZJ+GGKHCkGzcZ2kSy5EZ+F0CFDo9chkh+wLO02aX5TbIDMJQNUyjjRnWnuZwTtYBrNTKNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766982234; c=relaxed/simple;
	bh=dDA1HGcfUKeAZMi2WmNGLytNIoqvPMH6/9RZQTme658=;
	h=To:Subject:From:Message-Id:Date; b=Rk1lG1PO9H/Uo+i+FwIodjZHzn76uqLJMtGSLeJnZOIevfm46S2xr/zXqJxeLcoA1hz3HzOtW/AgYNEV6HhLqvBhlap2U/dpf2pbI4IGkwH9nWz981NXRn8nWvCZRTk/yZRsSQPGhM66DGi+MZ/9g4PSGOGSDQu1ofscrCgWIxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=defPv2Th; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="defPv2Th"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0AADC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766982234;
	bh=dDA1HGcfUKeAZMi2WmNGLytNIoqvPMH6/9RZQTme658=;
	h=To:Subject:From:Date:From;
	b=defPv2ThJUos7OggY69WgWUAbV3h7OADYiy7fzU1aVRgfkcNWrU4XU+nWXwIiNdUw
	 ywiZyLmlTXFL6fJ3/kKchqWrZJK+AlOp80/9OH4trgAWtbUm1ru0ZQscmXV0dNCsHK
	 CsTqCf87DDkrf0gKCiTgauR4MdW364z8/V+pfC45oIop0RnmE+zxJyiRzlqCCM+I5v
	 NkxIW6N59yKSVq5yOFyIrc4X3RLzUtqrYW/eOBEnloaXBSwwcuTrhUTsf2B7ul8s9b
	 B5zY0j+PSjkJAtiNjgxjW/Y04e8W7MWFGNjU5PV3zg584kHiEPWyyeI94Htm4TR4+j
	 3kYeEJFJdxydg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9519E8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176698223382.26842.6676880671419495560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8088463887523c8cd3b62def8a18d286a6b515de874de349cc1a2372fca31b41
Date: Mon, 29 Dec 2025 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766982233
