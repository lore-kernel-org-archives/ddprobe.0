Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C237082D
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758135594; cv=none; b=TX7o7YRiYztwCWTO2o3OhKgwjHGzkWAySeHwzIKFo83OJXpueOWfRuxGDhd88Es1qUZZCajzuqj0oa+cSFF7WaSWO8MMPbf00gfmODJUTdWhDGHGw1wL21vp7BYMUv88chj7YsBWCz+coQ28JGHx1iNH7V9HmuI/uBwkeEjFiKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758135594; c=relaxed/simple;
	bh=bFZtbGVG8To1b/GcQ6Zr4+kk8FKSXPsilNHD33agt8Y=;
	h=To:Subject:From:Message-Id:Date; b=UfYdvikzbecGgVLyXAHim6VZM8ZUSfgzJq/W9Rj8+b+1KwYklH0qQXnewdVZLXJH7Fl0zog4qO8rW4J6iYj41tI7HGgK38BgBbt6fJOkR+EAclZyI+/h5A3Q47RJfA0wmYsZFKBISG2YRzIrJyK7ckB/HSy02yBBeScMjawAqP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhdYpYpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhdYpYpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E851C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758135593;
	bh=bFZtbGVG8To1b/GcQ6Zr4+kk8FKSXPsilNHD33agt8Y=;
	h=To:Subject:From:Date:From;
	b=qhdYpYpV9rZ0OBynVMwuI7P+HYGkHkGlEwdx9LA7D85BgBJh3VfZXHMWVRGrblr94
	 bUF48teruoMyKtKLe+KEqJIOJI/HX8ddLyo18IXhbT8a5pbNNqZqs+xwzDzNH2d/Ae
	 Ox4z10uKN5vTxYCpU5hlUa03zgb+LocUeeBLr3oCI6F04/MO0X5xF+Sj9wyrhY5aNr
	 QiGoRYw0vlJRoD3KkV4/y4KZYVjUoVgi7zt/AdRnqiEIracNc++5jZQ2Uy5jzpCyR/
	 vHwA3eWJSfb1kmj/Xf3CmcbWryU+jxT+8pe++/Q+ujBW9cxRmkVYfRD4P7Hgn/niEZ
	 2ybX8cyrpMtZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90105CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175813559358.9931.3020934573068215539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1753398ac4030389ab43a0b88732870d9f14ca9a9f8fb45b9e5f83b4864e7f25
Date: Wed, 17 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758135593
