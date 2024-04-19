Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88FEF1119F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 20:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713559223; cv=none; b=r512sdFaYVGv5M4zD/BynSL8e23eziNYQ+ke/ORiZYMtulh6eoOFjqQS6j/OupUlTn/ciWp9yDYxXKEIjdgX5wdpILZ8RMoTsD8mVjnTFgaOQ/XNA8BeqpwjJqL3O5DpVxS3YcgCECbzg9Fbrei/QoHUXrdzK2K5WzwDFcb9tsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713559223; c=relaxed/simple;
	bh=ij+IlO6i2pNnDlFKN/xy1uFuTTNjsbQ1/UOglXY5xtg=;
	h=To:Subject:From:Message-Id:Date; b=t43vO5Nv7e55Id6MQ2Y/1PhKyio0B7NrQOXCXJCiLpLAqQXqfz0Opdic88W9jjFYfT53VzWP6ZOs5JE4nWT1nwCJmPF+1kMppiofMeNLyKU3IUv+p35MaaXq0J6G20eICz4ZQLxJuqEva+F8QsO8HG/Z4fabG4I6ASPRE1Ay648=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvC/bL4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvC/bL4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB468C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 20:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713559223;
	bh=ij+IlO6i2pNnDlFKN/xy1uFuTTNjsbQ1/UOglXY5xtg=;
	h=To:Subject:From:Date:From;
	b=ZvC/bL4kwHn1jA2GVKKtu3mpu9TSTPGKY+h0PmQPmuU4r1GHqEsVYm5oRl0M/Bwwp
	 Kaoltz6WMpRITiJDecyDo1l8xVaXoL0faORvNDXRCfeUk8ea2ymbG3jZBZicubtg8q
	 K5kuMlpvxUyLvIGGfD+8/L4mXb9wDrFsrs2hOIY3Qyflshw5BtkkVnJJ+XO/VdiDyX
	 CkiWIE7F882Mr02u5bJsur53M4qmdYtfYd4mDPH3mLOXNw1Hu2FKqCVxFFCsUQqbBi
	 KkbUdph71hKxKR0LKmRsxTjRuBsylVkVokLQmEn2pX6xULUaaBWDhycIOglOc02b9k
	 HJT5UcgyoE1ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D50D2C04FF6
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 20:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171355922283.21455.7734986544651520040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 331f27c4d4634eed0ca0bde787dea913d616b544136d981a857f0ac67255bd33
Date: Fri, 19 Apr 2024 20:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713559222
