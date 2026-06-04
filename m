Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37516353EE0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780551274; cv=none; b=CBsD7OIVy4CWa3ufmD4/26cNTInyFZ33kHDUZG62uGzuNfJGZ92sxuYTxNl5BFrvBedynJm4F3bUU1ttg68ACbbgB0Be1k6+T2nKPUOt+iEYOAoNAcfjPGBhaQis+OIXwuwQVT5IPol/9UL3Ajjt+aFnV589g3iLtBdYVLTrrFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780551274; c=relaxed/simple;
	bh=UyF/PGbSE7p6T4BvjOEHb/miRfbU3FfMalQskbBmN0c=;
	h=To:Subject:From:Message-Id:Date; b=LaZ7J+oXVbip0O+/CXGnKIlrFlMvUxNm4lptuqXg5lxE61H35EWOteRMefWHGoqkkXxOeDxgqdxJMQe91nAACs+Q2U1Ev8Zak7oH+/xwVZll0XsoBsDXUPJx2SD5wST9LKBOWYhJBVcLK4LVP9RFsbXKn15WirnZ97Zi9q/VSkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nORv+LZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nORv+LZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C36C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780551273;
	bh=UyF/PGbSE7p6T4BvjOEHb/miRfbU3FfMalQskbBmN0c=;
	h=To:Subject:From:Date:From;
	b=nORv+LZRRdqVjDecak7qXTv8tPgmX/nUTgTJcvZT/sxqakvVc4fqBJRkLZ/V7rTQu
	 LaQvR0W10gGt3rOOcUSJH2UoYkeXpkXlSa9ozmDtpy77uioUMtVQJZMaR7j+XNho2O
	 HR+GB6w438o/N5xpeI8xpWupjNaqpdluEqHD0CamY+gjGsluPaiHOw3gTiOuV/F690
	 a9u5RvKqfLgk1L+1TYYfKu6HgMu3aFLv62yrKj1pJSLTxf2xn+UVCDSP4LD5ANEg0V
	 +TLTTXR/lmc70ajV56Es+ybQbXa5InTnMlrwqQA3L0eS7MamIUO5NM0T1YONntYZSU
	 nY2icK6vvn5EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9B7CD6E68
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178055127370.24824.6012884637924271952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9249ea5f691411ee292b5379288ee92d9a13636fe01cccd7f41130544bc93a6
Date: Thu, 04 Jun 2026 05:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780551273
