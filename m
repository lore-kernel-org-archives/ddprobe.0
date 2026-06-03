Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A19A25487C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780521274; cv=none; b=Uc243Q7WEWjnziHeKw+yPJHhyIE3rbg2zzSACO4PKGBxDN50nnWlYv30znYkH+1hAXXv041FsHoKqIg1ncgLbprIgIUTJ6Kp+5iJdG6DEnzSW/S0geIIUpAZdimIjAzHtFzmJFBvhJ3XB+sViLVoFYAS9bDgIsSkWbh5eseckAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780521274; c=relaxed/simple;
	bh=4juYyveeZLM42uQCyEvsE6UgUQMM0jiRUZTC96uJstc=;
	h=To:Subject:From:Message-Id:Date; b=PAgyKE1c+BafKB4piaWymognC1Z+8pqZL2bwtBuh+th9Po6wICY8apljdNlQf6ANuDE5QxJC2qHV/fwFaWnAusbPnXf5nmNbL/cMMaj6AU6wWaXHIl77pGPHfjHOgnzx07pvXBf/BZc/qc5ZsmTZyuwBtHVXFkCcQjXHiWj8Gug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZqRWMSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZqRWMSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3C2C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780521273;
	bh=4juYyveeZLM42uQCyEvsE6UgUQMM0jiRUZTC96uJstc=;
	h=To:Subject:From:Date:From;
	b=NZqRWMStPrtqlyerRGIBdJiOoxJOW1YjcRDo4e4hbFFZayJ/ELp6BB436coQ1Dvb4
	 5cDUIsYB7wte1wYjexj8QuOknb7F1odBjVIKis30z1Th8g48jypWx8LgzMeVYaMleQ
	 xJAlfEGOOA4zkAR8yUqSbOn6sxq8g+3cBcohYrC19195p1vUqqnA+xgRPC/dJ3bKOl
	 zoOYKCsn2VoTx/T/SUHp/1HYPKM+9sLJZiykUW75bLgTtCIc+CmkRMP7wWoJw+ujHE
	 vHK34Pr8N6XSUNEoQFRnJol00Nth7X00Q+DyWfI4eg3SZUm+D0+PkUHEgG4If8YOb0
	 rEubFe6C/zcWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADC9CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178052127369.5702.15519018200913703388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 426a98b315e00d105f52ce80d437d9d9f999afc59aa5cb6da3f900e506e87035
Date: Wed, 03 Jun 2026 21:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780521273
