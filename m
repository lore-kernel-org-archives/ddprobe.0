Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D6B14AD0D
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748896795; cv=none; b=FR9mwvn7O7BtcWFeoZyVW6X3zohfZxQ5A9+3UYer4xEL9Q5Ge/kF3Xw2ZYOtfR1Gbn7aiWlGOdaD0/rgmm2ySfrh80lfb3+kYgLx8bk0F+Yu6tqZqWCx2ZJsfAX7AvLDeZnooArLRQ6WyG2/LwAqi2oXnjDglk4TrTheqqc4zKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748896795; c=relaxed/simple;
	bh=bA+iHHiqmQcA3sM668Z3jL0M7IfGOEiNv5XmaaXbqNQ=;
	h=To:Subject:From:Message-Id:Date; b=puTv4QY96T95WN+P9RLcg+bgB7dq37PtPyzLZvgUOpC919RARlcugvlxZJU+6JhCB2ttpMAyVTrrZFL/gqCr/x+6Gd/9WBDYIpZQcUqxUHRtZCq8mnWzWLTH31o2lqZG0yeuhFmgVUxf6krxuY2fyD3yZMFuxat6qdETZ8zypDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=di8Oj+14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="di8Oj+14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFE8C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748896793;
	bh=bA+iHHiqmQcA3sM668Z3jL0M7IfGOEiNv5XmaaXbqNQ=;
	h=To:Subject:From:Date:From;
	b=di8Oj+1471hCpoLivGiTqJgQdapQcDSnBKZLrMIpNn+7soT9mPWQIQTXJ3ZHWkY1q
	 YWdUJefLgEpDxQnZSceCEdqMeTQjJWaFRrG4uI0ub9Ty6vUAvRbOCwStHbJBBDCwjn
	 QiD+/xjQuepKcj2NOKidD7Rtp0m1XYZFDLnaZCNk+YAVIPMbwz1UYaY2Gzmm69afbM
	 vej+p9mkpgMFVAMVdMAMivrDbY8OJvZryuwHbVepa9uTkFre9iD6GiGdg6eLjjSEuD
	 q3OvacaDEVcm0uQPei1YmgQ3SHPmVx/D1Fc1z0evdj4+0Y5XOxYwoPLUb/WiuMwk0f
	 ds/BssupdUZnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97594C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174889679358.11390.2737805840687876499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee75b5c3d6c8ce73254ea70971da058b56ea1efd0a0a55e550a166fbff8ed621
Date: Mon, 02 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748896793
