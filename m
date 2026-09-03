Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBC94AF15B
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788441635; cv=none; b=XncXwt2T+dI1qh7AP7VKU4wfoI2Mo8edw+KuXRTOsgnYYyHk/i1auU/JNIQxdBVdIric7x/mgsmlsyx+fvZ1DbS0Ht/7E2zsqz9ZddLQc50APlM6q8L6yhUZaeyefy7+G2WgnX5bkIbE7CmUB+onm6todPVvPaznqHdJy9Kg18Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788441635; c=relaxed/simple;
	bh=7p7lsxSBqzXNahMsyWx8B4hbkZu/d5nEriyJ7naCKpc=;
	h=To:Subject:From:Message-Id:Date; b=d6tfqnG9olDYmJUW+D2v4eWaZtRZV+d+aq5MdMCihgsaPp3H1ycj+pTd0J0rWiUDFB5GKqZuTQySDvDND4NAzUpe8wIgIRyHT3gZz6wFmw2oYm4JmGDV/vEVasPETFifgkNi4uRJh/fB+1AhwVF7LjiN5domMtDdQ1VNZuu1JcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p50koYob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p50koYob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1881C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788441633;
	bh=7p7lsxSBqzXNahMsyWx8B4hbkZu/d5nEriyJ7naCKpc=;
	h=To:Subject:From:Date:From;
	b=p50koYobls0ixIK2XlK8MFm3kgkr64vF14D4Q88VcBSxL0o+5avzgNl8MNYuXJVAZ
	 GOAgzpeLGDeRybnW6Ns7ics6H8pbcm6euUJnQjmasgi62WwcoFVHDnaLhpMd7rM3Jr
	 oOFOGO6qbkm2ElTGCKNF60SML97AOd8a9vXRJZezSCYgylz8bntLpMyvqJ1Hkjg3lM
	 r4JQzjS03ope0D82AWl+ZxYNLWVFex93237qD4gQt7NCuwV2u7FoJy3TrrX0V8Mqzm
	 JoScSMsP1wyTsPyVRpv5r5cC6wNxBzCaXUgDRGmKS88UqgV9UoiwMQzVzQe68TwAdE
	 z1K6QwdlZd2tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD8BC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178844163369.1279.6449907405092862374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320f922d8ccd5f8a358de0743a9e55498ff094022d6779ef42250cd621828a01
Date: Thu, 03 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788441633
