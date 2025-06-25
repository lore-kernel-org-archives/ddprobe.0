Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33802266580
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750865394; cv=none; b=YEcf79sKyFtIln2Wh7HNm3hfIgk/8CxQlqrz6ev2Zke1GMByvw/ax6yYgY2RQRvLX0NZYsMc7zNC0yKRoGQZnJHQTNx0ClGYEjUZ8jDxsRugClMC7xG9Tbt1ir3F6/ntEXhPSdS9Fn36ziO262+e/DQZDgTXHbGZko6l9sBg3J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750865394; c=relaxed/simple;
	bh=MB2v68az5jx2viucQjHcnMW2s9yh+Ci9el3Fhs+33Hs=;
	h=To:Subject:From:Message-Id:Date; b=TLTvzhu8av2cnWh5mgA3JySly+f7R4iDHRT9+Dzt/KMtEEBlRm+e0YKNnh9JJknvEa2Wn+eWHMKy9f5C9p219mAa2w4SORyY1a8NMRi4Rm9DC+ecAwxMkAQ0PfJ7IMrmhae+o9PjS2mPWQ+o/UCSrPAU1GAC5e357kvtjc46nOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNR92Qt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNR92Qt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A107FC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750865393;
	bh=MB2v68az5jx2viucQjHcnMW2s9yh+Ci9el3Fhs+33Hs=;
	h=To:Subject:From:Date:From;
	b=gNR92Qt4vi7HFBXvHcNhNNPiM3yyCa9Qtu5RaGcq0IwSZyyrqjIT/BdyIW6kG4Wkv
	 c8xgnVBNypAlh5jEQ35/e86k56yJQ1NGArib42AWIhJe3Awn7Ldxb1BQhel9yEHL2W
	 sxbVLDIrtWPOmQPZh60suxF6pcCd1cW+nAU8qCh/SSNSEQFwthx9aDbiTg3lZY1uMg
	 23rH7M7TC2jHd+oOf8OpLMAIkq9dFyu4e8AbkAH8TqVuQ4axMZSk/rRwdVQm6wzWU1
	 wBvWDHbNjaTE6rUgtQ4uzge313AB4CzeHz3/QU+ZA84IEwilyJyaaYyN7EZtkZhTFI
	 FO97Hii1QnzkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E726C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175086539357.28813.15955473978795840398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b461b1e2dc03a432f5b3d2bfd07fc0004fc33651ac1e7cc8b18802c2685cc2
Date: Wed, 25 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750865393
