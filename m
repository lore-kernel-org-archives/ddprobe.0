Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E628351C19
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772642694; cv=none; b=oian9m7MpT612PQjSE6P40kueTt26SSguYoG7y8NzDL5DkMvU0/dE1NGh6EHgSBGtVstN4WWoe12KHnoJzwRbHUe8bVgtHd+bc+Xe3GnuuBxICA3U+1Rwrl+NcCpy/EZH2HT3VUC0N2LizpGlDLR88bpbZa/bh6NBHr5OYfYWjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772642694; c=relaxed/simple;
	bh=qOJSQuFEtG2pbfXlIaQGsMOapQcm8RdWY6U+QQfbfQs=;
	h=To:Subject:From:Message-Id:Date; b=LOffzI22zE6vYowzJSVROUN3tDrG3wajfJIDIhqao1ssKXrMBABH7/5LZEvTvSF0HoZgZq9+BaSC0/6oq325lSWfqabq46SuuMdci8c1DDQF44oYeSEfyuFDFuym4RKZJjtogvIeBNfG6GH1bT/stEvRh48qrKzzojj5DiKdQTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0uFGzS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0uFGzS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13C0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772642693;
	bh=qOJSQuFEtG2pbfXlIaQGsMOapQcm8RdWY6U+QQfbfQs=;
	h=To:Subject:From:Date:From;
	b=M0uFGzS6SEwPrrboE1haqoD4ZrrvfwdaCtV/F25wVXEtteJpHsyrWlDNYTd5gcYbW
	 Dg5dOtJWXG2nLv4lMrvwsTFuEu2KwzFPfkBjlAp6rgpQJnQd3dg9mS9T1PyJ4VF1yG
	 dEnmknAWsTBBtBL2GMnzf6MAXWWg2JrWr16RQU4DAh6aWI5q7evZrpf5go2aTivl7/
	 w3KWzTAkY645gIgDqRUN+WUWU9f/sfXxZYJxoTEKWp6CxgxR5jPfQY695cpbUO8HLi
	 jUBXElPN9+PPDO4jx0d02vfmg/tm6zCSDp0ucg4vuun9AmfCB33RWMlQv9dXGXskvL
	 GZMfSzEVnHYmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF79EF8FFC
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177264269367.14916.8522423856870967503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab706196ab2aa1cd161598cc9f9342d61cb2533ca06353a3e2330857e179535
Date: Wed, 04 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772642693
