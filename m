Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8DA27A11A
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745856594; cv=none; b=X7bj13sHshIIrabG/PwADXnd7lUEWfjBno2i8PxkPyuNuIq+mC4qMCjtDg1qlTNK20fNCX/RqPawCoqexPEOVcCLsOUf0sxV3vOAQr/Rqg1EWAPFbXzVgja3iEY8gZ64VzxKMJlsLqqBouadKQT3izBPyN/LGnJJVwkHctSICPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745856594; c=relaxed/simple;
	bh=0T1RVpWhiIhmH/gyQIY57b4Kz9Qu67nSMRkUL0cz1g4=;
	h=To:Subject:From:Message-Id:Date; b=TNtDHjuYlr+9AEJ8Dku9FVWQ2UMZHPRUl/pPQKUs+YS4GLyt8tgjoM2sMQ+8WBppeFZemuN+CpYB+N0ifpLr9tJ8Qdk+a32CjhLyCd5IVnU5LGYHwv5hFIpL2wgpI2YGJDIVr/3nUIrzVwXcCveAh+zxlH6TT9YStNgUBAVJyFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+DbYI02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+DbYI02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECDEC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745856593;
	bh=0T1RVpWhiIhmH/gyQIY57b4Kz9Qu67nSMRkUL0cz1g4=;
	h=To:Subject:From:Date:From;
	b=l+DbYI02ycPfFnISYzLv1tLzfulocQgIoQIOQqXE+QBDaURcBEQ2ebp9XgAEjDtg+
	 Lel3mpXjsd7R/G2VS7cRmRMOx9mpXyKuDyTiLg9OLI1xpzi5vl0hTZ84yfIHIlZ/Pk
	 LWTirIoumKkTPjZqEhnhFzr322Yt9UngFqhThfgwI0aUgzHhylawd825AkulAvT29U
	 U3u2+XxU1iU7zYl2I/+fbWA/xYOSLCTSX6DEAg9MRax7aOIyms+PeFP1L4KJzHsyHm
	 m6nZtknDm1zSuSqEjYV7531ujqOqcpZTP/w+Y0sH7BWaiDHnXKKumuMVXQ0LhfmexD
	 Z+Ftfbv1aGP+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F108C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174585659357.2515.13207453035520928912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f797977515a6682f5a28e2f55217fc2448d91db0d8535cdfcf7cbdde9d637c7
Date: Mon, 28 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745856593
