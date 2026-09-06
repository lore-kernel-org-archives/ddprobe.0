Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F43367B72
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788678034; cv=none; b=nq7Xz/SrOrsiXDXLzD9flODvuhDODp+SkycvkRnyKo1xuBw8sc2/WuzyWPJozJ6tF2WNyfcULiAAqA8/EOZoU+200YIlZP+tcfyXVkqot5FN0Mh8NGBdHbNUdp4p8LuOqoJ55qJM7b2HZRL8/gIoCYn75jnm/6iiUKLhs8AfwOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788678034; c=relaxed/simple;
	bh=y6H1a6AtL7PY72MgI8dmTWYIVEkadxD6NXrAWrYYK2w=;
	h=To:Subject:From:Message-Id:Date; b=LOsUg4mMUq8nAf0ZGPMNrB7xCx9VGCxySHhzcW0dcATONDk+XDskO7dC7OBiROrsrbz35fCK+HpiYyanCns/sUWXIWmyOeWlb4F9f3IR+089SsmwxG19o0iOlLpPlCgGUAByxEsuN8sxYcsU48950iRqTOmbuc5MZF7vI1e+ewI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f++vNCSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f++vNCSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D625DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788678033;
	bh=y6H1a6AtL7PY72MgI8dmTWYIVEkadxD6NXrAWrYYK2w=;
	h=To:Subject:From:Date:From;
	b=f++vNCSRAgSRJAVFNhRsobDfapWSLlI//2oeTVyzSIBXgi+oa4nQ2COUfNMKA5j7E
	 floZdpxvEWwkPulZ9X1AhxVyAUvw2/QSxtikoqPNOlnpQpFweQjFY51Kypxqi1MsI3
	 Idd9y9eB03Qbt4FEAwINoHoaqXjJu05eE4MN7baNdfD1Oc8uOt8nbdYxV7bn5AtLH2
	 ppICSc4UL+flQyj6T9ON8pH4Ef9p9EhWytmVwLscpGukg6gKb+6q8Y31kyRmK8x8fF
	 W2OKoxcFFU4D3kLEFYqeFW9IOlCHwuYC5cYrEcZBW9ZVrp/7arJ9+8uKJTwQSUprKy
	 Lz0li50fTj1Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24DCC79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178867803369.31084.2074214898930969546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecdd8970c4b5cc5fa0181d485e7065044961b915b0b51832ea8c78158f36d6d9
Date: Sun, 06 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788678033
