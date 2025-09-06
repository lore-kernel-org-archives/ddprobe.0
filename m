Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE92DF49
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757119794; cv=none; b=HK9iSUbe6ToUoQ1EfZO0GrB2VJgUbAtrFXS3XHo1ytsKZ+MPzV7vKhpvZ+B2gVIWXEM+19XX247L9WfeJyZwiPMxJRFkfygZFMUUNXxxcup09zA9niRVG/AA/qCb85LQHfCXIeLZvUlYPicM4ZC7me1ZjlHvJtG1LE30aJT0Zlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757119794; c=relaxed/simple;
	bh=nRvtfpF9K8I08QLehN8EVasfYSpZ1DENOT8MhW2PuOU=;
	h=To:Subject:From:Message-Id:Date; b=rr04hpZ/6atFJmoDVEVXFwXBsyRq5f+X+w3oKJPrWS2voGvLHS5jBTdA6qJGYXxlXKHBcE8Mv8GXUA/En1wGGOUDYBF4QMQ1qifJCHMI9OLqO1ng4nd74D21nh18TMNPAK3Nzeab6mq2rs+M+cxi5wc8YbWLsKcZDWMNGk+uYLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAKbnlNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAKbnlNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A721EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757119793;
	bh=nRvtfpF9K8I08QLehN8EVasfYSpZ1DENOT8MhW2PuOU=;
	h=To:Subject:From:Date:From;
	b=jAKbnlNfa89DNC/NqMp4gZ5B+b9+tJF2uJ5hM5wdht+aAHnthb6tcjhXKKSSqWoq0
	 QSZ5vinb/7DySSWjSfGX0hFYct1xmiR5/Vw2X0FNt01XyMeB7NO8VO9ng1ZI5o8u2X
	 XUEQjoyfLSWft+NX4EJUZlUf6PR9scZEepC5x+iIlSdL8H63lzsrv8rxtFgEJ2J5uA
	 Oltr/jOzLL8PFOe3MBD8zN4f+YLRJ/QaPAgDa5pUPP0/QWpNNSpsN/WPqwH4fBpRaZ
	 r0F1+oYzXOxBfltAXurO248dbB/NEi7WEELltb2VX85Ofs+c/8RuWXM/MOrA3fd57P
	 zVRixkgbqI/pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93081CA0FED
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175711979358.2836.11862693745568010050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1eb8562e638d860b99a17f4fda1554a07beff150d89d5b610736a7032293562
Date: Sat, 06 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757119793
