Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174842E5B21
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774413894; cv=none; b=AZlVs7LKXW5YZUq7fZRzafwanBdbtSM5nDml1C98uOh2HuDLAMmiezD6KPdyZdTWoNP31dQAuWR+PH/SO24rD0v0ZduApSJ7KEB2ioLX8msh0AH73LcYYnY/nDRtYx8tQ1fiILzm9+Czwbt505x+f1HSySZrAxpmYRFT4tp082U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774413894; c=relaxed/simple;
	bh=GgRPlBnuSQ+1psYyE998A7dzUYkU+UhV59EjW/is+hM=;
	h=To:Subject:From:Message-Id:Date; b=TpbdD1F14HdJ04u6jVF4JRtUxIN52T3vQZywGHmRcn7uxuujil/to/Zgr8EebC4tw3wRUEaEmgd8jrvnVtenbl8gFE/yupZaWurM3rLx34U2TWoY40kGJoTRLS3k27gQj9qC1VB6I2c9ChWk0l097mHJsLjhzCegBp776ocM2VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZiB6uPOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiB6uPOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FD7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774413893;
	bh=GgRPlBnuSQ+1psYyE998A7dzUYkU+UhV59EjW/is+hM=;
	h=To:Subject:From:Date:From;
	b=ZiB6uPOVfXsWHptF620/dDm5ujnt8ANAL0RLs/vM6FEZOrySwGA6+MWHDALMnmbmn
	 YUEiOLOShP4S9eDoiMZUVUoCQSJ8n1th15aHCHmPm5nFxkGBk5kyX2OS29HqGC+puw
	 Hm/34UOhqP6axIS8QN755DK9Y044ijLuSy8YSOsBrrCW1Hi8C8VJnqXu6pMFIoFyDw
	 FzIXfwOFcmfo+z67pB+LvD/kMbZoo88EqRBkQ6KVwtxTeFC0cFL+QXX3vcN1eFqhow
	 UrNMQFRX5/ISJUepfAJhz/JvdWxc49XmMwW0+nGQbSlPDanYqaeaeo/RrNrwNTDEa5
	 BETpAP0IxDNBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F0DFEA803
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177441389358.27337.15663079841554155718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e66102dda4368b90331925b4eb576046fe6eb2a3d56c91ab32a7694a97bbd99
Date: Wed, 25 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774413893
