Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B26E145348
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752770394; cv=none; b=cofdq7elIwJIVX197stsc8xaGJO2svej32HSOZU7pxKrf9J7qSAzt7h9gAsP5b2mhqiiW2VxRIPedz5eIafLNd03qcz/sfsRE5TulBUQfShIc4MTJG+7UmDVmZqW3OjTqIB/5FfjThMDXY34FnRg9sJTo5VUj4qZez4qMmOe3vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752770394; c=relaxed/simple;
	bh=WxqbU4t3bff1XyuxCUTX6G8sWqOQ2vFKAv1+3IBWSvE=;
	h=To:Subject:From:Message-Id:Date; b=jyp0X4q61Q13os2ElalCZClqq4Gh1uywH0smlx4xTqTeBYYYmUG5mQ24yF0krc0MS5kJXtG9Pu4AYnrZi/nhQlhzY2k8n+ng/SboCs9seFPC/4kNFT81oPFXw8qWQmf+8+Y0GH5kJTZ3Z5itH7Gg9tk4JCDJe++mV6/hkVPO0cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlWludpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlWludpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0002C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752770393;
	bh=WxqbU4t3bff1XyuxCUTX6G8sWqOQ2vFKAv1+3IBWSvE=;
	h=To:Subject:From:Date:From;
	b=QlWludpd7WoMux7SKoEnx4Anjm5UC5uf83fgoKwJiiARZaWS2Fr4/iYj8BzArP3XX
	 Bt+cDcXxuvR6l9ZpU+LSiG93HJc+i/x+6s5qVESnV+/KLoNWdreJok9bUGvo0j1EbI
	 kx8daiKT0Qzi0mKqWUf1NShCgtfLGulrHrAIzt31HTjGqO6KFiKIHVEQ8MGHXDEcT4
	 ChL4YdYEITdXkcrP6WM70WnbZU4IAo/Jsct4gfS6VGC5kvI9aIMbdK/ZKbuEYaj20o
	 UX6zbZVQLYGHBQQMc0uN94370j8EQE+z43MnJr6RICRJwDLz+njZekFo+VMQQXYn/s
	 RQBrjfAw5rzyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F889C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175277039357.9454.2406304292476332033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff449f44667fe94bc7349961e33fa3dc5e6c8ba67d6304da34a54eb74a4cb96f
Date: Thu, 17 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752770393
