Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A4B5234
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745229594; cv=none; b=i8bH1E2fms93gjAnjp4IHLKCBsg8QSaVrE9tBjhjRKE2gQE7cNlCWGWAhTPK/wkgSzD7b0cPCDgEudGg6MgeRxQ43Inj0qkD5PnqFGGoCsX1LqWxzJYmlAyHYRJ44nogv4uq0tYv0sgq0hNiSW6b0WfnzMkeId/zcmTKPtsDFFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745229594; c=relaxed/simple;
	bh=BnGFE3tZGYcAn5xl/wx7QO+zepnfRACdSwO43r3Z7Ds=;
	h=To:Subject:From:Message-Id:Date; b=C8Zx7mvwc+B7KN6d3te7e7LgTajhNNwgc0STC5T92c4rl8OR8Tvef2qDd2uqYaZ71CsxYawleejGiLBuwGcvGssudgV4BWvCzSjj0/OM0nMTIl+s/wRI5ojWJqJXqMSm7JEvylHAtRG6ieqz1hXMUj1zj/dIU1RZ9w88yQkG+kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvbqSPls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvbqSPls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3980C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745229593;
	bh=BnGFE3tZGYcAn5xl/wx7QO+zepnfRACdSwO43r3Z7Ds=;
	h=To:Subject:From:Date:From;
	b=gvbqSPlslbp7f8G3RcJP6poaSHh2TSmUAtF0lN0PS6EfVPx18Bk/uSaQkwZF1UJ0+
	 Rxsg6/Ny8YS4uOkKjdZ+1unzpMqLT3Qke9jm6/2OTZpqtT54vclrZli6gAWOFDLCbA
	 fj/tLR22f/8q8eurKUM4gymX+0Jss17wBf2zofc4Tt9yz70mirz5wkBVO/6f0ly2Lg
	 hSGpFJLpIdfxuqYCkye1lQ/ryzclvIroynYaN2ogw6sATSaYXugkakOzooxP6jJHGQ
	 a4TptMgsfBYIfS12TLFhtR0KTGHXpJaRSlvBiYWjmxFM0Bm6oB3m3fmxo9IwEVkiRY
	 gFlIJIXv+Da1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2516C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174522959365.32399.1406022245978178842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4171d15f093a8123031d9bd61969269876f68c8ac76a7129098e061dff77ab
Date: Mon, 21 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745229593
