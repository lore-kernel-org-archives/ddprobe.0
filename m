Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7C3EC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707959897; cv=none; b=keSLU/HCk5B3e6Ihv7VcA6wQxRN68DMjp4quFYk5WsUMCUMGRtuARC92jkEdzMluErSnnpXkkVwEcAJsfE52ZQkU5mrjhzRvIf6cx3FAuu8hLqdC2uF8Ca5/PbBihaNI0r1Sky9ya05edUmyXuVwQTpjuIrsvtCI+0y2WHMGt5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707959897; c=relaxed/simple;
	bh=l5vkNpuyptgut2MKnCE8OYFPlvfadwQUVn5i1b0jbqo=;
	h=To:Subject:From:Message-Id:Date; b=No1dNdG9zA+SbDQmHIzPhHkZ1UKLBzK/cQd+ebJG+qVMOffeLimNrLVSz9l6nK8d5y6H7omapOqJ7per1YTCmJYt9GoLp6xoW6uZ+efn2bz7vetkh7c1UmdW5r9/IGxhx+HmUH1ftUSQG9Wyy9xdIRbAabJz4eEXOQR546//6eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbvNHt0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbvNHt0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D84BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707959896;
	bh=l5vkNpuyptgut2MKnCE8OYFPlvfadwQUVn5i1b0jbqo=;
	h=To:Subject:From:Date:From;
	b=AbvNHt0HzcqYfG/OsVh2Ov2pHClL/jASWfJWubsG8LbjZrz+Wlyyy89oL2XZBe+bP
	 9DDuO+5NgNujySNeIYSF6DZH5V3iUC6OR25vhm6bbRoQXdj4Q+YIid/AnYnM7bseFA
	 uRPEIKnQL3+SxWJYufT3t3beNQYxeZX/Yie74kLq+eHvuID9Z4g37OxKMD7QkIKAHm
	 KnJeij0TkoVJ+JrQCsnuiA1isappF+zJkZ3S4eN1uBn56xlq36y68WjKFJ6zA/WpNM
	 Hjk1+tOcA6akHCpu4vhumiaWp+aylvLsN7pbCkKo6BrjmIuuVbpLh1vR7tmEi/AWzW
	 a82+CM0/NI90w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 637E8C48BC3
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170795989637.8707.17272859616884235638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d103bee61453f70be93a57231e6fc9b73d51b32d6fe40f8c25046783663dbd51
Date: Thu, 15 Feb 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707959896
