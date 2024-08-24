Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281DD8F62
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724538354; cv=none; b=oHzn7Ah/rVhLfMeGk9HO7GG7MsMBa2TT9n2GEFSgGvLhKx7Pbi1alImLTAAFuPpC9FT7B8Y5NET+RS+bv3uULLKz+Ztjt0S7GPUGbnEKpBwplM8wd4/c8Os18CGGha2yJWj+vUbeiEM32aoiMIDJiw6KdNSnyjWiTdNDah1ROS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724538354; c=relaxed/simple;
	bh=oFEaF37GrNf3db4+gukVLOilrQD+S27Oad0KJzLwVYU=;
	h=To:Subject:From:Message-Id:Date; b=rUAH7vygNu3xO4YZSof+H6+CNQQJoz1HByjj9I5L5Quxid4IAsFpdHuT5fvOSAnOmTW0Ibf6bD/LXYadUxGltIywiofkhh5c86cPtRKIhybhx8JOP052IqYatPlFeYezWeYHmB9YtAoBK4xT0PR82v7YDDYjKrAXiVl+SUnXrpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SO5mbap7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SO5mbap7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE985C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724538353;
	bh=oFEaF37GrNf3db4+gukVLOilrQD+S27Oad0KJzLwVYU=;
	h=To:Subject:From:Date:From;
	b=SO5mbap7MB77FISywqp0ZB5GO+nb9T7Hi+SsYi0+om9kHPPNsCbTLm7vmx63ZBhv6
	 TwFy+R3Zajr0phIolsepugJoXa+aBtSb1ENbBYRik5QpSCkwYbiLiyvz4qvasVLfRz
	 nZE/ul6kmyhn9BVVeqIXnS8HGViOXyIiRGK5/8eZadtWgqHq2vWD2+NSA8n9VmsuIz
	 vLIaT4TVWSrZhc1o9020t9TGcFxRGGqh8RJEzTbk9OnpuJTyScjblnBuYIwDaErEZO
	 C9H8ijBSQdVRSj6etiP3IpnXoAOhfGPrchnEPw1c+3kMCYueSl9HT7fmMv/BD8a/81
	 zUUSGK/XmZqEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99978C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172453835361.24806.6095879757824196004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee5e32ac22138a2b70105861b54f31221e9236c764c9f8561a132a0a55026528
Date: Sat, 24 Aug 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724538353
