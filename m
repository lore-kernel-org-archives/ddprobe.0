Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C2C246780
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754307594; cv=none; b=KNd3dJ4OjR80fkI4S72+1NOIdUgv6XD/1zz0CcKUZKNnh3eC8ZGb7UoxcYyDHlm22FSQWc+Qlkz7eQgS92DHVRXO6XPmmnzo/u1dFz75GJcJvqpz0lUkFHPyLa82VmF/hiOVkYFx5r1UrzI7B+6QlwtYFDxyVXFeuPBziClsApI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754307594; c=relaxed/simple;
	bh=1pMZTf8Vn4k+/5ehuCzA3OCsbgQhV8lsr+FzqOLTQwY=;
	h=To:Subject:From:Message-Id:Date; b=mNyepf4ns5P99mXBoFP4CBWZPFfwWETeQFijksKXBkyTUm15PvzZ5und6LCIyO87v98h+yRwluW6ubjx3ihO+kKNt8bpnAlt6WcPJFuN6PNfhVYuKD/SpEOcdOTgotyNRgRCcc1uHUtvFiH+iOopQjeSVG8arcqK29/ussWQ8WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nyu4Xrbw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nyu4Xrbw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBECC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754307593;
	bh=1pMZTf8Vn4k+/5ehuCzA3OCsbgQhV8lsr+FzqOLTQwY=;
	h=To:Subject:From:Date:From;
	b=Nyu4Xrbw/OpQ24obvE28UdV88fwK1ljnUvqkV1sgbQ3PPxAULT5LY8ett91Hzs8s0
	 XKP6jTX0Mp4YaWQ9KbC3pP2MKSDqFYjIl5wAeFSEJ0uqLn/aXFnH2iQTbZdch57Mmt
	 guWc+YkoXbYYxGg/QaItle55LYd/klQip9gbcVhPfm8XJIZmALb+1yh+OWFxZheEXI
	 ETvHhAZva9WFgD3l2L/QZyi/5e2onGWKTxXm65ZFzq8lf5hvdAn975hQ6sVdHJl0s2
	 XXDrMjugUgdvXwlE9V8n+lUENiEGbmxqwroUFhfkC1x9PW/xfY0tSyWku3ZNADYHMf
	 L9ICcrxfRE3TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E805C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175430759357.4595.3723371754603407762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe74f5ef741ba3b5fb55d53dd1c8ae0b91d694e5bb8d807e54ee432ef1d6437e
Date: Mon, 04 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754307593
