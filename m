Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD7B3B8D6B
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765176174; cv=none; b=MpOi4TGVXhww6bAuwzRYuk1Cy5Hg0A8OzopuAOf4QPMzRkQgPhu5QSqy0iJ74P4n5yeU0dwXWcUJAv8CC91NuuH26u5sWgZAPuHwVGk0fFnnAjPvfOtEp9eyp32497yGmeadwBWv6sKrb3wu6oS90KefyMDzJHrKpsa64sJuRq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765176174; c=relaxed/simple;
	bh=ypm2J6GVhDz7uhGja7c6gAwgC1qjI0RJYyVq2zAoXyU=;
	h=To:Subject:From:Message-Id:Date; b=NNFUTH7FeWXCiDndSLxL93eHpyVcLsFnKbSJvD7CeW9ysRdjEUxuGYj+fyyQ7BJibjkvcyT/PhUrWEK6bXxG6aRfv4bE4f9pXWK2KSaT4VZcYhP/Obds5I7eWvBbbr0Bsi4cPR6Xiu9E4EgWQCMMH3ffsgwKI5FLbVfQ9B56DgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBWDEwXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBWDEwXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4088C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765176173;
	bh=ypm2J6GVhDz7uhGja7c6gAwgC1qjI0RJYyVq2zAoXyU=;
	h=To:Subject:From:Date:From;
	b=CBWDEwXDXXjwg6IReNGs0LZxFPnYYnU2ppeOcuhQJJJPEfqJVV8vizO8gVMvDt18E
	 QaSAg/pH9S8+F2JFh9Agy6MpJTojeRrN3wIGje93VAo5U+GloblLdQ13QKoYL1FQ5D
	 7o1I4C1OXqQ9p2bVO6EVzox0LmVkT/PEQS07FvI/isDSFkkpxCDzvkC/DwQEBGZvkI
	 HYoFI7GZdztfnGvTs2IHzQqfDjg/I4eC6w09l8KZSLd3xh+SeElfoNjt3v4Rp2bMUI
	 Xm3Mq+h/71QVAPrTLOELajL26B8/EoMkHqrJmJPIces1orqVh13qEnK7W0UI+1nJc9
	 5H4cITOAH3z7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9161CD3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176517617358.398.5424602027305236541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca4708374ba44ff0b41c2b9de835b8704185b820ae551259be47d2fb982cf29
Date: Mon, 08 Dec 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765176173
