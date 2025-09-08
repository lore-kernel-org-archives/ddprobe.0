Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E94D2AEFD
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757317795; cv=none; b=gSoUmK+q8ggM77t0/ETgSb9G7BptBCroFRPlCRb/+NOXg8/G69XsWopI69bkx2zMDytXuEOaLhxRuyFMU264FH3jWB+fHWGHMk5y2NHcqhc9wh5Wi0s67qQ+OotFw8AwUViI9AvfGyX+CCzgvUqIE+umF4vfPRNCxSlQq/M1Z9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757317795; c=relaxed/simple;
	bh=CCNpJ28wRS36WoeFDslL8lvkneXsv4ysarq+fhSQTSQ=;
	h=To:Subject:From:Message-Id:Date; b=phsbnTlkbgTTopTrrMnqaT6p5GNVMV8LazUwarOhonYJmoIoDzlL234J762+k89JGPixT9Fu6QdtPzv/rrpF3TJ+a2x4AJiCfsvrTdzKaRmJRJ/v+CzviucYqekmv4TES5o6cfLSZGsMsyBFymvOaITPbujmsnrso4b0AKStE7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxjYAaYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxjYAaYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11C5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757317793;
	bh=CCNpJ28wRS36WoeFDslL8lvkneXsv4ysarq+fhSQTSQ=;
	h=To:Subject:From:Date:From;
	b=HxjYAaYMUUK3Il+HzLU5oYc/sX81+rCTSe/8EBVE5Plg+lGn0TfgfL8dMsH74yZfP
	 TrEIsQwzc2oVPNxt+hbihQ67jkLxhCz8mjNONcLsBehChX5v147/ajcL20L3gXdmjj
	 7dLfyXrWqFqUoXXJvkhnc88MWlFOAWHd6HIcjIT+DnBJg9S5A+v5mZQbJbOi5mTAEF
	 IcfZR/CaS/t9/CctKahdFMt2TC7LyzKgTDmtXgjBE3z3xs6ix1x9EYfULj+VM/yX3o
	 WhNqbVNldXddDBSQ18afDL3Q6ANR25XXjI+C4MZZYRUBIk/FrP0n9HzzNcFwTp9egx
	 B8EsCx82n4CrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5DFCA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175731779357.18672.7990635089759454946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7deba0ec3a1f367347cd4a7c5dc37b6e385cc359e3589c489b03813a69503005
Date: Mon, 08 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757317793
