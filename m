Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500F1175A5
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786131634; cv=none; b=IdhlmIPqGQ70KjV64pC5PLNZhHG3T+XViTQOj+bSl2g/1pZt1pkglXCzlEq1bknOvencFiyTiskfhOLWrY+UvB3PZWZ+9xGXF3C8aUUDRYN9goEguPhHV8B9XCS+8sxVM7wangmq/fYkHrll8CiCGkBY/+NeK6HIUCWKGZVXc14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786131634; c=relaxed/simple;
	bh=lk8BLlXdhaap39tbUKXA0+3ZqC/faEvPCNc2jwkbnw8=;
	h=To:Subject:From:Message-Id:Date; b=b9/dxql+aWYiFRiuCdAasVocctA7oWcVUuD8+pbKhl/ewDeVweowJ/oDCTPP7GE+EAi18aiB0Y77VSkLvK7uhNUVRQ/YsQWrJor5cc9sqcsYsSWerxzvBv2C+7RYBbqzqvNkhrd0O9iJuiQM9qd6eO1KD97ByMrqqcMZLWWAuzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkLaJacc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkLaJacc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4823C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786131633;
	bh=lk8BLlXdhaap39tbUKXA0+3ZqC/faEvPCNc2jwkbnw8=;
	h=To:Subject:From:Date:From;
	b=CkLaJaccFmFvRNrfF6/iI9KkR+65sNj6Nq8FPyMXx8HAdpUwRTz7nqcZjbQRp0qSF
	 mkVl4EEyK3W5C1Hdd6UXaEvwqnARiUmNipSt01FsLXLcCO1qk0mJcb0rFvTTeckHuL
	 XMWphxQNe7TP05eyTEuT8N8hm5eVR6RC5X5NXS5K0GHSo0yS5RrsYXXLlLmpn8Z9qs
	 4B+LkJ2q6hkUmWC98GHrdSU03itWXBl1/BFrQwfVaoZEWcHFVS4Fra8ZL9bCHpzkaw
	 LYyOPhnFFzGYZ1A/iIsDsYKi28HFsA9zeDeIBrgwn/rafWjGyT/DcsqMH0wbima7wy
	 87gGPXAS/BRAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CCBC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178613163371.25108.3401892516165445707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29f532096609f1898acc7577d8d7d7ccdd62134ca8c285006ea4dd4f5a7bcda2
Date: Fri, 07 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786131633
