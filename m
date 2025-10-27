Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38737CA52
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761524994; cv=none; b=mY2XuUXL/tLkdzMtgB2c5HUxjmA22+betH/fGOJyrBTjm7ldGLUk8vOQSaN2PWWnA0h5xb8n+eEWa9WTixZ3yLn1ejBa9AJS4yfcgofCTPu7IOzS3gmyCfcBRMNYCPGEb3eYC6veePOB8FzNTmmdUrv1W18SlO461n18sykolN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761524994; c=relaxed/simple;
	bh=yt+X8ssSdjHOagmuib/DOpnTFfxfrJfoIZ4xL5awl3o=;
	h=To:Subject:From:Message-Id:Date; b=ltFb3z/5OTwAP8IsvXZckbzI4rrVyhusy6QVQyiXNZuWgolZa/sVcuomkzoX0wo4ba2RV3fMnKOVEY4vb+8BU5/MjOpeAA4cEK9HZYg0gx6kD8UlEqGfO9ThiuhEdeLuRFVAmWYoyKAD+zh8tZKfBgGeiH3mbnOTMSyNVGc5Bxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyY+H1gO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyY+H1gO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E01C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761524993;
	bh=yt+X8ssSdjHOagmuib/DOpnTFfxfrJfoIZ4xL5awl3o=;
	h=To:Subject:From:Date:From;
	b=pyY+H1gOj4lbGWCzwu5V5nM7PDLEYOOkTd8es6CcbU9RbECq8WGErktqEM3s6N8sF
	 Ng6jnH8brVQ85IBXBTLi9gvwHU+tRZarIPeKXj5mXTI1fbnJPDY/4nzMhHhV1Q7/gy
	 po4txOnvg7qXew1qTTCqgMgpN0zLrfiVb2KPYP9OPH5rNJMHrdqOyBSe3uLB/G1eAt
	 UuSrn8eCXslCbBDJieGMUbckDLm1N1PWpNJJhtBhS/743pqqLoiIRMdCMNK0g2QKPk
	 6REPX4fIMJM+E5I/Q/iYhHsOSHKJA7/TWFyz1ENkstNHdDItt2iIawfDdR5jx3EB6S
	 liBj2g+6ScqNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95346CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176152499357.28602.7164929410723595039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc622eee1b9df61918d0907ccd032c85aeea7b9de5a4afceb805f6a0e42a74f
Date: Mon, 27 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761524993
