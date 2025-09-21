Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07F134BA52
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758457194; cv=none; b=HD35VMJUxrgd3n7ufVQDQjChfSgYD+WSYKFKiwb4FLxKtExBph/ghLTK/Qu119Ka1f28EdAwbeXMQXN9dJN+TZE0halUGdbXXisx3Wk83lOsXP4JDhG3reCJUPxNCNxXXVjao1ihuKVNm3bMWfeYqqp6VlScJ5FSd9LStS1Yyf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758457194; c=relaxed/simple;
	bh=H3X/mbQl2M+Q1rW5tmSSx0iMB2MrjIoswTmqZuFkpbI=;
	h=To:Subject:From:Message-Id:Date; b=slRmmejEC0iKvvVJXRURUcKyMD2FPpw17E132nqaZehY9PkhNtZg+KNqVZt45NeppIW5GUHofiCkB9IiasewczOcN+4tvvjZM1L32BwVhMNAfPv4KZ+W/rqe5eQqAiPgygwvsRxBEQHMi+2bgLf0E2NW4nV9dTWNVCY/+aizm08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iInKdnsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iInKdnsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D1DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758457193;
	bh=H3X/mbQl2M+Q1rW5tmSSx0iMB2MrjIoswTmqZuFkpbI=;
	h=To:Subject:From:Date:From;
	b=iInKdnsOb31VH4+Y1imf3uzpis4S4Jb6LDek1H8pzdcwlIaJApFZdtMsVq3LHsaju
	 XxI9HU6dpwxLJ7vX/UYptFF3+oCMCKC1vhHjTElKtkI9o3WpAsuLCHkLNIvaKNnpJq
	 Dvssn1AtI2+9KyAb6tlId8knmECynTVGXc5EXxn91Ar7iVrsxb1flqQL9O57pb+dyZ
	 Qv/pgMoFEUPmfE3ThMgiw3HOnEhlLrvVG43zUyK6q3ggmaWKfRtPv2w4I+lgXTEqbo
	 GXvHpF5Buc3YRqQinhwPr7wqKDx9D/sFQUvX1xTSHQcM6Og/OIK3O8fulblUrs4asI
	 3nkDPJB3qR/bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A42CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175845719357.22865.751516532988466641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd03b7fc718da225878aecd56963a632c6b627f3a792c1053e59532d5790e2f
Date: Sun, 21 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758457193
