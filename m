Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E877FB
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 00:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717288523; cv=none; b=NEsjqmxKOulA9H6wOyp1vu4DSQgFAdjNvZkiMzD0xsayd6P9e3jvzespzkLDwxEn53PS8x3EAo3DqFW3IJ84BM0BiVwne4KwjGib9FNpYurNbgs5Wiac1N2Sh7gvAWMEyJeKXNUdBJDducyB6ppUVDq9faVTuIaMfKt/bk47Tzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717288523; c=relaxed/simple;
	bh=Xsgf+rhk+TURDeGwNsSOZfys4tiUIdBQ8K8Nn7Xs1os=;
	h=To:Subject:From:Message-Id:Date; b=M+pMe3FZ57f0z5TvGMFyGUmaNr6PG+9b5vWAfleyA1JThrpN2EyTROiWM1A1W8I/VDA1vJrMc2ikv2Fb3xARFr8BVBFh2/a92DiSypDRJd64tljHlUrR9JPBcIHiwIRwEvS8nBRzRigrtmyed+GwOP6OFrmzH29zCXmgNMKuChU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqH5243E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqH5243E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00FEC116B1
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 00:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717288522;
	bh=Xsgf+rhk+TURDeGwNsSOZfys4tiUIdBQ8K8Nn7Xs1os=;
	h=To:Subject:From:Date:From;
	b=NqH5243EnK2CIPBAzy7fSzEXWQrKTXN+ts9mtlmEPDFMMumsyASeOe3mWHrbmnqbV
	 gFCGiDQ45Z9LfyUXTLuL3i/D5T+6as7IzL7UDrNcjzntqKR0+UdWEvHaqnZoCXFJFK
	 ZZtYNENuSelsqDTwakhMbKg79sINlJMfmyM+PNInrlCLe6y+/kk9UBcxofWUkDJnah
	 1aVP3IDw47jykw3cSBdU3oYeDzZPDzk9shVMmOd8kw/yjcC/pOBTu+QGgQPgP54yXK
	 AN2jZlDAZxuw9uJ3bWE8dgbj2WzuyfPx+sGY+FpHmzTwLqYt1zmbeH96+KONJ7Lztr
	 8V+8z53OY7p8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E5BC25B76
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 00:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171728852278.12933.475363307695775518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ba10d460e8ed1d17d935e20de0f66eaaf51872649247e4ccbba102d27b5015
Date: Sun, 02 Jun 2024 00:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717288522
