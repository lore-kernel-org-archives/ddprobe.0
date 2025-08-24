Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FEB14F70
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756038594; cv=none; b=mnuAPOAOyhJKbELmFby2eWPsH0d9HwuTOWt9dRlL6Ah+jGPwZjnfV6ph38HfP4xuYDoMxdCHpKrHHQks50F5hCZ/qZIL99MCPG8FE4Aabz/PaM/LjEfzgwcsRyF1e22brDv8wIIjOPSPhMVIfNfyKqMC47NULnVSE2W3Eb+zPwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756038594; c=relaxed/simple;
	bh=Guqz5V1X4C+nIoj0xGpuS/jZyzJfrqlAv1NaJGdh8LY=;
	h=To:Subject:From:Message-Id:Date; b=G2IvpWdc6gaMCw2Cy3vCLGotHXgbupupLX0JGnbDR+8OqazjwbEd+M4WdH6g3bNA3D3y+pumtHjFEmyBVYFqzFRbzLX3DarQvkPpyUAd+mIURvhNKyo96xrBiSnSZ53DNlayIAUxCqL+jwoxaIZ2/EGndOCA+XRx3pfsXIN0osE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuVZpxSA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuVZpxSA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DA1C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756038593;
	bh=Guqz5V1X4C+nIoj0xGpuS/jZyzJfrqlAv1NaJGdh8LY=;
	h=To:Subject:From:Date:From;
	b=QuVZpxSAl3uPqXAlTyj4BpGwIZ1Z1WAieQc8fn+RJHcic5wpByqO1Sgqbtgc6dUeA
	 IO4Ma9c5SBMOCAwiehOTBYdsyxL8OCE/7DzrZnYYYGag+29OfD1VnEI+kdqoqeULjd
	 Gr1eMLZAIDd6Y/zcapAgJD2YBdY+uQb7dgETT7zMu0oThsAw4As593HGTL6wykOLw6
	 yW+P/7YnlqZFWZWDBnfLD9ic72tm/YEK3qRlAAQICGWj59kZW8M3UdSM9Ni8PkLTk/
	 Lj1RV22l3M+Swde+SLYBCub0pmXLQYl6DvNn+BWn0pJ/LbqkNqRI0XLPZNIJCgVgZU
	 vQ+JrREnM55BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9379BCA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175603859358.22547.9485835014964941697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 385c935514cdcdfd93cef16134f83c2abe6c9c1a82cdc26ebd38c004ea2ecce3
Date: Sun, 24 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756038593
