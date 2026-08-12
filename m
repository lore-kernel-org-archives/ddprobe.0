Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA09372EDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786567834; cv=none; b=Nc0Etj3gLPjdir6DVM6qvYpn0lz+I+d5/7N/Vm412AWrOG3TqbSE6MUNqf/whSkxSj30zWrNtAPBiSrYTajI+GJqlKtpeerMkFOlz8jFFqyBycJSCJttrm2oqd6qI4Dq3WUygaZyejl+GmNayRFzeE5dtRCy4ccVHWknnz44r3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786567834; c=relaxed/simple;
	bh=lyATGLvYwXLyykQdfvyIAqmkbwbSPE/x1jTkby6CgrQ=;
	h=To:Subject:From:Message-Id:Date; b=CNhpIHgRZEDpdDmUz1XIIAY/CqT7ITYZNHAJeWvfUuP52gT26fqULy1YQ3Gj4y2+SORhjPvkN1mOJbmE+TKAwot86BFsybpS38arLYmWq4mnN8j0eVXZPcxo1bIyMVge+S3//GMSdhqG/Pc192xrLXic3noPv8LX2JRxvrrmti0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bavsnhit; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bavsnhit"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1983C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786567833;
	bh=lyATGLvYwXLyykQdfvyIAqmkbwbSPE/x1jTkby6CgrQ=;
	h=To:Subject:From:Date:From;
	b=bavsnhitRUT0KcIhk8FKguQlW5kCBVklaJp0tHJlq/WiafpmI+q+dwsBu735YTQpT
	 9ydVDt8yobEvlfxPvMJBgSKOHTtlseo1uTnMqew6LlNB2bazKYhHa8zIuvh3PnBLTK
	 mrTDUOMfuv9wFjcQQPMN+eGalyKHcbMqqeqCu0cEVFrGWWFmcQFJ+0Oxy90qyT92Y0
	 YljWLjl47FV9pwIkUXwbg7+jnFZtJ/yMiRiV+RuM2BQaNsHFna6hao6whlT3Fo+cGP
	 T2o84dNRM9nKpucS1LpTswto3l2934peuC3YFrTJ1vNDsdrbJDmk37Cb0e3xIffOCQ
	 Jet+xCdUHtQcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD7FC5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178656783368.5977.16462200570402661634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63fbdee337697fdb2eb58fffb89b14f1ca175334c3a406a6d07e3da8287fad1a
Date: Wed, 12 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786567833
