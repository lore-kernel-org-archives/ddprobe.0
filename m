Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2E41C4A24
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770891894; cv=none; b=t4cp+ZiNbmlZ5mZi/upMiHPrGOgcXvNARNp9eDcDWEw7h5sicBB72LmKmYzhuJvZGZ1cstugdpsLaaPY7RCl6qCR91PKibm8DCNgYAGb/jiccOAhL3mSIWQ9KaxXo9cKtWGbiQjDg5dOGhNa8rAAtAVAEea1p5jnox3MtiK2S1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770891894; c=relaxed/simple;
	bh=922qTvB9QR6mpUKrMzl8R7NuU9r4uxmtvnMCdi+bGSQ=;
	h=To:Subject:From:Message-Id:Date; b=dPA9Ja5AnWzclXsheR7lekDNRqO7Uaoon7VZvpnbRt8zx7Zjk8dIK+FQS7DwfR7yN1JIv8RIF2waotMmvfQpvRVVTbqrBomKRDU6xJphsXqUDx6idwE+7ExwbYxZlqCEphNfhVrn2p8d0UKSwES0//Lly406IXU5lwQUw4T3mLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6tHqTql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6tHqTql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39E6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770891893;
	bh=922qTvB9QR6mpUKrMzl8R7NuU9r4uxmtvnMCdi+bGSQ=;
	h=To:Subject:From:Date:From;
	b=h6tHqTql/Yyt+jXlX+6+zgJd1vJWzwSV7jxOH3Vbak8Qv+1UjnyU2XRUyi6TbS7vY
	 IkSDcuF+VOUAP8D87eJ4xATkF0EoVv4obHBaqIu4UyYuUER+n7GG4Ku/n98c3Gd/4J
	 FQxUMA9tZgU+SCWek5zlsGV77W+NjLO5GIgrstEZ5Rt1GA0Zeiavke+ED/A8FPDlCl
	 y2g4VvGv+KPTaVnSk5m9hs+vswAAEnY04V8aBd/bKgcfSVXu1KaNl1u56/VAsh0MXn
	 ck4HbSNJ8zOLYsVCWvImQuILS3SQ9gNiYntdoHj92d39OVyxU2M1VMeACMyUUVVywv
	 U1NYIEor57sZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBA6EB48F3
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177089189362.29828.11448885834690485894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34cc7ba0a6e773a42de143e97c0bf6660c901d27deedcd1de8642a5f45696c5
Date: Thu, 12 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770891893
