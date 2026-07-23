Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C4501DED5B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784838035; cv=none; b=OxDi6V0k6+nJqk3n7L+cSnniWfpoP4T5DKbJJRqpv/5okH5FKNGnI1Gn/Frgt/q4g4MnKhrzsExW73T5N6ZJvAb3f3V0lSzhw0BHiFjmDVt+xx325wFdYgH4RHObHojLr82Mg30Ke1pDpTXD1Zhz4I+Ng26sr0/asjRIijM7oeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784838035; c=relaxed/simple;
	bh=slN+xE5us3TMLrySSO7md8wFNgkOnCqBDSDWIpmohJY=;
	h=To:Subject:From:Message-Id:Date; b=EIrYdVnS+ygx4EmDGsDfPnOxy6TVQJPWgKIWoEjsAxbgGgOZUmBarI3ZLhfO7nrv8yCYNxoSWKRo7VIlO6/zKLhHpO09psKqCNO/I0/HILQIRIphjFIh0QyhFEFDgK47JBit7nY4Qs6fxEbusZ4UFh25JD4tc+HAzKsw0EJ/zYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chAH+RQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chAH+RQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8D7C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784838033;
	bh=slN+xE5us3TMLrySSO7md8wFNgkOnCqBDSDWIpmohJY=;
	h=To:Subject:From:Date:From;
	b=chAH+RQHKOJqPv8AUTsRf82yJ5dviZ9CZ9c2QGMpCAqZ8o9/Bw8ZuDUzrJkZEyKkx
	 GW11BBjb6T0FL9EYV7G75hXg/nXWWG/sooYpdrP3rYZMjca+moHcnm0YI4BHb6B1eb
	 FKk6xlSHhR0/kqI8w8+GhxHyHjBdgd9zz8YtmaprCGV6fxUzrhp/BYgpBTKenJMt0Z
	 zuHtILG16Yc5fo6/Mz2tEr8v9f956443jvxV+xquWXxdQpdAT9ECE+9bujct+Es/Ax
	 xLP/x3YwTaWWHXxj1qi/yqvqlremMKCpJYehRYW8wyOsph2eFQf6CS2XYIjOqaN5yB
	 iM0dB4eAtErLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EA2C531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178483803368.14279.1413768605044796171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e4d029c80eddc0baa496f5d461c9432d84159278888fc1726147f1dafcd62e
Date: Thu, 23 Jul 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784838033
