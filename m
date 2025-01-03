Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1606B1B0F15
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735948554; cv=none; b=CgJkzIlUABuoSVM/Rc/nDo6H8gD9igpANAV97F+WFjC7DzfWv0e/Z+6r3L1Mh9SBHfciNE8N05doyGjLvwss+vWlTWEaWNOKjP1Po9pZQkC8UukA8MHk0qAYRFR11ZtjM3SCYR1v1nTbcZ3oBI3ABS+/JaWRmUuTzA2MtgOTZxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735948554; c=relaxed/simple;
	bh=ZLq1FvqS7jMVez7VcPYgcvjDdMdSF3leHRkZSRzX2Es=;
	h=To:Subject:From:Message-Id:Date; b=ZhmAPnMoPr60QmqEIWXjCGxQQ63p8yb8r1UZt7dKv8NAbmL3GV9cHhrU0MLZgP8kAVsenOysCuvwfXxXLtGBRTd4j4rfgIq5CR4ZkWHXp9FbZJvL5322WhnCw56YO8D+lwIm8LGeXW+C4vXaKidd4zKA0pdxbilPVLDwMtO4FLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0oAt+hY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0oAt+hY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA21C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735948553;
	bh=ZLq1FvqS7jMVez7VcPYgcvjDdMdSF3leHRkZSRzX2Es=;
	h=To:Subject:From:Date:From;
	b=D0oAt+hY0Grb+6MhY6nW4bQvDX+dshxnV0begPp8PyvbsvxT/jM7qBm6KRIA+jfcP
	 BOE3bA8rVDvaVq/C68IwXP8c8h4Zx/9qJD8J6NJGKqSTKdDFMR7d3MyzZ6xMIUrz6D
	 FmlsuV/MBTVOI5xWRnNohpOdh9gZnrF9Yi5vIiw4HrnU/gPqfQS0pkj/xk3DkLAjmm
	 GwPxoCJeW/m1aAUAeskVo0W0dBx3yw5Xg1u6PEbJ3vulfJiavu1Z4hPxbKzpCEm/F2
	 NplD4ytqnSFujk/VhlBWbFGPfinncRMptQvX/EDJ5ojhuSRjisOCUbdspz7F3nVYDJ
	 H4Gz/EP64lTKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C6AE7718F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173594855359.30771.16094552974292756278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae153b34f00550331e2a9e653f3320db1f8cfaf6df45805e8e3d4a1d73f13e31
Date: Fri, 03 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735948553
