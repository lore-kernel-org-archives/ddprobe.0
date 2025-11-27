Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307F52DA755
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764231774; cv=none; b=ZnWxz0UhZtf9CszFOXLGnJ0LUc524qaCUqxRkkkJdq0pOcSoiiuuuEZaUKMz9r36lTvBsuHQN4sURfRJ5xbRhxd18ThkO9u2rU1/lG1NOTQnbYndJGXFh2ua7bra3ow8vAbwA70P9E6VNf/anI6mItKtS4TUA8NhxO8DdfpV8bE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764231774; c=relaxed/simple;
	bh=+jxdlm0m77gCLv4DK7qce45Ppp6OMbN9mGCYy1H3/yk=;
	h=To:Subject:From:Message-Id:Date; b=RwkM/QmmL33AY4z2gOrHa1u+fAwKlYlIj067w5W/aF6ieSjkeC2cGQ3VqQ6+pRZw94/lvLjyutqi59jFPh2zYJd5WiYkKOZkIbuQUhi4X+1TT49YIde+NI4DoCBZJBHjcNPTZfc05vIXibVubw6gU9liBMwGFiCcRGiCZDEQk2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kso+AkfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kso+AkfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6DEC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764231773;
	bh=+jxdlm0m77gCLv4DK7qce45Ppp6OMbN9mGCYy1H3/yk=;
	h=To:Subject:From:Date:From;
	b=Kso+AkfBCZd515cW9bz/mrwbl4oaDyn5fufnNHga97eyMpYx/QFcqVzjYR0FjF54r
	 0IFxA4xznq/nOU5LzYLwvsDD42c13yvziiT12iciu5ADOrObSi/Szzja3u/aXchaLz
	 AuCEjFMwdJJCWFj6OY829emEQVSUZSo9j3Fwrw7lFVy501llJJ/lGat4OkvEBq2U7z
	 /nxkBOMFO3aJV5eLSHYVz3r0qbObtNXVluTptDGrAXqRfwqPsW23P+bC2zSN/rCypw
	 nWL2pH4jANlWI+Wv14cJ8XfHGJ/QU4gZi8j3spZr48yWO0eafXv3pGDDcdB52B/JYC
	 vkXyIs2drDMjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987A1CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176423177361.15253.16004178742498381510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6289a9fa00ceb1702c0187c8c7a341b9ef7b838bd5cd413cf8b6774c7908123
Date: Thu, 27 Nov 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764231773
