Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B991D461B
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736118954; cv=none; b=MyGjeGlXtNzHc4EuDCfFww3yGRSq7550nJWrQpucHP+bYdNd+imcW20U81SySH9AY1zJIWR1ei6kEwmiJc5bcMS7l2JJtKXJV4F1/Fw1h51pMNoJF3gukhSi5IcMzaz/yooZjRVk9Zc4MEc8RcFa2+e8eEk56jQb7EKtorVK9Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736118954; c=relaxed/simple;
	bh=kcFQScbyeZdvqQOrn3szGIgfvds9N6ai/Fg2WprKSWQ=;
	h=To:Subject:From:Message-Id:Date; b=NWxYlDorp2C2rHZTSO+0iRG9U4IE+FoTXwv/WpShKjNoqvxgrid2rIVjd1FMxV8rbUpnSZx2taOQfqc7ghiZeGSuruPnNcPzaYyz1obwJ6LRD4y1MPp4CzNBizzTT/yLm/XrNtqRxjM0Wo+wM6rMeqVx3wvjXFwynhV10PPJR00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xf08Zvop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xf08Zvop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C94C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736118953;
	bh=kcFQScbyeZdvqQOrn3szGIgfvds9N6ai/Fg2WprKSWQ=;
	h=To:Subject:From:Date:From;
	b=Xf08ZvopumfnUiW3zWeCAiy1XjV676cyxbxlaHz2TSaEp82d18nysI0LSZebo5EAu
	 FVyyGJ5lgr9C2FuA4QIBjPdkVPxH8qsUDpypY5xX6L040I1dKqZERsTKW02fEwN3ir
	 pNnMslleKpqFgVLjosWGH8udfVJHictMFbBBASatehrHXMM/0kASfFCT6IU+n5YoY3
	 jTZtAf2se1Tg3RrF7tTjWb5Hgqgy89VXnm961o+rBnano8mpX4/fEr2kEUJFOxFukV
	 tg51Aqka2IAu3bAZfAkER3phqVhfciWfUQIHlnfiz3uzf2XMAsgGjJ0DtR9xnt+wl2
	 2Ks7UhIMfcK/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0211E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173611895364.27150.6104433719333037021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf034ae05c0da6a20e8176baaac1a558f1d8f0d4834978d2e4f390d878206591
Date: Sun, 05 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736118953
