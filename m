Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9AB330D2F
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774675494; cv=none; b=Iy1hlGWfgDsG5y+Ium4HY7ftVdbZxltgahZDYvaOVBb4HQiB6MlbTAMlSTA7vyVYO3KcxKHToxlKOrHNfqqrkPuDqtexLU9EI1bTc/rbl7XAowAG0Ozs72NIz+I62ykKbfPhaAIpE/KaSitF/8vGlA2WDOZ1nxOkUhwZiD4EG8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774675494; c=relaxed/simple;
	bh=Ohdo5nbBpjAFQQJc6mAgWjwQtiJ6u3QEjk2q+n72ozU=;
	h=To:Subject:From:Message-Id:Date; b=qtlcDBKLl0cxM6EHl3Z7ZcukCBsp0pnniayewO+iIAPN7Nu9S8FaHiNM3+ld01rVUOOtobsa362GFeezggBELefaGPbbqfYathUEGOmdoahUlfbG1BcAeSV28tX4YkBNeLY3kSrcQaC1QPzKU4depEWQS/xB2Xlst/nwu6tYEms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVQL6rFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVQL6rFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3FBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774675493;
	bh=Ohdo5nbBpjAFQQJc6mAgWjwQtiJ6u3QEjk2q+n72ozU=;
	h=To:Subject:From:Date:From;
	b=AVQL6rFtiQREEdavC+7GZDiE60+SGEuJB2eog+WoktcQvoP+rAMbVyxpXGzj8//e5
	 Og3zClKAYjjcjFwWE3EE34pPwHTHCB5JfFiWS6jbed1LP4xSLNHxRTBocvMz984tA7
	 y1LAkIyr6QBBDFjjd1MwalorCYFPeBz5SHb8DkKYR4as7iBZYGNLK9DIEiLusYGZ1g
	 B9jCT+4gq4sBlVZAa6aFMC5VaTpob7cr1mBMqpI2YgUMeqmxWXKk46kQDum2GQUbMs
	 0NrErOLsBQZ1pjluinG4rMEnuuqVIXwx3zsIHE1X8cfk3m7moDebiw1ujdnLrsoOLv
	 5RwK0y3rw7XfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9788D10F3DCB
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177467549358.20732.6734010464667564876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76060cddd841292aa94c53e458775c5a58987d3c904dea434940b0514af71f57
Date: Sat, 28 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774675493
