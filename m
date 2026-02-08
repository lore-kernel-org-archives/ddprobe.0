Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C913C29B8D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770558233; cv=none; b=H2bFFiqYfmvj3a6ZbNaPMLXWzAz+ELthf8rstdsf5udmW1/RyC5zvMNNgtk+nqem7B8TGgtmc/+zzcMuLjS9YSYsl/JG1jANVG/asIB7to8Ia8JYEq239DGQawPd7BjH+LEZOwkq1GEJyJzJNw4xoAXTqXpHALXP7cE0wrJ9iLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770558233; c=relaxed/simple;
	bh=JxkFUibzY15y+ZL0c+VsfsjfIZDsgNiYWcMnKdhtNuI=;
	h=To:Subject:From:Message-Id:Date; b=nQtoeGTO7SKHNcRqQk+8ha/JdwiedxCLt+quwGfdiYkxpLxZARmPEzhNW2v4X2a+yX1yynk0qDFj42gHQ/P1Akxlm426liqZmTbBq8RddA6qI/mTgkP8LwWMs+BtKDz00bc1hLCRZzGXc7FF5tpEEVUalZzs+po/T1ySe8ODG9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bc5Gc5dW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bc5Gc5dW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C03C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770558233;
	bh=JxkFUibzY15y+ZL0c+VsfsjfIZDsgNiYWcMnKdhtNuI=;
	h=To:Subject:From:Date:From;
	b=bc5Gc5dWW1YFMarsk6gkA17c2G2/uX9N9OwJhb+8Gmxkqcxjsy5+o23tVw3+IsiYQ
	 jbWoNESDXsT1pok+VDtIq3e4fBkcd/gK42opld6lt9fSDe4CAvaFXLamkpS2MMR+Qi
	 EmOg7Sx32l3dF+02kZ3/b88tcYTBpieAWUhqR1a4BTCJvImBC/YbY7Db2YQDmhkpGV
	 coOZVXOaERUbg4lKfx1zJg31IndK2R/cFzHpxuD5HaRPUahme+tG99Bbyu9Eeg+gxN
	 D5gb1//kKj+Vl9RgOrjEmjn8xoI8sYd4xhcQo3zVLdo4bbiSaBzeRzwd4i8jI3LbTu
	 RdnGQbR8zLLaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DA8EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177055823358.12529.17972884249348794060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef60fc7694dd62994ffee8a95672387fd807809c02edd7cc50335e166c6f6a3
Date: Sun, 08 Feb 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770558233
