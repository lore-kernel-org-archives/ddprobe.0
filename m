Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27826225A4F
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751909394; cv=none; b=iXM0H3RyfZU2GcwgCtYqll4BE0FAT/FCYBJ7xAkyBW6KAiAZkvplZJ00DEsUWGGHF9wsku0blIRUl4NKR2t/6U4oGjiBxUYuprpvHO6yGby9cgD273tHstTMqEndFsY/kofHMSWLKsPNL29f30cXhbVKbQw7nSwocc8xrxfsx+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751909394; c=relaxed/simple;
	bh=BOj1B0q5w6tD420ICuHt/9nkWo7SDU9SjlWw7uvi9Ws=;
	h=To:Subject:From:Message-Id:Date; b=i6dfDBvEsZfoy5n2ky/LVZy9i14ercZPP9SF+tmmhR+OTEn9rEByGew5sSGKae6bq4P/bJ+3ECWICbvP5ChudqNouCkFKGBy8spHwN695EYnFIa9SN1y6o+UmVbPKjxDwlIdS2yHIMU4DFJpHhaOSyIle1aUHKe9XowrFD9EC4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6qOJU5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6qOJU5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F478C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751909393;
	bh=BOj1B0q5w6tD420ICuHt/9nkWo7SDU9SjlWw7uvi9Ws=;
	h=To:Subject:From:Date:From;
	b=L6qOJU5Oz1wwnktBeqDYU4nqvpeBgBQP+JJyZyV/lrGp86fo86+egjELvBTIv+73p
	 D0l3W2Spy/5bhIwkuba7qWfYAG3Lk/SRp6rmK+qYmUvDkOMDh+bpTn1QWwLv9Fnkqh
	 PnF/2CsAYFU9CLSBJn4PlzRpYeStBtL98rU0q826N127jw7AVLdIh74IqNd2Wys0nC
	 /ooxbJSI55Owj/e26RnGY8U8x5LrDwFwDTxo17BwLqJRkG6lT5auz9JV7JxGDpFIlq
	 t/lnFtXQMMZdXHmA0xOtyPhc3Yrw0uSGH5hvL3Sutoi6Dkys729m5d0AggcCBtScnU
	 lSLe9k5p5pZgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90084C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175190939358.29397.8633112426198154222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea84f29dc98dc226cafd091025bff60e50248108b58abf2c382933e1ba3312e
Date: Mon, 07 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751909393
