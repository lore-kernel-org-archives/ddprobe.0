Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E932F41
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753933194; cv=none; b=DJcZ8JMjKbniqNfL21yKQwcCbtYJpvNtLoDhe7UcbbL14jaB7gvB7svvDQhIE1Qq7fwQlmHhPw3BJ/jpRCsfxEmq1iQ6QaPyzkvJsezTOpq8bFar42goH+qS9M1yXqAe/wbOCiDz1Jm3/RTU2lyAxbxt/FIhtu7YtEkG1DjFdqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753933194; c=relaxed/simple;
	bh=KonKM4fpsFPNkU0LkpRxm6so8cuJByXUKPMLvz6XOWo=;
	h=To:Subject:From:Message-Id:Date; b=BLyKqgCeALpof5YBU5TVaUryLYo6UN5xbBe6C4uIpI/+Rbd+wR5pHmryNv+kg6SVIuSAMfoP1RU5O/Yh3pH36J83RtQHmTx51HAvmx8RFTXGXv39irHwHfJuwLNTe/QrFBqHU/HR8xnWG/Y1aAOI/q4Sg3HzNC7bn5cJASKMRVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npcv58V+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npcv58V+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E07C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753933193;
	bh=KonKM4fpsFPNkU0LkpRxm6so8cuJByXUKPMLvz6XOWo=;
	h=To:Subject:From:Date:From;
	b=npcv58V+DiRJ3I9OijdSLf+fnRvZ1eUgyAM1kDzTpjuZqOdzTgK9ZFefffT1yTRP+
	 XG51B8GE5f3TQihsz4onagUFjVyzetJgbqbrdJWkTuXOSuT2Oxi3JrPbY4Z4RX9hyY
	 K8xPbjKwEAG2vqTnIUoEMn0WCuhhkNXSNHU4QTsEvDucdnWPMvOLwuSb88IIXkL4dt
	 MBtremjgxAE8WBupvYvpzTBNGyHYeeWEvXaaL56QiqTHH8ua/JQCNRU/RXSXozfFDm
	 rj4TfTkRJq4rcpYqDDizWhS0pjpGSGjKmi/zXD7nKbq1cSXN8b17SHsE6FE8e5IjG1
	 kzPcACUXM2zNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E874C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175393319357.19748.7129841832475416561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5db57f2b0e678c06ba7bfe31b36852195f9cac9734f4d43b2d735640f141b1e
Date: Thu, 31 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753933193
