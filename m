Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE0325DCF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753477794; cv=none; b=AvsaBxcBoVtWkYFhmJB3PtkC7TPqFJA2u2eB1zf5l2Xijow/khfYxB1HiEGCUdiRO7kjEDg66UyfgrLA6RVKmULT/0itR0MaMj0u/fLu+k/B1YSGbvy2wnntVdrOLWwDAdFdbtGF3Iq+t/Ee0gm3fFAwO7xQsTHtjAP+syRlupE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753477794; c=relaxed/simple;
	bh=ICJVqRg/Y6Q+Nol49N1MsWvUJ6PG2lWFMtj5WEsVhI4=;
	h=To:Subject:From:Message-Id:Date; b=WZAeRrtihHur1IdO0aR0guGnhf6tyuoYEY0AJy7s4pyLls83laq59FqLAA5MQcRWmBPsoeVA1wDTFymnkADY5BoZk0a/y5qrPVmgZfSr7By1Yj9PIxXSDrOPrwA1gWq7bgM/TF9kegkoOENXIPlW6SbR8QoI8FO4NcrNRKKM3Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVpUI6gI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVpUI6gI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F11AC4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753477793;
	bh=ICJVqRg/Y6Q+Nol49N1MsWvUJ6PG2lWFMtj5WEsVhI4=;
	h=To:Subject:From:Date:From;
	b=OVpUI6gIipnNsBpsA8bmZRw6r3nZ6lcKSgK2oXiNEkurNteAODC4V9hAm/j96bON/
	 qjiKFaBl8xsyvTZiHn8bbOu4dK0PWyGXf46anfjHcu5XcOUTSNyJ9XS4dcRXZ9kxBV
	 AWcIGde6vBcp4nZe6MbpC+y7ljY0Ki3dalOmanH2RhC2UGY3ilPCVnxsWa3SDT+k8w
	 57+o3FYlJMMQc1tV5f3AWEWNwopmY8LwZy8C/IDmaD4VjMukdShb5CPVbCSHV3JRJH
	 2940WGsWFbe4QIH84vwYIYZeKaQxO5YydNHqvXVCebqeereq1uzglgc3dhL/eOa7CU
	 hnMEBTa4qo4iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7CEC87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175347779357.32032.2768761831060683962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0ff0ae4865b52d6f9569a01662ac6a1cb42261b6163f52eec9bedd7104a8a1
Date: Fri, 25 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753477793
