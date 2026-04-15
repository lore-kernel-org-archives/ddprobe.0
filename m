Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1427C33D6E1
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776250654; cv=none; b=Bpai/4bG9459u2uc/9oSI4w+ltaRuYXet7IFQauNY65d4yf+/vUkcZlyVc9Fco06oPFGyXBgJUnZptvHn9Xr9sKDHTO/eYimik/SqdCpGY1cjMjXeuy4K1osQ+F4Oc0RlOOAkdOCuGBnruGC44/hM10fMhRNvWsVOTDC0B3tgMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776250654; c=relaxed/simple;
	bh=swtBqwLJ+EvIVkDfXnMKOAhwntilCD6A/Tac2mus8sg=;
	h=To:Subject:From:Message-Id:Date; b=j54bT0VSHD2AJkV4Q3sqIFxAo4fl4AyiIY+d9KBmnQ7pP6n/6SiPlQbmnqmM1OauCjVIRFxBXW5IDrDUf1jC2zg4MRg9Zv4ktdJ55kwnosuChjsoIy28fiqHV91Y9Xi7FBJ2lXa/1pzVlG3XjFZwUScXLXGFtxJbtKW03gmvtI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZUOqmch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZUOqmch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BAEC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776250653;
	bh=swtBqwLJ+EvIVkDfXnMKOAhwntilCD6A/Tac2mus8sg=;
	h=To:Subject:From:Date:From;
	b=SZUOqmchUB2EdkRd9AxVAw5TVaYF2ornYQ3zvmXBV1dqva6ZFaP/Tjwgm3CLIxb83
	 hHRA9p6iUtwxGKzu2Dty4So8N8cjp1B1KGMOFjKLp4vOv7CH5Q+du+EULQbcyFTDbO
	 vUR4qPfHO5zQgaMFEC3Ud4a1MOYsgn7IxHhcHUN4f+1yiHAQbUSF/pHigonXQ0H7s6
	 HToNIpfX4EJZ9B6U2ZokHQWQNA1goxoOYs8589u52KdiI/J5WpWyBbAmstZVJhEl8G
	 CDAG1G7PivIXCeVoekYzdDv6zd4PuXA/NmTwZk6i0aG7lPHz4sx/pf4TWDHrVV71lo
	 6uVCiEXXY6VYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A984CF4198B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177625065368.4224.18286940462974820774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd54b98001379fa9fbeedfd4835d2ac26a702c5055267c796cd67b023a7df56
Date: Wed, 15 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776250653
