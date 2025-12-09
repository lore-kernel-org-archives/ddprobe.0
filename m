Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194B42264A3
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765298574; cv=none; b=muB+ijmoBLM9MUwEtNoposOdWEXLg/QyMuV+fzMKgneRImN6ADY6SZRbYbNNW/Uc3w0V5lmrvct42F/OE7e4fv4rl+4Qp/eGWpYG7aQHoG88zRunnhrKZEvzUgAeBawxHLZQa0wdNnrmYy0YgN+f7wB5wNX6WsxcwExfBv7LIBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765298574; c=relaxed/simple;
	bh=EwkJSbLWN3qIyQfCMhbqbk4rQkx0c6+jGIeT3Wh8uWM=;
	h=To:Subject:From:Message-Id:Date; b=bBZS3Dbp5jCCvMHnyJthkhVdQu+8XZCjUOBjDyLqhpMutOPvmKX9HwU042qJ7GrLBPQTyjC3uclJVgt+SwodfGQzxENahlQeAq8gBb3ggTm7DgaeuU8NyWL1nUxZgDBAJIEFCkPKLgUSHTzwr3L7utt5SM0IuKIGE3ddaJF7ePA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzZmGIZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzZmGIZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BBDC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765298573;
	bh=EwkJSbLWN3qIyQfCMhbqbk4rQkx0c6+jGIeT3Wh8uWM=;
	h=To:Subject:From:Date:From;
	b=AzZmGIZhKWCbvuslZIxGZPJnVw/uyixj+H6Mh4zCIk2aSzaLZ+QNHy86Rl9/iDLqS
	 vxAiche9vWQO4ijyzaTnJKmmo2d/vPbYjyv9OCmv377Z6TXzYWENScLo5Urim+8Ixa
	 lEzrRuBQVEFc4yxSMP05stD6QAGalINR3yuxebj3Qx0P3/VSeyrAtUD1V+tJt+PgL8
	 EphNY6RZlZn3RDIAZdUxfxfe8wUhpl3zZObBGBn09etnRRlY5Hmhkx9TTSvXmq+bSt
	 vqZY+9rRt8HBezMcTFtl6M0YScdQwKwOzwNYhb6MdF7HITjVZ+XC5YUl/Mn1vR3CYT
	 1eTB/O22+le2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916A0D3B981
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176529857358.28496.16383747076013508318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ed983745b5e7489880e231d00a5d6e633bfc5f9f1eccff92f544fbaeb14e94
Date: Tue, 09 Dec 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765298573
