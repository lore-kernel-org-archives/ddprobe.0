Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3702F80B
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734833154; cv=none; b=ucgZZsGLVs0CobGUr1lAieREod8mHLi+HAQcm+5bEbRn72eFEglx/+OADEu2lzOVyGptvi1fd0JeXP2iNW90b5FJZ5vRGgSLSWT21qX9cAz1JpyeaKGG4KjlqEQwn0S8vtu+9hQdrJgVu1pmn3TTufQhA2VE/Aiwaww/4N8QVZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734833154; c=relaxed/simple;
	bh=skKF3OEM3K7mp8lF2gSWbhQs95pq5b0WObjHsh7Fffg=;
	h=To:Subject:From:Message-Id:Date; b=ET0d5YwHkC5Wo/lnj2bRcA8tYeujD/DbBjfzF30iIyAQAgInpysmJLmEyKjbncTg+mpp4KdGEtcZXQdBul4CMyPMHaIuxYMWzzLBCOiLfHtkNo7uVxaaEpCN1DcKeIXdKrANf1oVvplaC5G/5i5OSRp1S7ruzwcNuu1Nfv4zxCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wj+e1vMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wj+e1vMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8396C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734833153;
	bh=skKF3OEM3K7mp8lF2gSWbhQs95pq5b0WObjHsh7Fffg=;
	h=To:Subject:From:Date:From;
	b=Wj+e1vMJ1frx/zrxD5BpsWAlMog1uRAQ/nfvxYOpzIUTbuX+DO2LzLI6Bffg0EOPd
	 fGgktBe6oRzQnV5k6YoW9wxbu8mfKV6VT3mh/vybSLdJJQBY3++xcLfyqXgJx/N3lI
	 9E7ylLJSALuu5MOmEA+/df96RGLiYcLnTG5eaW7Ua7sV8Iq8MNWmiypHFP8w23veKy
	 lyQXg2GI84F338BqIG1j8qMluuE9HbNWJkiTY5iSBBB9NmgylADoGJ9J4MXCmuUqkf
	 rqliUVAdozpokhwlGxSi5WSsycs4kC5sKVsa694iygN6rmhnCokIc5wvVSsDQNanNY
	 bp91+Bfna6M2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BB1E7718B
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173483315357.11211.12749158919603314601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ebae1eca8a2dd8feebb145dfbac1f9b2e3a99bdcbe5fbce15b2d25ef7d04b8e
Date: Sun, 22 Dec 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734833153
