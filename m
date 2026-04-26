Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2640240DFD3
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777220254; cv=none; b=QARWcHrP6+BMCLuiCatY2fAI3s2aO1SAtUXKDZiZ2PPLY6OMlNsZyq/J7LZL/U6Z/2LD/oG69vGy6g4S05GetqK9wQX7Qfmm9ho4dCREAl+pHZ7N6VzvxDx+vah5RzkycHC7HCTol6epbCeTQxfdcme7xUACEVvaRU3SuCJSpaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777220254; c=relaxed/simple;
	bh=QKebdgbBrQpe7YOBQOqzE2icwHmhsUBb3aQNpWhH8iw=;
	h=To:Subject:From:Message-Id:Date; b=jC36eSkCykV+kTH8HcKHLczlkQDEAt995ip7ZUt6S9c7arYjv4gEYncV8jUfIvrRZbRTwZpoyQr8Cr84+Jv9ax/f3BwY4YBSWpgLZA4mV/jnAkur8Hw/iLAZ5Q0xo4F2jiIbIPORNT5sUcV6aMxd8unnf330syTSB3WSwoNNgN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPkj4fcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPkj4fcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC688C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777220253;
	bh=QKebdgbBrQpe7YOBQOqzE2icwHmhsUBb3aQNpWhH8iw=;
	h=To:Subject:From:Date:From;
	b=pPkj4fcdGUd3gi6HOaExUh3vxyFmXXNWvk5m60qli/KTcTTAP2855jJHKdaz5nqrs
	 9D1BvepksAx3XAI2pnSOT+CnJh9CT7SUrvKSWVf+D9bHxqjpw/EX97HyC9kC9jrUXp
	 8l8FFPoJir3O3LdC6r/wUQXiw5OMFGUqoLKzrTafVJC02s1+2FP4XDcrxXvEp52ifN
	 UoXpg+EKlVTgxNmZWV78Yr22OEoM/cKV74ynzoVm2LdnX2qXEK4O344KFgYmZhrc6F
	 YPonhlaBE0fNNXHVU759+mkre2QZGTq6Yq4299X/WwwdokzDP2/rgbPV5Paao1GLNe
	 eW7sdDSW5qY+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F1CFF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177722025368.7720.3092932791651604471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 238b81958242333f680892530c59d4b8a8c74d477ff6ffbd77fb0c1fd3398f8c
Date: Sun, 26 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777220253
