Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CC135DA79
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787680834; cv=none; b=cSXbOcI3l8xsurtr4sKZzJE8H46dKR89p/AjPjQs/LD0M/ednZArg6QVEubmR7ij58Q37dK0RckMqMDOhyfWt6MLsrqBw8luiVddybGKpp9NWUZDatPyrIf5SFVlJXP9PfqWiYpSpSq0y0IXBuffY5P6/JHllMVlPKAvfXTbNBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787680834; c=relaxed/simple;
	bh=nP0KiZqjhG+i5XmF63UaiPJ3T1kDnYFaKuWrY8oCxuk=;
	h=To:Subject:From:Message-Id:Date; b=KWcQqiEkjVItqAxZj4puGUkI96hKl1xnYTmMbVY1tar0zUCRoEaOxrf1r5u0863GPcgjaY1I4VUYHtCT0EPyN/nLlJFydpLl/cevTdCDWntGN1/fVNC5a6ZUdR97nqvBtha1gYVqXLWl+g5OszOH+zLMNjGModfA3cd58TLIMOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DV2ocsho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DV2ocsho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CF0C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787680833;
	bh=nP0KiZqjhG+i5XmF63UaiPJ3T1kDnYFaKuWrY8oCxuk=;
	h=To:Subject:From:Date:From;
	b=DV2ocsho5DHsMeaKODjTmY4/BnUVZlb7kIXePLoFlbl1lDya2tJ7Qv6VmnBVMJFWV
	 uz63K7ZzkFx14Y0frht5Djjfw3oXK4n/PHsmQtOo11nXyIl329K7zMKQo5GhJPs5fj
	 g2lMRdNK3Z8x3ch7bqDZ0kGAzs5WevewpX2d8A79cQf4HhF7fVkqGEIfyl10RzsDIp
	 FI+Dz0HgLTzcFxCQQXuNQZBO3JfC7LR72GSXBsxIOb2G/7J7cEt4UzWhKqwpTnqxy7
	 0jT8oVAod7WlPrMM1BFxFJewnyqFtLWjsEyG/LWX5MnjYkYI5k3rlTSnKZsL4Lk+Bb
	 lVfctZpXeqtRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC51CC61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178768083369.19333.13812447407523051769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5fdc88a518c466e8c7cf8eee4efa73ea0c1014f100a11954a3cc28e1cd279d6
Date: Tue, 25 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787680833
