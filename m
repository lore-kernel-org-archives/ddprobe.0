Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F79349AF9
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763547114; cv=none; b=VJdbWWr7f/S7e/SAm1zlXyuSOSaCsbdnTKy6gnR5OUbJle1kJ0AoV5N2Orx84TyLCoM4CxaNr1yK3i75LUR6XQcsoqRhmhjHduMWORC41JRFkT/UJsjaIlVNT7n+n5u6qWWbkZLyaXLV5oqSo0dv4fQJaM1RxeRnAoNmo5Vm3LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763547114; c=relaxed/simple;
	bh=Y3XmvP63VjpXg+y9n3mN129gzc3n3H9hCB5LdHf0/vk=;
	h=To:Subject:From:Message-Id:Date; b=VaHABtIkX8Zj+lk5S/vZEg11U7jqnbDNLRhI6O0yzKhkcPr80im3T6pGiGbAoZpCX6OfhRIEnqsGwUrVQgRnwOMLozMeC0lpk0B/EMRWswGZ1elC+6vodiBNZxsEvEO7anTVERAnkgOILbuYlXWXe7sQLcAKFur3D/VdgN/ZhNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYNFwg7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYNFwg7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A10C116B1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763547113;
	bh=Y3XmvP63VjpXg+y9n3mN129gzc3n3H9hCB5LdHf0/vk=;
	h=To:Subject:From:Date:From;
	b=FYNFwg7efKQ7edKJEa9jylLagtr2l2XzCvYQlMmL76bDx28P8OeIHJ3bNMoIMIHwr
	 D0jnVzWwPfQ7/YejnB9YWwOTuSpNUVVEIpJjDTF85MdiQnHGv7nk9XETYEyJQ3+K66
	 w/G+YZbCLtDEccUVlXbCtJ2eQwcPjJr+LxFr2ijfZgZ+xGPzhmKnEphHAbw8+0YjTp
	 2WrRzl7uaZjIX6F083nVZIgM52RloXMAB7xZK/oqr7d8OpkOHyJ/BZKKdXNfbbzNTs
	 cLCve7y66ow7C4P5dReI40MsE9TU+ZEGWVdBybBANPeqKu0kGHuBSS33ipn3b2Y2MM
	 QRMe5PodvGwaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95555CF3186
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176354711360.7363.10973695105633008772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c94934826b57a872c1ec775a23f182b03cca369d4e3544f31832215d57bf9b3
Date: Wed, 19 Nov 2025 10:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763547113
