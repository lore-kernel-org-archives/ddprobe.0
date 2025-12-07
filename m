Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254F016CD33
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765079574; cv=none; b=qZXMB0cChfG07egu28P0JPC6tVOpcNyLvvBunQ6cA5DHP7arVEZxfvscNoAWe3UAw4NNge7I2uYlpD0lmuUuCYjhkRXH2zsO3yZZOByJh/RlDI2/2W5eZITL/Udimy5KyMFp/jDyJerx3qXDYuukivP744YrcW7VbANZ33xLgxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765079574; c=relaxed/simple;
	bh=fFz5Ud9TcFgbFGnny2ghlr9MPlGb66Suq6JfEeAXg94=;
	h=To:Subject:From:Message-Id:Date; b=duy1ca6dEj5Lirgnk9p4FxPRyCHehjYGDiZlBwKXjgdPR1YbnvZ62qPpnB51Fm5Ai1CsgbKhMW42mt91W47W13CdTZ2n/MBaycGOCZ9MEpFtTrO6BJNgW9lHYB+d0lGd3TuUy6QlyTsY226l2UEfv6RJmp+1JRKUJlPZNc1/gek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDFHowJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDFHowJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2FBC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765079573;
	bh=fFz5Ud9TcFgbFGnny2ghlr9MPlGb66Suq6JfEeAXg94=;
	h=To:Subject:From:Date:From;
	b=FDFHowJ/zJPmJdV6jCHgPiVYBkUkTOguhONCbu636BG8XWoxp/D4gsGx0WxDKmnTJ
	 L/1UMj3MYLUmrUJLzHYWLCgUpsixC3BewDFkTHInlCydTwcx/nlHBYuM3St1x3o06C
	 t6qZ88YJwW2wh4sbbS0PxvpkpnWgIBalJ9Y7bLK9IJQJBWbLM/l0DWGcNl6Z1C4ODz
	 qbM6koVUXNr33RxPylTxNfnv3TyhViZvrKdazarfE6qk25PgLIxUEFFCliwd0lHPeI
	 c+xzWzlF+nOQ8HGqa4/dJymlZOmlyxWciz5PyTt81VzOSdqjv68JrytOZ3mkISjz6U
	 w3+yE/W8ZmwcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A08D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176507957359.12835.11105722068762701980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f76cf14fd9bcf8d98cbf09e1797c02a8623542df7ae1616347a414f3a8cf62b7
Date: Sun, 07 Dec 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765079573
