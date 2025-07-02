Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B5A23183A
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751446795; cv=none; b=R3Rv7aPsi6gsx8Rr7yrfHDIn+1aJw+EtPhN1hKP+6tJ+doV6M1pQyte1arAz1oQRMDAXkpkefDanyV9Zi6eC1oI98D9ZlnOZm4m2PDcGjGJolkJNzyPwbCA0mv/R5iMlkmjdFfTVZA6GyeXkgE/mP22ypz9gMPcsa+GPHGBybt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751446795; c=relaxed/simple;
	bh=XJHT8nwYYbR3D7lWSof4H2l6mtlQ1/zYJVyMSwXy7MY=;
	h=To:Subject:From:Message-Id:Date; b=Olo2UQKqT5U+jMj2Z6+7FUlGC39izF1jIsUIsaetLuDmlAVwNMhjlwvYqZiWYcvP3K+nNryRBtgyYW8Y9wC+lOHMV9eu++ajwrZIjCrIHLQLHyI+IKgBYc/3TsgtZytMHWvka/5R/zh9kLiXBclg+IeHmewyQU+DSzOAVl1UvN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8Q6iAZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8Q6iAZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A634CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751446793;
	bh=XJHT8nwYYbR3D7lWSof4H2l6mtlQ1/zYJVyMSwXy7MY=;
	h=To:Subject:From:Date:From;
	b=j8Q6iAZoml3GV/nK7KUownf+iaugHdrXuxdQ/rYfVfoqxyVPYgiXd7zeI4KcK3Y2t
	 sZYccGEFEigDFxbyzp4IKqW+W6DrmNOGjm/sG80TGCA2ynmikF5kXzX5YDICnlw6By
	 iLYm6cd/w8hgVvv2iKmeAqwbc4UtMz0GAqPtPlzIQdU//AA8jlyNE9e3aYpn8ZSSMg
	 N6ks3FbOfCVvhbCj0h/DWtKvRQdGxOZ7ObaxXxVJAC2gv9rNpBRNox5vya9lP9vC/3
	 YtJlnJTnW8oGwzMzfG0r1mpiBbr9ml15SukPpTpjXdqZmlKCKidl5QykFa8yHsW1Lx
	 OsH54N4pSW2Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927E8C7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175144679358.21947.17615622258214110456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b6d876c688ffabd6f145584119d92f9b3d77c57cbcfff6a004de5f17ba09d9
Date: Wed, 02 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751446793
