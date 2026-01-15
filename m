Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB8623815B
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768459434; cv=none; b=DBuOOHzxhYLrJRHwH7eVzT+7FB2A7ggOXhn6TPDs68w8A8qjkuVz/KceSU07EWFrYWYwLKHbI+ZlPjHb8tmykWnxHqCoez3p6DLEoKQoETehjCGiLUHpFwdGxKsZyBIST1tDXqCAFxAX5dr9pYZevUZdDnNclBc7vsRqAc3kXoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768459434; c=relaxed/simple;
	bh=+Q9kAwR5nhqJKbTWB0pbxVt9siwSzt5LEmKHhXS/jag=;
	h=To:Subject:From:Message-Id:Date; b=CbnhtjTVUikyRqfA/NSSlwwN72lXJn73jJp49c7ZdI7KSDfjsEvswDsvamFqj2ru9iB7h6fK4C2+SSaMvJLkJiJansU+EqhjLOtlYlRjRiMuw8uoRemqOqFXS4uSx0BQFA6RS9LuHK0zTshwBltHeNvUz1a7MJbK/P1TPzFBn28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFU9Haka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFU9Haka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D79C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768459433;
	bh=+Q9kAwR5nhqJKbTWB0pbxVt9siwSzt5LEmKHhXS/jag=;
	h=To:Subject:From:Date:From;
	b=hFU9Hakal9O7u7BtI/qynVKdEUIuj9Q41a8BBlHzrfhY9C5nvVfhUe2bm6jJlq5UN
	 vWkoMjv+8Xz0Q+6Aa/l0Ay7asgO0DiUNtxKmwnDgmIE/nSn0C9+renFiPMhqZYmwIK
	 /gIdifsC2bWJx07PX3+srVD/cDvBhrHUV5Mk2yK7X7MMRhA/TnevVP1x3JuPxaoVOU
	 CAmtx7VEU0XAVTbfyd45M54LmRew81NbVMI+oLMP+ExNP+iVLjmZ2l8umT7u9IOFfa
	 d4x+JT4AJOPhYhyWOzgB1z4ddjvT/pzPfmQ/lqvD/+zVi6dDSo2XcVSrFZDMZ5PtFp
	 QV1YR0MvpFYRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E89D3CCAF
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176845943359.15635.17691062245969068516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dccb1442a7b7d1ded1e3f23cd285fc65bff2fda9ac1f82c1064fd960cafd6d4b
Date: Thu, 15 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768459433
