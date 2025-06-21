Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F4B157A67
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750496393; cv=none; b=tyQ/KP9GtiLgJg/3BGo4L0A62mOS1e8QcHq0sWYRwl+NC3JVz9K5OmLTvjIzmxh4TQhB4F9feFp6bw9M/A1BghPG1o6mPsta9NLRk6QJoWe4+7Npof2vtTyX/M8qkRooNZofHkYBYZeYehydOsDA8fmCnXecZwAmOqi5ov7ZZyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750496393; c=relaxed/simple;
	bh=Z4M+0FUzx3x6h1zmGwIdVasvI9A7lAWjyG6L69t3UHI=;
	h=To:Subject:From:Message-Id:Date; b=Yida5yTF8QF2Nijdbjbg/AwKVczwinDbOZ5IOAaiNCwzcXOhpwVHnU5N+WGn8rP7G92U4dq3VnDwmj3aDIPE1SjbZP8Xx7UDfmtex8vCneHdhc4ajTYpAxEKnH0hijRAlOMY4u6RfzUb6gJabBcDM2/+D1lPdnaGfJMk9J95XZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gaBXZBvO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gaBXZBvO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB197C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750496393;
	bh=Z4M+0FUzx3x6h1zmGwIdVasvI9A7lAWjyG6L69t3UHI=;
	h=To:Subject:From:Date:From;
	b=gaBXZBvODM3weaVDjYrLwt9t+kiHJzzbi9eIxSm9tWPo3TMbTlBbD9dpxWpqss0q+
	 nSecIQ+XnNVk60V6Q0ODanXtBpwTzz8mXhEbbJr2QNk2d2vZxTSFhpvNgxzFkbcX1A
	 YvOx+S0HUS2L2uEazaIh35Y0MA8nQeXXFs2JGMhOPLbYY0rpq9tYJrOLcoE8Dq9qJc
	 9oxPAcAcVo/13VQ1zUzUqXDpB8EY/oT8jjyVfXCe5OqS4lP5F8BR8DsldNFp374sNH
	 nYpKXou0YhGGFNI3ESbXG4vRerNWkRF5TB/QUy15DcQvwlS+gs2s0dxC8Yn8KLw3hJ
	 +n0bvWKQ3FWCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98202C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175049639360.27021.7964415137973649153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b4f5a6af345340c91f1b7dfdef879b3cb9ab207c2690abdb7073adfad588736
Date: Sat, 21 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750496393
