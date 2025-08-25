Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F8029D05
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756090195; cv=none; b=QapkuYONQBh3Lv3lAuI98vBfK+8nrsni2B7QxZKG8JsfxjkF/KOr93pL445jSPSAqWQe3qG9Jgqbx/KQUpJYpdBtLiAB5UbABF2hG1BWXnkCUEZszh2JCHaNoabIbsCh0D3wb9j3uFaSAfe/EBSAShajm1DWL31lL0JuutgD2qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756090195; c=relaxed/simple;
	bh=FX3lMzJ6A1HbdexGSi60LYoJb411h3T2Hwr+podeZVA=;
	h=To:Subject:From:Message-Id:Date; b=aZJFeI2KNt0RQNkzP6dl+CYNJ2AMVBP3mNRrv14P/agZGPXztDvETt7S92FlNINXp+noklsFkbspwwKXw2pbkQAuy7zyPq/0GlXHh9J9sag0gg/eiyjk+YoJeH6opeZgTe6h6bKO+0+G/keggfPBuT/6QKyCrZDpy2qdtdBr0ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/2jgA4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/2jgA4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A546DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756090193;
	bh=FX3lMzJ6A1HbdexGSi60LYoJb411h3T2Hwr+podeZVA=;
	h=To:Subject:From:Date:From;
	b=J/2jgA4NBqD51sRNwv24UikcVrdLHRYSWAXRLYv1GBQ+uJqFSjUgfZFYTTET3Cwhv
	 IVvGTEoXK9lrrlnTD2/RMwK9l0Rsoyg2bGpA/kbLNFyd7PaG4Y8eeIb/ONlILhzzg/
	 mIi4wzPihuoPNkRVD2hAnfep1NfbjmiqegHGmp/apmpepEN93TS1/7zUOB/TcajJxg
	 7fA9CGurlsDfshoUyJk12u6jr39w5ueCjetyUHvFgSJg0qYTG/mLEzzAQGUvFnBimi
	 toBqdRmbdxh+ASCJDWTbRvsX+vJlBRWQovBmIk6BgUXmlYiH9jkw8Gws0/ZaoDNjQJ
	 P34GmEFolXNiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92320CA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175609019357.6563.9104204205033763164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538544ee333049eff5cab7c94e44a255160808f16a590af75eb0becc16e42810
Date: Mon, 25 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756090193
