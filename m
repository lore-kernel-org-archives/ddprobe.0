Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1623230C626
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770638034; cv=none; b=US6MbXZwY0Sp+zzIutjzZCcGUTi73EQYLiJNpTo77pMWY5gzS6mkXv5ii9hL4YuxpCvftpHTJekTezUy42KdewnT7nxg6OM6ZegtjwO3xYlKDFmJ2MhhWwE5/UMcxdaUj2Vx+DGbR63crURJBj3Dd3RDBogtFOk3PS2CE0ZwHs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770638034; c=relaxed/simple;
	bh=xDLpaVXp7l9kSThnWc114ts/ChNp78d46LDWhJS2+VY=;
	h=To:Subject:From:Message-Id:Date; b=jhsbDZZycKfvT+ZP8KQCGZ/g3ss3SmX2/Y8d/5ocBGjLgUf7Pt6V79e5WDjcYJ6GS86nlqOo3GIVmvUXX0T5rBhcoLKrFgmn6ZfffBi3KVVowypZOt/87o7o+KTRQUNqOb8DNikDZfzUfLKIwm9Nlq4clP2I/RNzRojT5jqyfWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jo9ivU9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jo9ivU9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17A9C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770638033;
	bh=xDLpaVXp7l9kSThnWc114ts/ChNp78d46LDWhJS2+VY=;
	h=To:Subject:From:Date:From;
	b=Jo9ivU9SVzABteHnrEQD3b6H/PDePqeY9TRzb3xqV9t72sJLta1DN/Hps0Op9eobX
	 OQ/0U5VZw82Kpzwv+mkB4P+Uv6han70qi8e6AY2Egoo/tTBZaemYKjlk1yI0I18JDh
	 A2f+zdwmlXyj+CQRdQ85knaxzN2et/15Tppxng2xFJPYBbYnXHHU4SSEsFejCIfpfG
	 GrYW0TnIim9kB+ZueRbDHh26pfFTZfMJPBvCpownMVm8STgWp9ihRyR9kh3HjBeUZ5
	 DeDlGsG+/SoYPcDHq7918VEQyDZholiJvoymhBqiQiunkzaqCqm99hh71jUIJ1yGlu
	 ylwuxlT45/xmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B09E81BA5
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177063803359.28715.8440982211111008696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fdcfc5cd932e7d2f35e529935146d850889bb2d47fbbd374ce3c64677c1beda
Date: Mon, 09 Feb 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770638033
