Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3822F5E
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757510393; cv=none; b=U0+pPVnY9WIkar0S0JbtvTxW96eLWvAeZC8Fk4CqOM8YNX998ezjVPE2DRaisY3ISw0+Tnai79hrsLbIHKwrTx58dWvtivIMvYo3F5rMiOZzXCx2wlxx+4Kn9X1d8umn8Cymc3zZwP+oOLKBUlMhPbOYQUByugCx3DxxhmpZSnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757510393; c=relaxed/simple;
	bh=kuVG4UbZz0i2GvPpc27hM45oC8l+TQVHWjjsiI3TJes=;
	h=To:Subject:From:Message-Id:Date; b=f9foZ/gGBtU0KuqVf0H3G0dZ//Q9UCubJSIU2Crw/FrrrhdTqSVAahrz3PfjXfvzFYBEEeeRHoXFjkao82AC4Qy/EwAMqpg8SfOX84PKvlqz3T7AArxCJJo3NIlBxtiCVV8On61HJASyQcLtkYsYAgYndUf+7d96Fqn3NXQr0js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wy3yg/sh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wy3yg/sh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B45C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757510393;
	bh=kuVG4UbZz0i2GvPpc27hM45oC8l+TQVHWjjsiI3TJes=;
	h=To:Subject:From:Date:From;
	b=Wy3yg/shQyV+fEiQzMgc1ALyz61bIuw9ZEJmdVCc9QE2NvjYgCXGZ9hQ+rwnrb70a
	 kI63pyTj3KPxcJV//sPud2iiw1hkJNXQBh4FGa99k5didNMUSoCqoSfnjx5tv7CR//
	 rGd4Mx6QkdUVX7G+pmgIZybYMpMHFNorHUpBUjsDcdAlnN/tRnfCvJJbR3/XOu8cO0
	 w2Yhj43USM2qyd4LINjoYwONlad1XcS7o80bLOVi+zrKBj7l958HIf8AMagyRNvZFk
	 AKKbbfyRJe91L59Oti0/0PopBoUzttUvHFM+hLoNX3qCnxfyHBdTwnteZB2FUHvhvr
	 +6a5s7m0ebSmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BDDCA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175751039358.28785.4203884420217303181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f348308c1d0277ab020c5cf900e93921cdbc99d2389ace3b4e22649c6434d3b6
Date: Wed, 10 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757510393
