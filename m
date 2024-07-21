Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541371FBA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721541354; cv=none; b=hofdp+QF7N0IlUd3T+SReF114/lV8zHSjBANT0RcZU3e0h0ReHEwU1HGy15y70a7hfbAtXQbDuClpgyDgXMTJygNHQh1q98xFLHPUsfbunwQ/A1F+i3XzRRvfPWhdog0Y0jM3w9QKrDAlnjUWI3JT8tbdUheOBS8nDv1XkzYwYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721541354; c=relaxed/simple;
	bh=NtaD0pz2wszBUChPdlLGhvqFfOIGfWSf6wchZCBmEgc=;
	h=To:Subject:From:Message-Id:Date; b=mChar4aOjhXq7Ka7WQ9FLXfcNgbjiMEn1SjxNVwmLlfhCtXtghM21K/l2ah8F17nCWQxQqBznoQ3eb6qgwxkVpVFwGV/M+s9hfce56FXjNH02KJv0Qg6RilMMYw3fUlPMMFj8gt10R+quoq8QQFyELG5dahqKkOlcwlFJeKItOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fhc/HZXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fhc/HZXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F78C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721541353;
	bh=NtaD0pz2wszBUChPdlLGhvqFfOIGfWSf6wchZCBmEgc=;
	h=To:Subject:From:Date:From;
	b=Fhc/HZXdA/D6xAKEryey2kB4163gSILxMLzVlj0/YFRJEhgG1NF8ZnufhgvMaQB7K
	 cPJDeKm93byAAdNZxSH8n/LReasQvdWPanYIFsWfkJu4NKj9jZ6HzBjP2GqtsVRmmB
	 QqGyAovHlAWNvg3oOQjSH3oCfPvKv5+UROPZ/BdCOdT72C5nWJ0OzqX+7TF7poM/UF
	 WcIj77xzp+0z283TgCzjzTblUXTnuUFKtInsbZmHKNflF90bNFK5YWkELoWKPhp2sR
	 ESBz7xOj1pd/8ZyvPSa4yvw7AMTE7SNL+4T+pnWITTCvQpCwRKrqcSPkk6MWyA+N+E
	 3EXD+Rt/GBmMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A0DC3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172154135369.10117.14779223643124684694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 877e61404b8ac921e92b62da1fd24bc039cd68e7d6477855218ed5632e7bef00
Date: Sun, 21 Jul 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721541353
