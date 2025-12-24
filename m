Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6882D879C
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766551434; cv=none; b=IvSAt19FNcCafpDJIInd4vIGy7PnzBEpmZfUAp0dBw5lODG7FcY7MvaRPqgIdHkYWQYiGC2PeLL2i7FoC2mMpUTyPDkX7HFzSyMsFxjmAWPFiyeL7gTVw3aax9MWwjsAtq3BdMaTjUBNdQrsbtQoOGOUp0iBjvy+7UMYP2unwAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766551434; c=relaxed/simple;
	bh=mDKFr93WAYR1XtftiEF0Yr9qWdFF4Yz85r9IBQRoAmo=;
	h=To:Subject:From:Message-Id:Date; b=f4EUfmFxqwTXwtB3wEx+Bl3CjdTYanSOcg+GHxrfV9SJeZouA3+Q9BjL3k7Xy6AO+ffoGgbntTU9vh6fUcDXsrPjj++cyyRu2Jbr/m5iK+Q/8ria0z9XhzUbzEtP5o+NaRphdGisvdg5mAkGcNweuZnKuvqDTSB2rT/os5y5Nio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjMsyV3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjMsyV3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EBDC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766551433;
	bh=mDKFr93WAYR1XtftiEF0Yr9qWdFF4Yz85r9IBQRoAmo=;
	h=To:Subject:From:Date:From;
	b=PjMsyV3ZEjkofmBrsZ+J8VRQo9WDzPR8x8RfXIvWRysk8yS/5WqtBv/dhun8GLbJm
	 aQMa9QYzD/upppJrWs/Cm3KnpICVEtIv0jgStrVRwR7EWI2vV60OfTRjz4V+Wb4Crw
	 5vN8ltUhuXi56D4TvJm6wTFGmOeo5yg5nNuIgpaUk8o/v0wYxnBXT31tq9eqrPtARV
	 JEu4R7HQoPUaOCxIMOwC5HR29dQCTeWPZKkf7/TxxH8c2gc7sM8cCC1LhAp1OUXuwQ
	 VtgGO/Nd8ofhU+VdU3vQ4hHzuqjzIa8yLG72wh6rUKiFvgNkWn3sha59Dn40Rnrhgm
	 mMXz8TdS0BO/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94744E7490E
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176655143357.3257.13384778138612371744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b5c75c37a050122ad50c1067b63519e8ba3e361ba8121e5b1d85e7ac7d93ae3
Date: Wed, 24 Dec 2025 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766551433
