Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347CF846F
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746929994; cv=none; b=CNhb05oMPe25pH+164HTwNI2VA1/e9/paFqza06IYHqBYjqxb93Wg+CZT4sv0n6hKoo8N/Q55u6ZMJo/QUr7xdhdoTM9JVc1It35JZkpOGn2/Xz/wwd5igG6iiMbcLzNVanppcQJoMCaK0yqVShOPl1XUz1Dnw5S+l+y0UffpzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746929994; c=relaxed/simple;
	bh=X6PpN2fyXVt7ncTIqQHGc0NKV9EcZoPsvxt3h9CNsBg=;
	h=To:Subject:From:Message-Id:Date; b=YtFGoMY4gwnUEHlxUs/RqOkBj6c0lrNjPUIa4OxBQBx8yunFXH4MavSJPHTmNDyL+11nCJA4LYL4z8J1j9WZLrv9l1rk7TQqeC3+rqmwiaXOM3qwysbKONZkhzl7B4Clj9DBVUDHW4GYFexc6Wk65gJqFtJRjrggSHBEHmBulKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GiaYkpGS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiaYkpGS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F64C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746929993;
	bh=X6PpN2fyXVt7ncTIqQHGc0NKV9EcZoPsvxt3h9CNsBg=;
	h=To:Subject:From:Date:From;
	b=GiaYkpGSvOgkz7XcUvrLXwuKbq4Lp//2HXeRKVguLPdxkfUjlv7r8uF62XjBQNIEi
	 uY28rjp1QT3D8cY+5XMG1SvsjqIrg2u3igCt3KUd9f4kuUGhT9EoOJIyKH+8+8nvcg
	 Lqdn9mIYlf5IvbnG7ouw5ixmeJhdhhVUwMjUTVPaLnMxnowz/HHukenCEbhxRXa5J0
	 BvmVAShwmPcPpQCGSnlExf60LIC7aTIeiX/KSwblkTuVoXatTZwgJ/Ad+4/QNqy7JO
	 5ObyqqYBV2fRKJb3iTpgMVyBs/YGHLR7n109dMek3HB/NcsWCjpMcoNDicU6vUqL6H
	 fiDk+lUUUZ/ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D0C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174692999357.17237.14981151424147886399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33cdb896636d2cb68119f7d3abff5765fd987b3e0d6f831f4eb63428be7475c9
Date: Sun, 11 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746929993
