Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB2B3043DC
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790901034; cv=none; b=tjaQjmjvaN70Vp4nUOCzG1so5uJUnbZ5rHotLwQjwXXFKPJ2P5nznEqzeP5Df+641tBSRuUoYTwt6zKglPAB7SUtstquygELhXK+6uqGxxlCNvq+reodqnVi8sdJA2bRukVeKac2gEQnAg4SbZ6+QKeyAhkaMZqJSTJcAh1nIRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790901034; c=relaxed/simple;
	bh=kR4NIXndPJ9vq5Z+xz/Sjm+sFqnu+qHMyOYA9+OKd4U=;
	h=To:Subject:From:Message-Id:Date; b=GUkPcPP1PzpCtbSXYAgYFhb/rN66W8ysrzgRHe9MHYMDHGOUHh0d9D7BLY3fTgTcF5lU2WxyZgFv/hsmmqVhUd0tXva96X9HonKpRTYzfeSCcohdOlCHSVf6Hv6KKZ4oD1iNDTpnG3H9XoS8fIjzs8kesQVoDsk/HLDHAraDS6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdCgXuQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdCgXuQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32F5C4AF12
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790901033;
	bh=kR4NIXndPJ9vq5Z+xz/Sjm+sFqnu+qHMyOYA9+OKd4U=;
	h=To:Subject:From:Date:From;
	b=SdCgXuQvIuUqEJOs6YlWxSnkAauaZias+ud9xvuPknFXQDEmO2P/r3JWIRQwHxjjN
	 XrwxhJ1DX2i8RFK9jQX/9aHT6P7vvSy4t38yumPgQNTmHkbNSW1ehiq+zCcEIDJtl0
	 aADDz2tWUyUVnWnqI7RPHtDH4TsKKkMKcut6kcuckjvCjL62Ih26e+sM/QyjSftRCH
	 aeRzk4jn2Yp3RF+cv9Y6OK40lhm52r95H/leQNcFiRClxwe/EnDuQKmmQVb18KnIT1
	 e5v1SsBNpqT7uxFW8ntwk0b0xJPsO+bXspuUpd9EmH+UXxwsml2z38A4XUTOwzxfd4
	 gzlWIqBHZQteA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE35CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179090103368.20037.9612454498961988325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72c0bc0296f9fbc1d546028c67adb3fe4f7107154eb24420890030ba0484d23
Date: Fri, 02 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790901033
