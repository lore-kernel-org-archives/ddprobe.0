Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C17E11CA0
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728745554; cv=none; b=uExe/2KQpmrQ8xlWdDj9/u7wOVj6zq2I63bRnQr8HGnnzkFKyKdHff0orBIEP1pstj295ofvZG8nzj9rzwBiBFQnMnRhqlh6nNJD4HajHN+ML0PJMHUxM8UFSIESr0dD/BOOm/4YllSwCt3f1oNJIn4lDsimRwRnJUdd5o6Xrag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728745554; c=relaxed/simple;
	bh=ANKHf9vGGJ69D7UGcxsIDwk1nzLjazeR9J7dQyHYwSg=;
	h=To:Subject:From:Message-Id:Date; b=hPzPuxVdFy/HJmjUh1FE7SYV7YLGqVUwl2KukHlbqbpY3baja2N1YBl3wZ9RwA7wPEfcM+shJws9ZwsSxFvLEcu03RaiPROonO5msgNZdOl/xH86IMbV6+ujhTS83tFryi8aAAoJ8OxVrx7XA7nQK1KAk4oBRywKToFdPXw0NJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWjpTl3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWjpTl3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A1EC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728745553;
	bh=ANKHf9vGGJ69D7UGcxsIDwk1nzLjazeR9J7dQyHYwSg=;
	h=To:Subject:From:Date:From;
	b=jWjpTl3S7gacR0TkjhQaNqmTyBpO2UFDmT/nhrGGuaU/67XUp/fveEm8rTxDN8CvS
	 O64qCqeL2hmDNeTPFYuPNRzIchxzvnkw+tekZKy23GH6gj2TPmcm9vsuHUYxh/lkbO
	 WayRUWVdYfn6Rh29ZwTOkQHqJv6WlrdO+TjViUSZRE8VGNC5oUYnyaT4a0q9D6zrAc
	 ztZ4Gyvr+tVTH+lg0c2k7kbEH3/QIHWDBpmx4X1boCWG3tM+rJW8GMdHu0aRBRWwas
	 L8v6rzu3crSQwxcqeI/c0jTMwmT5t9TjL9nJaZ6OJU1zwOnrJoJxLQfN95ufRr2P6d
	 R87pxgJJqA/Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CF0CF2568
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172874555359.5396.12306256972089649695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 418a1b55636560dcbe49165ff6dc121e5ccd4dc634af861b85feee733cbc398b
Date: Sat, 12 Oct 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728745553
