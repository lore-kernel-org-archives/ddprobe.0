Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D182BF00C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750857594; cv=none; b=tS6zYh4UD6WYaWbd4ScdVH1SWqPVo9ICFl05OlpzOq6Fe2QInypbrhKVZaOGG0H1RtRJfOtrwI5jzmDdsX/wGwKODZcDgRrCCdfTDWc2p33QWU75RwYo8bSxNK8BNl485MDhFerf5p6LDztTOExsj3C+0y+MPz7H1/ADXIsJHyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750857594; c=relaxed/simple;
	bh=yP+49P2MnRS0hVkLUU0UQo8GQ+eEKGL7OKlMZPFCZWI=;
	h=To:Subject:From:Message-Id:Date; b=dipLINBlo7L3g5Oz2O8Z6Zd0MVuySPD8WnqRYvlnY3o3NWkUBmfkHwKOo5ENxvv9Xv1jxMMEZA0fu8k6fuf42EogoVQRrkLQJp8oH6R+E+VSFWVimniWq2Dz+M/DErQGqGQvWABdcSQ2C2btB1DUlzhMi0J49YIFOahZdTfCnyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLTjcJ3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLTjcJ3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0AFC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750857593;
	bh=yP+49P2MnRS0hVkLUU0UQo8GQ+eEKGL7OKlMZPFCZWI=;
	h=To:Subject:From:Date:From;
	b=MLTjcJ3VErFUQ4oxgKYDTMFh92QHFYF7PEkhUICnk3AV5aPWs9KlvysTjEktzyJ4k
	 h6fMoic4PSJgmQs98G7CHEnrXSLDJZwSkP8ZVmbVltMdN3UI1h+bKvq7IvdlaCZzDT
	 n2iPGauspsvobNWsDE41hS0Lm+UheoNEPzwDdQjtFM04ArnZMKPxhWKrtsW5q4S6Fy
	 OK6KE8Hr9BMfGVQ16uhphdSzds+M8eY7fBZ4+v19C9DZETelbQwo1ZuG70eteZQAFu
	 JbW7cV68u5EXD0FxbaVzbO4XuMEPYofslvKtySqQeVWwx/bXKZAAf9qOGw3soYY3P2
	 TwwkbVf3MuV4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC6EC7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175085759357.12049.1747617133476667942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be63c6772d1f3c1ab9d9c85b08a598659a39cd2922ca8cf549e958e430218c4f
Date: Wed, 25 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750857593
