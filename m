Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDE213A244
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726693554; cv=none; b=bdVBWof88wblMAf1vMras0M2w2Kh2gFd9BCL5srBS4tf7F8zaxjgC6+4SUYi0aHlxOxbxYB1I9qBbmSFdm6fNzBfUZXn5VuTRA7jHJH7J3bXtUJ5TpUrKzvSTNAf1e8xFOc2bIooK254vapWv25VwN994UCbu7TOH3oXu3qo9Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726693554; c=relaxed/simple;
	bh=M9cuaWFg7Ok6FKCDBSJW3tHmcvvG4r5oXh1KkWJ2ytc=;
	h=To:Subject:From:Message-Id:Date; b=S5XhQ6rZBYyJWky86uNCOZzhyLYJVBR6TlfRiqTcUkWghQ8+S0hZEHX//XCGWRnOWTq+qbPeVJyghV3ybWwqVwc9Um6I33uFCnQn1eR4jR6ooQdpnRMxREwy+V94ZN/kQr+nvXuQiz2rUrNvLZACsjtsdpaaJeQ7JQRcbBCPNIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boWEPhGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boWEPhGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA73C4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726693553;
	bh=M9cuaWFg7Ok6FKCDBSJW3tHmcvvG4r5oXh1KkWJ2ytc=;
	h=To:Subject:From:Date:From;
	b=boWEPhGZopzlnmn+qAy1+oN+VX3V2x2rJNQY/oAqfMiwB3/m3/nDSm/gGy/twYk/n
	 kYEk9oj/GuNkTJW3lJ4fZoetFvh9gFBFigtsA8AaDRvw6C7G6cZKriOrOckj3/qbQQ
	 n+eIMaQGL6uK4dF3Mj+SjKsBhokNe9SwXOwVlqd+bggHEDC/oN97xQwRQg2lruK6XP
	 CnhSoAiKpncRsQAawFZtH/h9n73DlF2TQhvPpT4bTdgvmzxw+YOQmeMMbmGAZYhtZq
	 xW/MfdH1EkuUKgBeik2y5p8AVxNbf+LSXRMJfNgx+uVdCAoml1gHcvZNeGKpivL/bf
	 q8lr33TUvMPXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AFACDD556
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172669355358.8511.11466830576378686480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a85b8f51c126dc9eecedcc2d76a2fb59ca44c5e25c1e0d48dacaaae58ae587f
Date: Wed, 18 Sep 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726693553
