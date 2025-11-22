Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1030078F2E
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763785914; cv=none; b=U5pf9rwGkQDTFEh8mYX6jFWtZSXugYXW1y5vn42myZFbOFeH+R4l+NlH83qIUXc69AR/FmQR6txlx/txCZC/kM3k3ZP1lpSZrG5OoOhRhNeXZ+pwMyijB8yaao1XGvSDK13fIZ5PMLwpUrAUOx8/RxjkEEP1Qiv0BZ3QdLWWeg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763785914; c=relaxed/simple;
	bh=jTwnX7EhaoROR0BisE8XkQeBt2Xw4+P4hzgpO5v68+4=;
	h=To:Subject:From:Message-Id:Date; b=NWS5P4o9SQzFW7fo7KiaYG19yq0OWwraslCgpU3c32KznIciqMnCyiOf+0YnWH2pYAO6Cl3DsanJYySgPDGxbyocxPOaVqf7a/f0DRaT3EJk769WPDz7ADB8z0Tz1Lms0lRiwwS6SGUNLHTSXZPvl6Tr+x2lTMXNbJUruSU/h98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJyXKfaI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJyXKfaI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A507DC116D0
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763785913;
	bh=jTwnX7EhaoROR0BisE8XkQeBt2Xw4+P4hzgpO5v68+4=;
	h=To:Subject:From:Date:From;
	b=nJyXKfaIyDB5kahnc2jnPOHJxnDPQar3gOKtA6z5sq2iCD0dn/pxd7SAR67zbtxjO
	 uSkk3RdoxkmzlBnUkqZDvJjTstcjx4D2c1MAlmHyDHvOEYBtGfHLf1uJ/tXwih52xu
	 eFbMfY9rpvc1FUfAEuP46y9dcx+ByYoTYxVz0sL0HWEKK4p75NEB+9nLYk3p5rQJw3
	 QVijtCJvpj1Lx+xQ5A/rVSdUz4M/ZNaoW+rfF0hFEo79K/lhjFYneOtImORQW0Wl3n
	 zTS4NNF5oLKMOm0CheqMz+/QiZL/mKeEz11aZ41yV4xIRrPkbkZeCSsMAUH9cqXWW2
	 VXJ7plv0i/BYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9170DCFC50C
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176378591358.12372.16028092972849612740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a3ea8c326ec1c37c9912d1133f9bc842e400cc387ba8e5cf5aedc81ac69ed6
Date: Sat, 22 Nov 2025 04:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763785913
