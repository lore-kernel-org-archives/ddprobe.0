Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D74F19E97F
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763681514; cv=none; b=n1EFQEKMl/65/86J+4COm6vrv84F0+EuQ/enzUHXJr18Si692PshAcbtNrTukKzs4DYoqaUCYcXsEq7wcasfpz34eIkadAde53TSc+AHmkog0uQZihT4YEF5UMbpdZxNIpnOiPFBo/nDvdenaCaUtohSrrnZKtQaEBZTlyngLho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763681514; c=relaxed/simple;
	bh=gwWzMLZDlst5IdpqAB+SgWZrWWjJd0rCY08Bgr0qyKQ=;
	h=To:Subject:From:Message-Id:Date; b=k9HGlECp8QHRGuITOL89VRTBtq5W9QOIO19mWEiMz8JTDpQZAz3/YA1AunS1MGr899jgSa/dhrFreo/qyWIhgYhv5/693olSP7wuixRmEG+hsbnEdHPpj14ZLu8EWz3R2Btn9+adzNOXsRaUOmpVT+prR83GuT87qYhCQcgMePo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLlDglCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLlDglCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BD5C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763681513;
	bh=gwWzMLZDlst5IdpqAB+SgWZrWWjJd0rCY08Bgr0qyKQ=;
	h=To:Subject:From:Date:From;
	b=qLlDglCog5fGNHgiqU5gtUmjgFlECyKlyCaHQ/29sNYqs6owudcfisawcwyso3VrC
	 74kuk3KOp2a6V6IYSfmXFckRJy0/jqNTugmMGw05WDLI+YRQaoQsKf7uW0fsgtEpzS
	 lZeG5Tzdnly87AJe3nUvpKOzZNfLSv3Qwz+Lh0YWDdHzzPpIo5XHcmQloi17G4aRfz
	 aUtZqJ/ezcA3vvLlrY2vpqQ5VlMkZMVS0o12VMSG1UZMkQzEIoteGXPTgAuNrFe0oB
	 ySzRauk1cUXMd7iA09Aju/CQRJ1wxl7048OH0J/KfAZW3jKROsw9lHcHCrgJG2gAdM
	 UAxwldBsgEcjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94299CFA457
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176368151359.16262.11037372659280768193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc5e57578879a067da5593a382ad8a0ee22b1a7156351d0642cf75d17c05041
Date: Thu, 20 Nov 2025 23:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763681513
