Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2186020DD51
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781457994; cv=none; b=OUYO6W8sIDBcja8RZkuN0NjvaYfL5vN8n55VTiIjhB+Kel0//TAqTBzPPWDi1OFeCTbHXmWIgL55MU5+SVnRUgYxhkrZt4k5D018s9Zb71vOSkGV3WucMpYARc1+Ev+FzUIyfOhAdiOoF4CrY/uyv3HipNlpmzkT52fjsx/9HVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781457994; c=relaxed/simple;
	bh=d1V8Da+P257njV8qVOEDsoV7UVikrraOL7O0LzhgLeQ=;
	h=To:Subject:From:Message-Id:Date; b=SNYjXckqm+8oIfp0uVzkYLeT57e5SXvCqNCV+vKPPXry56zLgVWJdqr8eeIl0mQSmfctQ3qrBnmm3bhlEwlUrCV2YUMY/dys1BBZSAupZGuWnkR4oQ+pplhje4JEbHVcO63o/45Wi5yGBnrdgogB+dQd/7K9enWdRYDgtEde8Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZcYDDhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZcYDDhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8180C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781457993;
	bh=d1V8Da+P257njV8qVOEDsoV7UVikrraOL7O0LzhgLeQ=;
	h=To:Subject:From:Date:From;
	b=oZcYDDheHBstH9/hyK6AH0N2/SWlUz1lz+0JFQVD2T/b23XuHZXqQZ80nrRXS/YWS
	 U1v/GDZxGztCLX9pilIeHksttlrWmvUivsSxLd18H1tbH73q9JLRiz9uWg0O52Dsrr
	 kvR594ewVHYxEj5nRxjg2qhaVVlmVTVeDtRFJ6BmI3LqZPvetKIbhvzn50fCl4+Z1h
	 WWJ5v0OAyMYgNSf+APdQdYnWAsLbbkKXexEQLhCDuTN47Emu4EYphFGgBYglaBKzvK
	 JJUpgDGM/svS5SovNwKBo0exW5am7VdRfhTfDdjsYGARN8hlvUSQMunx5fzDhENjY7
	 vPvgKCWSm95Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0AECD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178145799368.24510.14580822431088419994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f67f9b8605b229a2fd7483e6180a5e882b825c46f51e65cdfc708d0134c85f
Date: Sun, 14 Jun 2026 17:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781457993
