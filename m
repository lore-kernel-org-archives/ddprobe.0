Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7EEEEA8
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751983194; cv=none; b=uLsvTYTudH7cKVFPExFdhgfcoQfZjtR5E1nUTvwfkuT6YirR0o1ooY8wpH6FrwYeDGmuvtGONcIlW2FI7lYgYPDufZf8kmTaL/KoK6Sdocw2rUbsoXgvQZf1HgefaEhiaijTKURqhOwBGmiytW7QfhJc/yQ41/SFhIq4eR9JUXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751983194; c=relaxed/simple;
	bh=7EHDvaKiP63xICYnL8RcYyILMeg7DYv57DQFVsrTS7c=;
	h=To:Subject:From:Message-Id:Date; b=aEGq1JnUCd6TLllkc8pJYgaGft85wlO9JcttVZySE9q7T3TBse1fG5zib/TIBEPXsJinpaBy/osiT6/2VTC9h5STYQ02+Vr5lpRFs7vMqEbd6LzKD7B3pZNgMx2Hf8c/QYPNBYufKuqFlqqB9BLBUC8T6Gg/oD15eZLfeS6soZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHsHPRmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHsHPRmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DB5C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751983193;
	bh=7EHDvaKiP63xICYnL8RcYyILMeg7DYv57DQFVsrTS7c=;
	h=To:Subject:From:Date:From;
	b=rHsHPRmtyTvjqR5sIsfHyR8YvYmz1ZGAOdvpz5pJUB4bbGPLzaEeyZCzjwlYBUulV
	 rar0pKvSEbLKWqngehdQtCYhKkN2nP6h2GKmDIC3c5jmVJywdoLEk0VsVHz8MZpzrq
	 w7SHxgi4zmU9yDlBTcJioD/5omD/yhd6HCGSqkEPmaagm4ts+XbiPsjYK1TfxQIUxC
	 HB6aWdweyn/He+He5ReXOGxFqM9c2MYZfBqoO3SH5yazGtOToySbL1glJhGq1rBV8B
	 4zlRy59P/gkHq+fIahpPO1ZAYMnSutkyh35TZmYRM/MAT1/0xLOsjcoHGF5TfxHktm
	 gmPnIKhpKYxFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FAC83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175198319357.1645.8805828792018733965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e3330fb4bbc08c0cd14e789a26d770d4682b1a5f3869c37e195a98bb503b5f0
Date: Tue, 08 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751983193
