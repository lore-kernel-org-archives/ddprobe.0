Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0EA846F
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754237994; cv=none; b=OdCEyZLG2SxER1NujLDO35KXwaKvRudRqXMk8m9vihJhr0MlU807VNvyFfNzyA/LTyManRGyDw8ecGTl2Vaw5vUGb6lW+wzUpop07ySJwdeZIXNzKQBXp77U+FgoR6WMbLfF2TNplC0pRdyoLlBDQvCvv2gSGi/wrQq3f2/1szA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754237994; c=relaxed/simple;
	bh=wgTswWjeD+4u4lHA045UwDEEhuWMZE6D3tixXKMu4aY=;
	h=To:Subject:From:Message-Id:Date; b=Gd8g7O8imELx/blnPTZU9mC0NVVBIPYZM6/ZRpCdB1aaSLLdpq0SVlnhLukCXCnF8bl820JtzmsH0Z8+rzhyyppmP83r14mSqr61rcCJsM/7NZow6JHpvcdo1DxghuQe99LSqRJM3Ubi8+DdJSKVg1yolQlSUkOqaBjkO28yLrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Izlcymid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Izlcymid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E9DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754237993;
	bh=wgTswWjeD+4u4lHA045UwDEEhuWMZE6D3tixXKMu4aY=;
	h=To:Subject:From:Date:From;
	b=IzlcymidaJW64gD+iMGfTp3//3zJvmS/Kwy7R6rveMTxNMVDYO6cLoWu5pRq8rWbm
	 mFGkqf2ewelVHAonceh3zt4xkG8tqRkP/L9B0Fc+gqFRWxcQa+at0v5S168emQpxvf
	 TsHuMlswcut+FlcjVEL85asz2Dp7DXck3OXGXm2GRkkGAAdqgGxyWoB+hXHkHGMYOM
	 vzv74R+Y0aNd9NXa2TATVLzcnDNkL9Pd1bjN2YYTNooSuXxG4LGa0ytNX5IVI+prMn
	 m1rwvm/wRJEWco9xcMRmwuHte71sHRE48AjBACsP07HENM9v3umNvY9cP8+uyAN4hf
	 ojDmUHp/Gqxug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B26C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175423799357.6266.1374796251350699279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d3f230eeb22b14964cf5bfae3ee5675863e797b161c062b17c50955539c112
Date: Sun, 03 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754237993
