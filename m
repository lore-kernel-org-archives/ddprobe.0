Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CD61A9F87
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782412054; cv=none; b=sWEaAtWh57jPn89aMzalS9+VGUX1IIlFIui4ce908atHSLIA+Cuhn8zjswIqcMDGOKKEe6CRTeOkey9OWP7DMqi/O/yrNYX7Gt2JQ+23T/bejmOMdm+DONHC8WSgPGW3YG1pqRCDcQsWzmHMTmTAOaDjLF3Gvhnx/bP/r9feNzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782412054; c=relaxed/simple;
	bh=y32qZHn9QnAX0jQkrh8dRs6pbEjUgpFTk169aCeRFdI=;
	h=To:Subject:From:Message-Id:Date; b=kxEP8btBGhLGazJbfNbB2SQ3GCEMQGzX3pTnXQGqNLUWSKKHLi1cJfH6urkCWVgwTm4F50bAKpiP6ffU72GnksYW9m5s0pGC8M5M+y5QJFKP5ugBBStliQpsguSa0nHmkjhGjt0GEHWaCvyhF8graK8CB7V27cfwwL6i7QaAZzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6ljqH9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6ljqH9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81D8C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782412053;
	bh=y32qZHn9QnAX0jQkrh8dRs6pbEjUgpFTk169aCeRFdI=;
	h=To:Subject:From:Date:From;
	b=a6ljqH9vkHdh4suOZgIjOpHGt9KEvRf4AU2FfCTt5Env95tdcVcpb2YUM2wvRwroA
	 RcWS5xcjh/sRs/I7VxP6/VLLbqYRlOFfYKmcqoTNkqA0EAnhs0trZQTkNCWx5I+D9K
	 bZcn34L8mHwbZS7hPKPJlca0Ve3W+2KNaLb4VxYNtxP6pHlOcM5NH5/JSHheDqHPI7
	 TXM2Y+Qn/waqu6/qPGa5FTjfcQ39KJ0r98oFISc2txodo7+7bdv+OFH3N4QCVwKiv3
	 ctPPrrXl8+bpgqK7Z+Rbpki1CwalEa+GwevqcyycyWuKEDZ2LwCIYRHQdF0fhecrYH
	 rtkV85g4q821w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DEECDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178241205372.10063.13346617712334976307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eac9ce36195831b718edd7434be3b771aa056aa430a8d9d5ab29c2e06fd114c
Date: Thu, 25 Jun 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782412053
