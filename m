Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0B827281E
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776329854; cv=none; b=mBQiza3JfiUQ7OVlacbO6sLqNaBhiG8vF4wTJFCrsHcXTW6zJFCuZpjUw+4f825Quh/vPbG3m74Cdb5yV9t4668kVfiFvUa68UhHCdJk7HaHNHjlgaHBi/PYd+3K6ZY9+6cX03dSR5Kv3qcvvR47qLeGoe4Obqc/YO8z46AXPJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776329854; c=relaxed/simple;
	bh=VSp1LF+RPYqtlPV0JfNFPDtQKiYAZBRw1bBBW2+T1dE=;
	h=To:Subject:From:Message-Id:Date; b=QoSxEjssLRL4KHMLiwW1OmQQp4FufOmebmZLhwDKB5c5vwfGmwD+P4JriXEchtD2BlKLcHAftW85BUfo17gXzfVDIhtqojSkAbbQ6d0VCK3t3W0WcgQC42U4E2UUOMNl9CURl1IjWBD7E9U5vPyRSUSxLHJ84srO3FNmYt7u0kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mixYhObs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mixYhObs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA112C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776329853;
	bh=VSp1LF+RPYqtlPV0JfNFPDtQKiYAZBRw1bBBW2+T1dE=;
	h=To:Subject:From:Date:From;
	b=mixYhObs3/62A6/BEU8xDQZ8EBZrMFTjVUzIFlgkwvlqq1i1pqcguoe62BEpyaRKa
	 XEADcsSLtS/NIDhEO1IHq4lcantZRfr4mlg4QGLS53lgRL0vrZD+7keyCLOYM5iI4j
	 tM+K7i+RJ/9r13boCGmsRHzrOM+lpxYTsidDbNBl9aj2OGseTUqInosdnkXiwKCEqe
	 Ul6ocXyuqPYTTQGmXmYFXHAd3nquoA9xG/oAoXTGE5vhABBdP4wu7q8RtkjFi4SOxU
	 q4S/otqGhT5B//SK2jzA8qc3USk7AZ40UuBrvWgobWFx0cjQ8krBqg5g09dkqJ0GHQ
	 LxCMR6xOAfsaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8019F8A145
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177632985373.9865.18098131729572501317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5115553cb0ff365d261511083422b11c9e6d039bd2b54766bd79200652b1e228
Date: Thu, 16 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776329853
