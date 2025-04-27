Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8593594B
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745777995; cv=none; b=dq7eAOwNtxCw5zVli6TA8u4p79n3jhrBVIAAYf/e+vVRengUOUN3jVQTWQuHmwnm9QghxZWQ9SJ5ojjxcJpOEu1tIhgz8RhaUjCJSgE2X56xGqZdaLcLNM3wxeJBW2kK/Wzz0iT1ulOGs6DMoDh1VHFTI4MgiGle5oBYP4C5P7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745777995; c=relaxed/simple;
	bh=4JXJuHEcCqlXW5A11KYvL4R3BIPyxxI0LkqdX60Ah34=;
	h=To:Subject:From:Message-Id:Date; b=HI02EOCn0wRX4zXVW9dVOYCzhnNcv/1aWno5d/AENSr35Tl+rPu1n0MiaH23oM//G6f3bvLE+oN94QdsIQwDy30S8fjV6MPvzX2aCg26ccldHPi6a//0TP2pI2nIqltvlXdBiwCb8CMqtnQoxc2uTOTbyAU6QGyxsTgrv+ut9dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7byGz15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7byGz15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D61C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745777993;
	bh=4JXJuHEcCqlXW5A11KYvL4R3BIPyxxI0LkqdX60Ah34=;
	h=To:Subject:From:Date:From;
	b=Q7byGz15JOuTc5i9z7KcxdrC035qTDAQkeAhHaFan+9yTTfih4PjFQRDHOI6htfyZ
	 XaJzfiXkK9VvKgIdObivhG5tTemoQNw/oLf3qYVG4lAdKc0f3CIjBchvBxa23bjgeW
	 I7UzAzMu+6tHV+4dsBpB1YEZ7QSaNgsBA1g5QGWzxFaiZyfGoY7zbGXg/+Ic73u3hR
	 RH8C5KVDKG4cuXAJPKeTn/mWTvN5/s7R0FIvHGTIXHyJ9knSqlTRrUTob+ex59P03O
	 4F08FZfIrGIztSZZ9SfdZzgemz78pMi8WImsXWd//vCeoPxwdcX9YRU3o57IyYtnww
	 JIcyhtV7dgclw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945B3C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174577799357.26891.13336336551459803539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90d64c2922501ac9a96115505cee262b5123d456a7dc88ed92c713fa7ef35eca
Date: Sun, 27 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745777993
