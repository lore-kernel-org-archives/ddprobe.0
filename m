Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 731C227469
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717799843; cv=none; b=Y90627VijkyL/vyzJY+0RewtBWkBrWDhBZ3udbK5MIobYXrjuoliJ1YcB895bWyagHvUyDU0e5xnlRsXpIFN4zReY83c/VUx9i8IJnkQB5zF0ahOx7fXbcIeKXrgJv2Py70veQpMk8G4z10Ai2HwH35wBWzsjEhWnIA3XYrTCZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717799843; c=relaxed/simple;
	bh=I4Bv/cUZdKzObZTj61eBZFLdCVTJCjN939pe6xOzDDc=;
	h=To:Subject:From:Message-Id:Date; b=XgItwT35SguMIvJJIZ81mp4IMGYvVcbiX8iAQWGkHRrEnmf6ArRYmyYaPFKg310qz/UV2rlL8JkE+h4qLvvF42cupDAw9ieUDm7T2+EMk5eqIhF14aZFgAkgVnuooP3yxc9zGSB5jURXHR+pL85sI19KcEEc1W5U3Qnc9B98tO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmNhE07/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmNhE07/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2AEAC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717799842;
	bh=I4Bv/cUZdKzObZTj61eBZFLdCVTJCjN939pe6xOzDDc=;
	h=To:Subject:From:Date:From;
	b=QmNhE07/jUeYVicSG0R74mu0IUpC2bgaH3DnkTxRRufI97QchMy4XLKd49oVBpqWv
	 Z5JdGkKdRjWZfuXi6+PoUdriDlYYwFmMMqzDWcnilf+v8PMJ54fQz2vcc/s/+qnFPs
	 9pLwOYy+wwEyOuG78DnSKTEOaS0xs4iyUNhwMS7f2cTfUT+aX5xIIBfwa8I5Ddp/ix
	 x2zRPeDgLUh7VOSZOZv47G1m7zWIjPcT9doGrej8HikBnlvxDG84c8tiK1fxsmkU4u
	 SAp/07F+GfW3q17AUl0porfEW9GilbAzFZitJ2BqosjHlaaUmewO1uRj+EYBIYhNIY
	 VGZH+oZKJ5DUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F42C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171779984279.28923.5358695079017781307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 498f101d3c9513294561efff5453ef879d4921f1904a62cd89c4a81875eea777
Date: Fri, 07 Jun 2024 22:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717799842
