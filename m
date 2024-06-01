Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61934EDC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 00:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717202663; cv=none; b=Yl+TQeEZUIAmAU/5NXMVyPx8OlLQHP1j6p3N7aqg6avCk+laMiJBhb/9ADGfx1I553To8nvUP4JyG4jLguu94yrxDBe6f3ZMYCS/M/92oqa9L+XuUe/T1arqw8/DCdzrrOBjaxnGW1CbEBJ9/Ps15fWkj8k8fALl6sjck0p3hlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717202663; c=relaxed/simple;
	bh=QOb6MEJ+9NdZWU29Fot2Vy8zqKYpxPTOXE5QeUrTBR0=;
	h=To:Subject:From:Message-Id:Date; b=MT1wlbMdQeNHPGhwm0GzJqP4D7dk3PLGkO5VUWLjyqs5K1cDWhV2ziCrnvA24ZKW+V4sioKIfyAZBcrgRhmoppaVbrSgIKghVRzqbg02eH+pk5HoilCCFaSI8IfWmxUmnKjABYmtZAQL4eLJKp1AKDLLcn0JbzJmkA5/g+JQ+sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVd7i3fF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVd7i3fF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD83C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 00:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717202662;
	bh=QOb6MEJ+9NdZWU29Fot2Vy8zqKYpxPTOXE5QeUrTBR0=;
	h=To:Subject:From:Date:From;
	b=TVd7i3fFyry6L2X+vzsrq/0gCl/FAeUUzqhCwKhAwfkm+ZKBs7ABKffD+tCmiODeZ
	 bsjGdK36lRv6QZamDHSvX5j0elMAijPBjIK63o0H9DCmwKT0Ot32GSqvNvZ9USCbx2
	 8bvGLb4fYhtPP2ejUsAmvX4WmX8U5r17gtdKAZU9ljDX45hSlch3nA8PyLQGUO8R2X
	 ab3Vyj2y3rMgI7vP9+Yyuczcf35UBqbLCUlXkMQBHYGhJEfMazVvfZM734YocdWrOl
	 M60l8wMXrt1K1kADhHqvmcU/PLcfYXnAVsIeM2hQI6J58zJfBHaGvZvwyH/5sGa9R9
	 AxMqvY0CgcFGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C933BC25B75
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 00:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171720266281.31366.12974826169778879005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c305c9676a2e65ce740b695d2e8cbf2ea43784c02f371f18396710fadc96fd5
Date: Sat, 01 Jun 2024 00:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717202662
