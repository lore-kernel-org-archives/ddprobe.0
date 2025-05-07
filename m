Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C5D28373
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649194; cv=none; b=deDdC4sqTrvRvMzAIslM6fTeDog/rp/+N6ZhdDXa6nokeyvs87MCeHUL7M/hvj6hGqTJ4QJIgggp2AXSU2ddAMYsV2WIfHTnzyY8GAZMaodv3mxo0b10htV9nHyGnhojQNUHaQHgq+ZdnqSKgpDl7h/OFeY6rID6oGL0PiIvsnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649194; c=relaxed/simple;
	bh=ROo+UwcHmWNMBFn/5PYzAPanNRaUzCdlTBTUYUVke9k=;
	h=To:Subject:From:Message-Id:Date; b=q/wFdpUN0ov1oJPGfkjfNpgdjYt3hJt6LHUAWIArsU0a6FoiegiND3941C/qHKM0ohckUGIvnbW7U3GVXKCd2znCMl4gBIEkF2fCF893H8tjXvCoVyH7PVLqo1f1sAiHq6M1E4/bxkiA4X7Bu0VV9LQu9u0dNzlgV1UMdtGKNCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYTX6z87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYTX6z87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3838C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746649193;
	bh=ROo+UwcHmWNMBFn/5PYzAPanNRaUzCdlTBTUYUVke9k=;
	h=To:Subject:From:Date:From;
	b=gYTX6z87U4WPUTW6pGKKjc7s9krtJmQlVS0rp8Nrllu95PHO5vyGFqK0ITJZC/JzD
	 WxEzK06ZakKqatCCEPcanyMX/RG3ib84QyjOnP4k+EQJ36UBuauD2a5oB3WkajdAiN
	 YZtyTrxE+zhoQ5B1wznoOozULkA5gQ/fAjnaNYRcw57+VWI5BJ7d+sFunHQ7Q4iHZc
	 /ZtAsPNRveK+DpCOdnrYpwG41S31ZXWt1HpkJ4RydWPAnco2TVsq8WYFPE+7i/zhOt
	 xBC9l+td8Nub0FumwiHQSxZ7fI0YG7zMqGWrNdODcvC6GiSeeTsR+uWqtBeRcEt5ML
	 I0KPMsI/+d5Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91338C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174664919357.10719.8193991518283030172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d5c13f5a2aeecbb7a9b0fb43b888192f8e34413d8949092313f3031c89eee1
Date: Wed, 07 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746649193
