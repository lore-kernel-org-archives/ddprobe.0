Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECDA3D7A03
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780058554; cv=none; b=e8jUqKTeHJQmqE+aVCSqF4hjruOgAHSoznyG6qnXHFmUnhEzb5CgC9trbvr9xBVwpVem6YtIVtWZAYEId1Pfnet/Eq8qSzsXP0mvEe8w1O+/tumzFwFYq7M9sLMvcNZSY13cd0BVUb2MWXF4RPWig3AgBM7SFTdKk4P0g2ADEFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780058554; c=relaxed/simple;
	bh=dxrOYebNg1HRKbU8JOl+ly1HQ3DM8j6uA/y2UBhA13s=;
	h=To:Subject:From:Message-Id:Date; b=omZbV3USyQRbXi8dF3weK+/W7N+ESlLASzOfBndr/KsHOnsyn6pWnBYVRUpCVa/Sx5zXn4251gODiEPpZmlLHgR42akqLukCQoXXI4T+duhlu63q2i6XOhOdRS0pA4e3EKYZOLcFZNvJ/l+xHn9I2vnUUbMYK7FtzrB1/9/+A8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rq7+oZYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rq7+oZYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CA3C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780058553;
	bh=dxrOYebNg1HRKbU8JOl+ly1HQ3DM8j6uA/y2UBhA13s=;
	h=To:Subject:From:Date:From;
	b=rq7+oZYE8wykYR/Mkp3wWFt5eOSUFc8flOtKRZ1r4IuKCPbP30eQfMF2vMpEz8f4y
	 F3PQUg1fcd94G7nf9YwFy88TL7c3iJ9kNy90sbGvx1u8s3zXGflTAS5B9y+Y8eDOGd
	 sz/ZO9D6bPTv0YYQy0m3BYkLQFllWN1Er7E4xmnhn8XlVh0MSAx7G/AA3N/r2w+ouR
	 HeCJKbKoACSoOilwt+hFg8h9pfpGujcXvLUOYgm7VMxI0RgiWiKn99Kw2k5BBkctPj
	 TK9x8M2UMSJrCSykYfAyvKuXUaXHXrLPtt619iJMYGsFXySdoLLbvHj5ypHHr3RRmL
	 AXRAf2Xx3eC+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A891DCD6E4A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178005855368.20569.16990661936808211878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb8bf84ab0906daf6126cf416166036fdb5c69911b787c36edc3363f637531b
Date: Fri, 29 May 2026 12:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780058553
