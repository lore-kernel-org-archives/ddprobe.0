Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121FAA930
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760955594; cv=none; b=tI6EUbMcYz2ABASRYRS9Qr/4wnQKdMqHG4xXcRdTg2k8CWBszRuLbUrZAMpX/dJ0tfMWPz6AZvVu7PiRK6wCSAVk5VICtAtX3S+bYfofosPmloNQnHircpiXCfdo/h3ck0XJV2MlWx2XY2ZblTA7xLtefJr+B/5dBerM7CGZ83s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760955594; c=relaxed/simple;
	bh=iW9qFpErur9V98srcO4kbzYCLvVJQTaW1KFjkeqo9l8=;
	h=To:Subject:From:Message-Id:Date; b=oE1ODOWqZdr5R7N4u/r3Yaf5Lv8LVQlfvl50kcnfvRkIDIbt7VmnRe7hD6S9vKUiAk7cm2Ki5hhw4LZYayfXuP6ydUy4oK2V8XD2sD5OpE2WE7UhumY+/H8TurpM3tBECqLv/azQEY7PBXQMk/E/RtIIUkf6Y+EmYH8CEGdnrFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoNmQPLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoNmQPLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E6CC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760955593;
	bh=iW9qFpErur9V98srcO4kbzYCLvVJQTaW1KFjkeqo9l8=;
	h=To:Subject:From:Date:From;
	b=EoNmQPLRNs6XvB+Dy2iItKg8okMj3krmdB3r0lyIcOgegpmkyEoCHbBsMw8WIfhVK
	 fuJrYBVCa48enZaC7x/m4y+lI0p3HHaGzWBxVxbr7h14GubiXSqWvqQPWxArFjfdyd
	 NM7TfD49NzZ7GQjS7iI8ea7UmR7G+4xMF9vZCHdfN8uSY6oFhBSYHHUK40dOwMYjT4
	 NNNus0zMVv4d49LiPl0PpXcbayK83269MJJlv6LSwyaV1+5+G6HUl4TfR964joylLT
	 isy2+/MpVopL8YLcvBpAavU/DfeRpCSO1uVKssZHV6WM3jBYv6GjXab26DSwCaG9zI
	 hnDB5zjOUA0/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9ABCCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176095559358.26883.3083941461190490512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a98e7c39f657473f331b10e3d5b8dae0b47012050b009ea0aa8f4518996dbf
Date: Mon, 20 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760955593
