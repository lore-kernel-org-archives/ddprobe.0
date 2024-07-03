Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F878804
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719969923; cv=none; b=l9D9wYerlLhRQMl/y3RpnmWGtVudGs+VXD3nPJg55aAUWV9fWeNbMi1rmdCpU8SEdrpAjh/d7lgtVfP507hIjwf52Weo4h/oqbhw52yeKHu4tt59TuSu/Sq24HWRhnKuSx0ySyhAhQNbn73Pt1Z390W64xwc6d3+0akYDQPy/7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719969923; c=relaxed/simple;
	bh=/61gH6/BLS1IK56jogH4VrgoBNC+r66ETVu+JLeT3PQ=;
	h=To:Subject:From:Message-Id:Date; b=CcAtC3g0FzJEk/3wkO3N7x/n+g912+E1zVyQEbX9Eq03CYmM/GqA5FG8Z0AcW7ORKuSSNvTcVM3gHSZExvpQN2X2EmIJFUiG1JkXCboLvVFK+qTeW1VST57/6TYRYZW+nfB2VyHN+TOohonvtLbZaDtfC+ZYQkUI3R/qdBsRbew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQLyAbEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQLyAbEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF645C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719969922;
	bh=/61gH6/BLS1IK56jogH4VrgoBNC+r66ETVu+JLeT3PQ=;
	h=To:Subject:From:Date:From;
	b=aQLyAbELcE/q+c4HjYl/oDawBN67hazCLMIVx2YCfn71/DJtK/7s9R9KoVGjkHRJu
	 DZcaZM2kz+Nj5Z1QPWDgHrt0MclN+UnR7kHE/po9VSlBH+7nPPHpKOGx+kUpOsvAy3
	 I4gkvsx5U5YqQ4PVCGXjJl2UkQMYEgkG5JCFHtsoTxeTrnMDvl5y+RSn73+ssMtzDm
	 hNZXa2oeR9vF7IvHX9sRi3VD0Vx4fYC9ck2YBSvo0ag8s8YvQ+A3SA68fZw363xTLA
	 +TB6s1zMC+wkWZkPPLYRf8UXJkKaAkJakaQPepwie0ZavXMDwA+ZndjOtkAr+NyijL
	 3aZNUtFmQMD4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FEFC30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171996992278.14406.8225233026232868169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a462a8203cac30884e300ae9fa4eb09d6bb1adb6151a422673ba0aa5607b0e61
Date: Wed, 03 Jul 2024 01:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719969922
