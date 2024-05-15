Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56007537E7
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 06:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715755343; cv=none; b=Dic4GBlPA6GD+CYTuWm5dFlaGWnhWvdSYyfM0jGcEwf8k+RKBN/Ht2pE7rc+F7uW4bX1QHwUkRQbkpWvlf4crt1IAGPRSvkfFwJ8odoID++K/pIE0WXHU6w6NSSMLmC5fS3WDYZmrd4arWtxHfqehg+3YTq1/DiDJhJ5g8E631Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715755343; c=relaxed/simple;
	bh=0Z/Jxwj94VNQBlTCO7CNiCWvO9KMr63xLESl44rr9WA=;
	h=To:Subject:From:Message-Id:Date; b=KD2cffUYXYIbbuofSsVEPf3EsGk0rcmNnzRRX72Uk65y8KMgXJtGw5cz0KEXlCLFckL/41Ku20VTEimxGLT+to0zO9M1a4DagVNqvX5Xfk8oMoIsmENd5p7s/vXD1jwppZxddZikDihKgDwBF7+PyEltKSOIaVDgepBC8hxqK5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AffKLcPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AffKLcPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52A9C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 06:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715755342;
	bh=0Z/Jxwj94VNQBlTCO7CNiCWvO9KMr63xLESl44rr9WA=;
	h=To:Subject:From:Date:From;
	b=AffKLcPNRZJ92BAnnrIwOHtbdbl7129BDo8BH9YvnB79rpUJivSl3I4cixklDa1d1
	 dj4kmhG6dZSJt48vfYtgAuLEP2pyezt+nBF7PgHSfVaMcOMY6pZDazftwQmbFCY+Rw
	 Si86fpfww2RRx3FUnhbDi0swedovVgg3ICnCYWFa2O0YZy5/3yTCIMIo7H1yZzhAi5
	 4ckhW+0vIYfQiakJutKuVlgxkKY1UjUsO17gim6O7F3tY2pVibaFhxESHFD1ZSCGKn
	 I7XAw75ZUlsY1JR+d45LGJJXbWMaLrPr+7WZAXU/jgqFs74RyeSuMf/1zlNLtIwrbK
	 /jrf6oMotViGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A27C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 06:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171575534278.16492.14538906271114226196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5fac27aeeef9e94dbe0d4aa0b659af61079decbea6bb29491b21fa240377e9a
Date: Wed, 15 May 2024 06:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715755342
