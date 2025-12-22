Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD5F313546
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766404434; cv=none; b=gwy7CoRJgm+DutetjK9fraM5Okc77UFF7C00zybGdoZdEVoUO6sr7HwqW4GUpxR3YK6EqpiOufw/RbxEo7rXWfQbS44Dy71ynSI0LYqk5kxDmVAK7R/zINzN7NEJYE/NLdoZmmQmivBKqCk7/wvmv6jsBJ7pWzSLv8xL4Scfk80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766404434; c=relaxed/simple;
	bh=zVTN8Tfnr4So8oVyC25kKaaofblvmsMyz5unVSjwG5k=;
	h=To:Subject:From:Message-Id:Date; b=SczE8hFRRZVbljevb0LlB+dYeqL8g18w23F3EuUUI97OEXlluCcuFMdpVJ7DcxP0xYLWvX02WbMCuJK3q3Zi0FgR8SpQFNTr7qbf6/O9bQK5clv76Ys6Foa1IiIB3B27zEhIbgu8E6QTEumP7tJQZkvQRHLRrJKMlkdeMa6UJvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmeHKW0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmeHKW0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C47BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766404433;
	bh=zVTN8Tfnr4So8oVyC25kKaaofblvmsMyz5unVSjwG5k=;
	h=To:Subject:From:Date:From;
	b=gmeHKW0I+i4F5rCyrHHyOcWx4TqDzCcHT5q5m11mFqcbY+WWIiNsGjNgrcYTx5nLC
	 oZn71ktEBVf6H/I080lIl4N612MIYGnCLPLhqpR20H/yEJ0Dwqk4V/oK0R4LW5M6tJ
	 uwtSCUsa5qrCsUqHbINVzGLUzs8WEyssxCjK2UbxTbotyMOa0Jg4i5suCYU3X48iBQ
	 UAuFh5kkCJK0MuihtwvnZrgOEc6BX2kHi5t9sxSeoQAfMXLaXbXOlJ2xhyTDxgDMqg
	 x68g+tAHwIJdn8b2kp3w8VQuLhqv3e9a5Fd3EivPeK5M2sqTaUV7kACZDqF+Zv3ZiB
	 0QV8tTnfHrywA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F714E6749E
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176640443357.32308.8180675737165086398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6cc1a00adfcd6ddde0545166e9c92facf4325ddae3e73daafb013bb7fff9ab1
Date: Mon, 22 Dec 2025 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766404433
