Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3FC26299
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787433634; cv=none; b=HlaqpgJtoyVQFM+9oD+HnW5CFMAYg8+Q7VcAYEejTqg0mvVXPERsSC6N5f96CQjQsmjoF/X+9kmQmMSVIXpeTqNlczauISzOGGaci9f1dco+zwZBuYJrFhCCOfCltSWfTPUcZ3yFnoPlaDG+J6zMspExGisI4wei21pfTo7PU3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787433634; c=relaxed/simple;
	bh=BFyvnG74rXnNAT+jv68ihwaeSDRKmO2LhRJy+rPKhN8=;
	h=To:Subject:From:Message-Id:Date; b=WH8U2N9gE4IoWS3ySy4Z8V1ypvKOBvYQFccJaD5TURTRlOt7Y67px3oRCYetI8iVrt5CjP001dHpkfQfBbSelLqOQ8BnPYmLEYnsp42AyEfM4Vn+WgTRD7S5McQstoWcSZekXiMOI32B1FTG9vRFwcsC8GewrijsvhQzfmTocws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nShwxLZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nShwxLZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4031C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787433633;
	bh=BFyvnG74rXnNAT+jv68ihwaeSDRKmO2LhRJy+rPKhN8=;
	h=To:Subject:From:Date:From;
	b=nShwxLZBjIJjwgIv7MrgY75HfkSiS0tWRpC9THqH6DhhpT9mqeLPx3gTCZZcPGcA0
	 +9xCaDVlhBrNawB8I1h0iPqu7tPXN13KQbMY8AuIxniLd8maQQ/py1/+2yoKt1vUTl
	 o7vI/5F2YfmUIEId8XC7w61LZOnmd2h75V2swlB0Xmyx3QxCY2Ne7/9Ba7UNpYPu9O
	 jXmYk5V9jSqTY/LVchWnZzM1A+BDlKo3TljxT4CbvILMxjoQiApyOXaVqUh449L/+z
	 EXVLIs515B1Yl7niKheOXnNVNCpwOifQ/RGL/m4WyIyxI6KKSEu/vaxvh6YE9MSFO4
	 K5z+go1CYmYhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF3DC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178743363369.20945.5327546743240332815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2de72b3ee2ac532b5b49d3375ffe59b3a0d7bbf2a1fa5cf4dc472548c69a26b
Date: Sat, 22 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787433633
