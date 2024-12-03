Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302FC8460
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733267154; cv=none; b=Obv/Qg7Wxlkf/HoPkWM8+pdH1Jm5LXk7yEIGS/WJajpyn51xyGIudFViEDlkA5cw/L5kkrM8VSbWoHReuiAtvnRK8OttUE6jZ1/wsxvzS8SeN+or5z3ZJiGWUGe5imIAQsPKaF2AuZWsm2nV1sZLLE+nf2H6LNNVdnIP6ci1Rmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733267154; c=relaxed/simple;
	bh=+pTXbi2ZnscZSdrbP8kLQyC7l+bxjPJ3MNNIXJBGZ2w=;
	h=To:Subject:From:Message-Id:Date; b=ByLq2gosW32noRf59iwniEsUwhLeLgkBecOs6t5e8rvt5UrCwgYicuw7x3eEgyh9k/4s5mgFA49IcWjcZ+JlKodSE3qmXZ2hV+0pfI2NR8zvkAQ+XB74N3Dyr2zo4rrIdb7X/6vu0NiTKfk7yhbUq4zWzpeqMc23OzoC9s31Z8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+/NIETj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+/NIETj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C56C4CEDC
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733267153;
	bh=+pTXbi2ZnscZSdrbP8kLQyC7l+bxjPJ3MNNIXJBGZ2w=;
	h=To:Subject:From:Date:From;
	b=I+/NIETjESa7G3E33MxGUpShLbNHg8G8m7jVqAXjsY6X3KBcKthhE9nLOYQZyHjyZ
	 qGFLqYKJujp35Tk5mdf7hAyBxgEZcRRvY6IElO1hlotvhAICnFdMaT3O/noJTrKWEE
	 WIPA2w0WNnS7pB3dsM1diWb/abqbhNGBe5DHt8OgGk5MOqbrsEcYnIoHU5juVx6x63
	 ur7PnkaBd86XO0e36U5fOFIyrcVyTGzVgVsUsHNgFl+B1r1k4iTR0lJ19atJVgWHm1
	 C5QmDECiynxpWFz2cYAJe0BlmCQ435OWR6iA2y7UHQEBhimjwN374cSpH8TAAuhAPx
	 uDnKwwpVoWg8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC31E77166
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173326715359.1649.3266495774569221497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e562761a4d5a7173f7560c0371f03910b84548ec2b9751cb27204ab1c966e09
Date: Tue, 03 Dec 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733267153
