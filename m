Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492E240D568
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782700114; cv=none; b=bcIogqB5aMUo5ji/Uj+/AOMm5L9vGjGcqvM0NYfVN7iKx+8fLCqtP5t2GPKaLv4x+cHrosfnPK3sbsKiPtxSo4SyQyLQOLitp7CEjncoGokFrAbbaiug6qRTERulAuPa/tcqo0J6OSh/j5gPMl+VbY+2LdTWCDlKN8B1+68ofOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782700114; c=relaxed/simple;
	bh=vy4kU5DiUj7rineGlGdNr7P4Bc2lXfD+5CIafOuvSLw=;
	h=To:Subject:From:Message-Id:Date; b=mKZwkN8n4Nkpl+93yNnZJS4zvLssywtDq5QTsLp+ZtWaX5gAnueNp3690H9dMsqiyDFgSIBWmoGGyHh5LAiLEgGBjhPzX7V0acO7hoH1l65iaQGpySK9DiOL/+U4v4F1+qzpVUWZH09BeO7Xoj6cZy1cQEvg2UZ0lidLvKML4P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlbQOY/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlbQOY/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08C7C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782700113;
	bh=vy4kU5DiUj7rineGlGdNr7P4Bc2lXfD+5CIafOuvSLw=;
	h=To:Subject:From:Date:From;
	b=AlbQOY/ClYJl1uNqZHhVjzUHLHKkSdgmDmu1plxelb3PYWkrSWllG3jH/qgZaTNkD
	 xOMYcnWgE7av8H0b5HlwazANCOFz2uCdUM1VV4KZAMoooE4VRzGh09dPif9fu0vRcS
	 pu6RJ6xKLjusRnMR5fEEls4a7196ZyUw/Lw424RMNwxuBoox1Dby1fFMy2vhVRT4mN
	 bT+aAyB3MNWKuLkLazMiP+E9hFuHNfPmm1suOtcCGgKEhCiLhaiSWb2O6BsBv9RXEO
	 3Nt8tGSgD+llH7AmFXD67fx32Nd8PZORnt3INzWVBRgKi+VqCPaQVNr2S8YtR1Tkwt
	 rZX1ekl+PWPhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B853CC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178270011368.27335.11025462735576074420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18cc4ec918588c2115a718c3b628dce304c57d0d518e80d0790d2e6d65f3ec9b
Date: Mon, 29 Jun 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782700113
