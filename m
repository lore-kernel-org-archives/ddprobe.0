Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E5E18DF6D
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 14:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740235734; cv=none; b=GM7tiT6KED8u2UrXkZKcDzQuSAE31ldPqjh14m1VBkRLHosFbWCiG6M6QHogqGgLe65oFAAbmYj8prI55LEU6+HuKs7i3UNhQ8iOG4VlyygZnX7UqWfmNQf11AqABnRm50eIYz6RIZ11Q14f/cZ/2A4fNvXVqg1PnQ6soOaBUFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740235734; c=relaxed/simple;
	bh=IN9rvI4Z5yhkU+KTbhQoRcD962b2Rb3tWuF9vMKRL8E=;
	h=To:Subject:From:Message-Id:Date; b=ErItpUJsCrtaDekYI3a0N2PH+NkK0PYzipkXL2QJsYC9MhmCZjnSJbr4vBTIuQ/nye3B1hjMsPNw4dt04UG5/hfZf2MoAXPkVjcG1lJqaJYqrDWZkkOGgUkw1uhPgU2k0FfHRrzdLJjJyhUIPkTQpn2bbop08WPUAQiB1YYzJ1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oj8ik6FF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oj8ik6FF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64F5C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 14:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740235733;
	bh=IN9rvI4Z5yhkU+KTbhQoRcD962b2Rb3tWuF9vMKRL8E=;
	h=To:Subject:From:Date:From;
	b=oj8ik6FFU3Ex6exIusXcW7Yj6/MEAX5t7kqzWlXFn6rzA9UfOuGzEePWAefusXpoy
	 pzm/KFcFz8GrRujCWQDlt1/hYPr1ShDf3q6sRJgTR5i06U7tsnxkASUK/2RF6Wsb25
	 Ys43q4Rf1DZSo0FU9uwUj4tUKBVP6+1eFvUiMHP/Efs20KrdrPs5+UlfDEYSnL5YiO
	 I6eYCdVrUZv1C2Jzf+i2NrIME7nOXa9ufNTZmrjkve7Oar5WYbB1u7A6RFHhRxY8k3
	 PPJJyLpdHH+SMou0NEVrET/X+bAmx7dxLV2BATqxZBZ4c7LwQIZLR5N2HLDAH/jWLe
	 BBJIrHluiC9dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955CAC021B5
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 14:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174023573360.26935.4138024267961663652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef3b0bad8e14903ac28133b6d47a0b531cd88f361bb0d44d6366a5e225418ba4
Date: Sat, 22 Feb 2025 14:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740235733
