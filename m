Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2646E145B0C
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721403954; cv=none; b=N/Cg61WTXl4o6JBkfr2+Za/MdpO1WGh78GDiy318VrqUUbeZEHHvnV7zxs7bB7fb+Ey7iHTGhZdlKcYhMKZ3R5JEJPML1rEWo9Fnp9+3kFD+YsNvabC/I+DvFzcoHmlN32FLO2QNpKGUhBSiRfrG8z/I9L5C5huNx0i0vIgOiKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721403954; c=relaxed/simple;
	bh=2eL36tGVO5cxdyjLtstJqqv4XO8spcVEEr+e8tqp2SE=;
	h=To:Subject:From:Message-Id:Date; b=aV+dqdGDWZcGZiVE86Dx+ondNmoLuNveOy2i8+FAvgfsmrDw/eL+K7FWPkeYZktEjLpLiPLgsILzCx0ncaKwM/EWbbXPaGwcQyFl69CBhesSf7iyNgnQT7Affr/lor3UVKmsinIffyK8Py9pp6nZqFeaCy5D5eWKaTQ3MQe4B6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEGLxrpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEGLxrpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EF1C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721403953;
	bh=2eL36tGVO5cxdyjLtstJqqv4XO8spcVEEr+e8tqp2SE=;
	h=To:Subject:From:Date:From;
	b=CEGLxrpuSApo1IueU8bGJ/EDpJ27WYpqr3/G2zOYxQiymK3EJc+e/lDoiTCEmOQrp
	 Zg4xyvsZ2Vvr/+CGQuY7vA04k8X2brYa8NlhLwt4u3kQ68GnDjN732J+FeKqQnLzdt
	 vzQMCoYMevJfns9I52N4lZpvTCLdsOnygfwGNTFeoRkIrAzSiBrfAWZ4LTQGWUPxz5
	 RzFsEVCTttFzroatIMrAhKPG898qX4nuWgtigl0KCiHlXoCRSzhZFogbLhWO8eOGfu
	 0DI/6YzcYVkaXSE33QfykOhtWNL8pGNrv7NU+o2zOzK/S29JxrhObgtuGbKCScylBW
	 /rIf0ZOI4d5AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9558AC3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172140395360.28068.11540747422401660603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb25d6ecc9dd58373d15f385535f6794917f483fc3e1977176ae1901c8fcca8
Date: Fri, 19 Jul 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721403953
