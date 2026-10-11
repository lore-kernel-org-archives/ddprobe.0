Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598E31E8332
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791706834; cv=none; b=Q0iOBZ15AdIsjSvIaSlCFo4+UeBb/SCUF+DZvtL7NbkxyFVz9cNXJyX6z9VmdzFL7FiE9QDvvpMtw8Kt9zr46qM2JTzNI3BTEYD9KUM8Qm/APCzKGP0t8a+szHUh2f+jMrqEX3+1fkE9pao/3Rv7uv0YD9CY/1Q4AlE0zbpU7TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791706834; c=relaxed/simple;
	bh=IZa4gynAHdbExb9XvjviXCgnQG/V7VzG8m3fCC+dteM=;
	h=To:Subject:From:Message-Id:Date; b=P08AsBz2Fa+ChiKbKFBT6dvlTTA8PGIkbAvI7Q/zW+B89SBKnDRY2q19WQaesCI92EYBfFhy4zhzJ6af3XLJ0GSP0N+CKSx+Mmhm82f7f0ntApWWrJr3mIUO0ZQUWVxCypSgxwY3k2ZZh0eD5DWX2uyE9q8Oy0A2G6m6n51Yclk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQh+PoZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQh+PoZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15DEC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791706833;
	bh=IZa4gynAHdbExb9XvjviXCgnQG/V7VzG8m3fCC+dteM=;
	h=To:Subject:From:Date:From;
	b=KQh+PoZy8gpk3iJuO2oi4B5nmDCY2+pFGVhK3AebF6Sj0TtgHfvsv+7MCIeNuh0yE
	 Ue6Q8eSg9Wtip+G4wkJLJc/IKgcJVMNhbmkAM3KP/OfCQ0XoxXdtm6pvACjDE2V9gy
	 q5f9u6ckit6b3KohRGJFUgVnyqnx/NDZ/kVUWkbu7DK8Dzs0qVckMOW3uv40yG2aGs
	 Jclv9jQ7fkOe/RVX+IUsj82n7g57WFAZyaBCJ1R3ptDplEZVSmuzWZy3bxRR9GKNje
	 opIZgfTZ5FQpRf78F7qouvJQohLAa9t/01RB9XMrqa+Yb/vwEhwiXeQ3AHY80LYyoJ
	 SRzxeV6oaM2Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0FACA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179170683368.17229.14512378612353540295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 678120a62cc53e6e92ee29e675a5376240b86b8f83aff5f0ec4d2bfa8979bd13
Date: Sun, 11 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791706833
