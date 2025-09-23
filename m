Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C3578F51
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758620395; cv=none; b=J3D8mNin0/IBC8VuyjgWsuludt9CCaxOvRhdCl5jwgfQtQsyfZFszFakpjpgEshW56Yy+YEJHJ+lQC15BbuqLukMmIZ0J1qkK463H/keJu18DkHaa8AIDaC8ReCKozBsugWhsWsnjX09DeJP87aANp7j2QSqmcyEjdvW4x8VjzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758620395; c=relaxed/simple;
	bh=qs84/qCxZwzLEbHlyOOekgBe6WW9/2LIbkqo4P6GsSY=;
	h=To:Subject:From:Message-Id:Date; b=skBCGNKU8UrugXx+iVYM/Yyp1pcyR8zEuU7JVyweki8A07jWR3fHbClycEseoVdRgFECNzQ8i2oLGYMG9zirVVVEcMpSaBFFHUtGFuziYJc1jM8iOTiP0Vp6kBNU/N8DDTAZ17FQNSekvvx6B1WyHk3YRU9FoPNG0Yne4IGSXTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+N5zC+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+N5zC+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDDCC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758620393;
	bh=qs84/qCxZwzLEbHlyOOekgBe6WW9/2LIbkqo4P6GsSY=;
	h=To:Subject:From:Date:From;
	b=o+N5zC+Fwvfw3PvyM581g35QkpMOPVtfxX6xBk/rBPBEmfGtuDKMskW83iZRgw4B9
	 HDD3UQkWGOqeUQ+MLskLjCqE3dchpffBgCCxOrhqNZfpM8q9Dl2CBmJQHHCl/t4GnS
	 zm0lTI2ZamJ/5RrmwEx2qPJaSRMjy66t0PYgxZHJ3zW9knZ/yiuVXxmRa+3V3IJ1S4
	 V5U1S6D9H/OrIOlUqd3sZyx/0p0OAY7qC+RW8sE6rYWAqP9cvv9ca4KbUF16xyjK4O
	 A8yLi2PoLDfuI8K9ww+w/aKyQe01gBvdhgSyrJOrLUzqNJKG1Q/RcmRkqK0QG1mEjE
	 TsAxpYcaArIzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F092CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175862039357.17318.18015702015609349029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ca5ed039741ba092fa099e7710db5ca6f670d5200efceb84af1701447c34ad
Date: Tue, 23 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758620393
