Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282A8265CB9
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745434194; cv=none; b=G0qB34MJ611rFJOkpWX4WuW2Ksw72NK7XEff6YZZV3YiD3VWsX++HWk8CDHTPLQs1FSP9sGEU8W8wHInKgVXzzzYpmU9XexXbBuSybXmvDcZxUi53jUk7y6TkONB8mcQQH561v541vRLg38s/U/QG+rv4iC+XNeRSlMPQKTXs34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745434194; c=relaxed/simple;
	bh=0B8GFfBQMqagRp/stXLjTlcsiCY+wQAUGpGDScoKFXo=;
	h=To:Subject:From:Message-Id:Date; b=bZ2nXi3g14ev/ij9EUwV5H+9ZJrOunLAsbcXMqlCUt0MEtLdm05rBUABcr9L8gPqxDHQJDx+evt1ms7OQ0qIHC8yrVsgSERqOy6fUFnYSrwNzTBdWoloVqQVM3RlLQUOM7YjiSzmhsIO9yXnlSoO+4QQk3vb6RNwLU8Pm8c30bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhs1Tt+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhs1Tt+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14F9C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745434193;
	bh=0B8GFfBQMqagRp/stXLjTlcsiCY+wQAUGpGDScoKFXo=;
	h=To:Subject:From:Date:From;
	b=uhs1Tt+GHZuQlG2KPaqZtPEeCvP2MhMMRFUhxcE4280cFV0XxeFDcBQMhzF4uurzC
	 QNkp+Ngph3uPnYRg4+8iGtHRvqHjUcvvQDuzOkQFTL+75IbYLY/IA2VwU/w3C1Vy+i
	 2OqPUMzVkL8LYvt5t81sn/L/Vd6oU87+L46Ln3b3WfFnc4H0JFXBTH45GWd3wI/wcG
	 jryUvEiXA9NpVxTrbjvy25Yav+VvCbGeytHknb3dtm82OBYwG2pWd4LA4Fs39QhmAk
	 NZG+u+bx5ZkGs3MQFRSALCeF5l4YqSuOCnAAwR9HtOyj77C8WrbCKV4CcWdEyIWkgI
	 3eGy5wVfg/HiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9185DC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174543419357.6708.11758959175771824915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a78f72a36552326a3c30c1175fb1a9b7d9aaf6cf50e2c97759e63d056d1e7bc
Date: Wed, 23 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745434193
