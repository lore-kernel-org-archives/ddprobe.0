Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF1A18CBFE
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736720754; cv=none; b=uFHT9eOXXN0thoLM+Lf6E//JLdfY+vfWClOyuA3vwo+k2BAgxcGQv2Di3xp8V9p7nhge+Wpg2fwSHjVdDcuADyLBmQSa+u/T+W32WrJdI9wDeCHLpaxuqv3G9/sWqzJRSuzBYZ05OP/P2WUrAxw3Q3UeLeAaQ+YFkaXlpAgklLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736720754; c=relaxed/simple;
	bh=HmGbG7OcOu+TID79j8zBuEwDGSxZwm3SKXR4O39MSPw=;
	h=To:Subject:From:Message-Id:Date; b=Tgw4xk9gKrYcUTIouepQg5Xd5AWKwGfjtIOvdKY2TEPzrv6fLUEOg9Ul050Z6QgZYAzgEeNi5zr/T9KlvUKWt1mh0mby5761gqCQfV8NxYriHwfCSaRgD+aICdYdX8HpqwqPm0E2xRhyJO4fxFY9LWw/QL9HfPNN3kNk7eYZtGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNfzAjlq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNfzAjlq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80A8C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736720753;
	bh=HmGbG7OcOu+TID79j8zBuEwDGSxZwm3SKXR4O39MSPw=;
	h=To:Subject:From:Date:From;
	b=TNfzAjlqlO7iex4CXnMdivvzMd6KWPU5vhKXVZsagBMqd7/vcHNywVcNcLwWS+JZc
	 DMSsnCnfH0R3CcR3gRpJjDLokhBaxpCrFpgyBBCKg0lJGcVHQf6W2loSVgIVSdra+p
	 rFZNxvsvKeSayaEGHxIvhzRh4/9B6SmNMHMxILGZKWxbWksedwULFuiKiGucIyH462
	 /mxyqBjamp1F6b0/6OkOPkxc9PhmwkI899QWD4C6ejlbAufENqJL2xD4OhuaP/rCNP
	 omY/Tko/UdhIM4uUVLVy1/4jR5xDbBTEimJ93i4M20PcjpbxCekMDvg9INm0uKzWVL
	 f3PvFUcaaqBQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F6EEE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173672075362.10835.15546525005925119514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 233f8fb95aa180a1efdaef94ae0f3ba2c6d4ac91cb8097504d04aecfc5300ae3
Date: Sun, 12 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736720753
