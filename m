Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E98E6BB26
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 13:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720965023; cv=none; b=CNXs3tmyHdvXNLQEluxrQErZUZKCoJZRbYDAUL2pCarCarnX2bUVlYW11oOLIM/xF7tF+R1UFrMUKjh9mWLfXdWhHsZGqLS3soiEAjD43qJOTeOBlq+14xRmFEDYzUGDK90CHRcQn/cl0ACDbGefLQogwO53HhZDGk20hP8Oh6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720965023; c=relaxed/simple;
	bh=9+cd/Moc7AdunYLon7ResVMPc/ax2Bd+s/UAk4+YSvc=;
	h=To:Subject:From:Message-Id:Date; b=d8VsdI/YC4e5iS1w7HYIcRI+TS4Ggh9bAXQupBbjrvIV6upCRO5xmVt7TkQovA0A2imwAfQtiJWU52C+eJmneQAJbzFQTFupEeP3uY42OIQyb2xdcemaqbObAHckkLsOR5n9dpTJTzWl3qDMCfbsVbazOy/rcXuhEP+htOegUo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wq1YtRH6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wq1YtRH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D587AC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 13:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720965022;
	bh=9+cd/Moc7AdunYLon7ResVMPc/ax2Bd+s/UAk4+YSvc=;
	h=To:Subject:From:Date:From;
	b=Wq1YtRH6dAOtiAqr4AhG2lQL0bo36M5qrlczTx6PNw65yBKekKVYCun9bmfFNzXZZ
	 0XIqcALHoPcjWC6SqRLn3wkzFH131MhgRXinK3648hHKQZuuoqj5gm2P0l6g9xiszr
	 6PLooTE/fo2w4wC7o2C6jLeGZURqYkm93YrzeFMsU2UitwQKsI3h9XgT571/uP4VJF
	 MqEDxRZfdjNdl0iE8EJ3zE4NS7GunXLqT5iYLfmQCp9f6irHPc0SUdJP6m4VHkiErF
	 DXCZ8Sz6yfPxc0fWIbPg5UbsqSynVsMidVtZdTFDNNGc79ZQm7yKZAxixJdx+Oe2K2
	 K4FuLgicxRw2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7D2C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 13:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172096502276.3881.10288663851348393725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a687d75415dbbcf57989a77a8dfe17469f55009b61cf1b5559335945dca5b96c
Date: Sun, 14 Jul 2024 13:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720965022
