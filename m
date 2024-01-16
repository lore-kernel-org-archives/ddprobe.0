Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8512C874
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705439297; cv=none; b=HUocDNuLlZDyvX2Ce7p/x8EHbVNnHaLj2pQmkyaKnGm04SjL8+Loj/iFvrYQY9E90PtYuoVawaaeZsIXrFHW6ew8ZjzLyoC004m++pdTQsEv0NKfCg/rEkfR9qlDGLUfhgOuPlyx9FgMTQggyIQYM4uRYNYEz68mLkUxhwFqoco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705439297; c=relaxed/simple;
	bh=/5BF/rFUxoIIEsG0ttHEudrOMjH13vuxva9ZGwpJD24=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=bkiR07VK0oGjzQCniQYv5+FzZ0RM1m+Z/Xmb8m+R/tKPT7kMhtKG39mTQpqiM76hTiWlxBF1Rg00E/zQuLN3wIjI59quSndU1ntrdhhhZ/wZpJc9ApkHaMgXl7z5H208KoPamSmFi5+yCrwNvSIjhWVJqwNChi0Z+eCTXMCyjRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1N0z9ma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1N0z9ma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78BA2C433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705439296;
	bh=/5BF/rFUxoIIEsG0ttHEudrOMjH13vuxva9ZGwpJD24=;
	h=To:Subject:From:Date:From;
	b=f1N0z9maecxMvAuGsLow7/otOPrurJurOaoOJrXhbWXTMoSwtl25CAUnZ5s3jOoVN
	 swzs4bZj50EemSfo9p+JPImUtAppQbn89CMV2yuW/tlhbisdC7Jj+3Gpp9hFR/kHZm
	 0u1VXQtw7DL8rPD9YSganki4bDDECkm0sn4qCNtXBPYSPU/8Pc/QIIxc2CMVV0z4ZP
	 i5bsNtfe2PC4Zet4GZCW8tZQyhWsBAQAVf0pcx0ZjBEmOdUncre7P0Stdylwbg9qHW
	 uITii+fnoTL0lSzbvDGJKtoHXmRbiigJujiYr5CNzyv6LmaL1X1mpFatBapoH3SDBf
	 YtzZEOAKAGeeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CABBC47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170543929637.20794.10890142480719085829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72446e3f80e2bf9b55a235d65fe0ee4f424a79954b579a44f2d67ce4820c4129
Date: Tue, 16 Jan 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705439296
