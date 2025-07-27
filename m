Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE44CA5A
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753580394; cv=none; b=Zzef4wwJoEla9EhtHlO5b5GOqf409OIGd0rH23m4Ea6IpJQdp7OlSK4joZ/0HJRImXqidV1E2EDPOUvCNJSieY2sVnyCVgYc/vJYVpeNN2DBVC0DVHB69verVRXdFUqVcR+NIZVSCn7MW+yXLkReLhKYqweGthtMJ469euuRnJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753580394; c=relaxed/simple;
	bh=DfuFZUZXE6cuYoGvh3BRNDuh92r/RDLwQdZipk2P1Co=;
	h=To:Subject:From:Message-Id:Date; b=oZloG47l2Hub9bCY+WwmEcMZghZGGgq841aIbFriWjNEdypgQiCoYy9HCj1BUKzLBACTA+qvbo3o1ZlCjjZoqiLqqQDspromj00A5/NWUrsj6g65SSjKNrVJH5igFEwf+iI1JFHVeOVaIFk9Qd9gCXYmRc6Bs8Ps5Guezpg7Pnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1AJteHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1AJteHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E72C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753580393;
	bh=DfuFZUZXE6cuYoGvh3BRNDuh92r/RDLwQdZipk2P1Co=;
	h=To:Subject:From:Date:From;
	b=E1AJteHQ0DhSzDYgBChLr9PfzcRubNa5RfpuM3GVY1B8ZgaKffI1rcHdRRoGUyF11
	 aaYw7kn9PBwnu7HltNxTaE2x93pDqjQQPACV5hXdqrDhL26vrpbOMaTQVH0Nys/M+T
	 8qthyGE4471xUY/3KSnLPcHgNOeorqNoBImSTMjjMUVGoeVAJlHpVh/vCc96gym6sM
	 dty83Gl1S+PSe7WndTRGg+ogZ9eNCXZ1W+XnR4NDCy0T7XkTLuKuc0LqXVoTawf0fa
	 q1mGfO1zV9XqbwEiS93e7/9phRH5YyVKJdrLiGWzh+I0Qx3XeoQX0o8uNF+1sv8QoZ
	 VNjq/PNxjypPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E2CC83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175358039357.10618.12245326722109765730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3a48538ddb5774bc66ae07f9d08a90ee7d3c7b98fa942be2d4b5d684cc86fb
Date: Sun, 27 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753580393
