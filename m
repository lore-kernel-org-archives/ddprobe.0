Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EE0356766
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788766834; cv=none; b=Vtdo4G9a1LKnWT7pM4HvYcwJRVbucbzITL+GifSZMDmVNyIPrG+eQL3gbOr0O4+wnLPUT/gbG6QAfnN9bdOhTIHvvM2/bqzhr4/TcoGu9kvY6AxI2i0q+udqLcSytd1EfyyPUVY6jXu9NXvXCUn9AyCyx007wVE8sGutlTduMbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788766834; c=relaxed/simple;
	bh=C/QOcPuhPl5hCwcM3ApsNxfluBvPuZ5x5JeCaCCXTdI=;
	h=To:Subject:From:Message-Id:Date; b=NmHs7d54+1wfugjINgZuft0t1oc9zmEWGaC8Y57aZ80vdKHETd37E5owYT/3n2VHQ62zzi4b2UJHZ9NLRnmvtgdsmX/PoL9RitfECWHiswMUEJzNm5B6x8leV/WFIAEf5s5blP0vpRDUr0CUF/4KagCybV0Q6+059YcDWlX6JRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7OPEX8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7OPEX8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D24C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788766833;
	bh=C/QOcPuhPl5hCwcM3ApsNxfluBvPuZ5x5JeCaCCXTdI=;
	h=To:Subject:From:Date:From;
	b=P7OPEX8na3UZQy2WMB0rO+DAli6m9wL0S65+/mImTCJoejmEWbzpH2CEcv7TFfFMq
	 1iEQ53eoqgOFBErqHpZMWg+iQr0MqctIA+XS5PSZTl6Voy1yHkJrVjOlY9Dzo+iKl6
	 H96pT3rBk2pplMVD/QwEcEnxOfi88huzNW0D14yTwYGMmr6dm6nV/XHFMbaT86ZXu7
	 f/2rHIfbAEwHE91C5yP3E7txW73h0zTbUTbUf9ftENHg6zngpG1SyFQgAsp1buFvSG
	 BvH/NhRidnvNHopu++w1wum21TMGieeIPqX7Keu/66khSXpCDpbGPstphoCJfOH+xK
	 zubxtr9x9yHnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB7DC79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178876683370.15780.14250176437889057253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ac2e98cc5ffad9ff6a4d24fab6c3a089d68fa8424708639cdce25a3ea2423f
Date: Mon, 07 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788766833
