Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F70C45C6F6
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786622434; cv=none; b=JI3W70c3s17VbN+5hYLQZHpDr7txgu5mY3S2GfZaOVSjpTG3Qb5DwhMN/Y9NaDlMxnPTHOXbQd1mHpjzJcxo7EMWMhZH1aJSAq8C8Lq1llthl6Gi+pAikI6YhRw28hpOxLJe2AxblwByVns841lpIMLLhiWrtT0kzMV+VY+jcPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786622434; c=relaxed/simple;
	bh=tGpiOks6sOd3s0ZcML1pItNu33Yg34ZWsiPV6bLJnJE=;
	h=To:Subject:From:Message-Id:Date; b=QVFnNE90bDMP+6pv4+aLabKDXw48XfR0x0Cb9GCT2UZzAvVVwO1rtsmkCyrSVl3qqTwT8YOqFfG/uYVxlLQMw/kkSMTEW9rKpDu4wChCUyuN1N2nqJhXwRm+C7dPhrdiseVDTwnOGwMhmxHAeqmkV/+GhlYf4AoqLN0FKJAmoRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxBep7CH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxBep7CH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9F3C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786622433;
	bh=tGpiOks6sOd3s0ZcML1pItNu33Yg34ZWsiPV6bLJnJE=;
	h=To:Subject:From:Date:From;
	b=PxBep7CHhkkPfU+tqC7X5iQbvZBRXZEXDTnPqutA7kGd5PAq9dTkh/P6mrCJpCTMV
	 vBLB3CVbtuSfxsune/dvSb+T6ggcra7SAa65YU+Acn21ofDLjdP13reQ6hYpAolgN4
	 wyYVjEAPAxZ5crWeHZ/i/3DACL6ljtD4Dr4K+dN2Fz/9DjYbKA0cbnvIqsXUg1jmRa
	 e82DBbA681c1dONd5mW4sru7pbCkTjWZmZF/AOB69uZHaDAQ1AekO2o566c/bmslG4
	 XnaaBZYy7gRRBYcdTJumRVPYEQ374zW3kh6Ad98xreaz6NwP4g+cJEoWUojBVaXqse
	 NnAYQOHRMEM9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC730C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178662243369.10921.15129787247362503462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca3c032cdff0dd4e2dd1a7ae1182a1ae5bd20f4fac583845313a94c96f35c36f
Date: Thu, 13 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786622433
