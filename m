Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F472E1C7A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751040594; cv=none; b=Xwn69ggTRuzBIT+W4qhnb1odOJZ9w2b33obXGAGLO+qYXXbsyfnY4sNL2CZ/e6gHcNvKdWqfpexii7jK79Q4MJ6lc8s5dXd3A9GlBEH/QULYa5V1w8mEgNxTGwr07twxApDy58v1y4w1P+tr2i+q613l4BtmU87VUvrUosZHLe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751040594; c=relaxed/simple;
	bh=O6goaR1nI+WsRNS1mMVaWmgpH3jzILx1k/xw/6ST9yU=;
	h=To:Subject:From:Message-Id:Date; b=sCADY6caf0aJnkfk3OUQQUJuhFbSnRL8mzLheLPY055hjH5pyh8RlSN9siCFuPUFhbTi+vXjKgHhpn4l1E3QzOYcoRnIKVVNg0NjXFj6VQCi8XeHVNPCl7knUQ0I9UfiQqc0TYyzi6m83Nddb0Aqjiku93jn9WckVDwT/DLPW8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tj7XxFlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tj7XxFlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEADC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751040593;
	bh=O6goaR1nI+WsRNS1mMVaWmgpH3jzILx1k/xw/6ST9yU=;
	h=To:Subject:From:Date:From;
	b=Tj7XxFlbhu8NjlK9AvPDp8kGPR+ATiVhANG51Q/spulNG0ss+6l2W1ybKh8LHwGJM
	 YaOKWUsryJY8lqjHs4wngkVkzPFXCJHorNZODEH+x5WlhZkV45X8OyfKJI90qg4Aug
	 6hgv9J7Kti7yVRr3cGdIB83a45YGtxNJbVqcp9oJVGf8oS7IzrPvOREQmS+x5RLbN5
	 ntNaKrd8fSzA5nbSuh5b3nYJq+saoR/n0w8hhIp9uzi3mQiiPr+UEmRBwkw8VBWO6V
	 VNbRkKiJD5x/FvXjC+3x/oP+CaEcjpVfWozYdwSoe38DLvVeUlDnZoJ/EuESh/dnMT
	 xYGXspovoHPUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFEDC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175104059357.28218.8069045805828128609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a071906b0b2317b8fd4d5724a1dbce3e8e2cc33fdfddbe5580feb43c5ba83cf3
Date: Fri, 27 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751040593
