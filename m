Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEDE41A8F
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759376395; cv=none; b=fx7hC//zzR5rginxWui2yKw1dpcr3JpuzfBXznFwzd30DUUX86iFTZM/HaLH2f1tjvUez4nWtTj4GfcnoVtIzViI8wIPUI5Dt777NHatY20wP6pdf7d98UYQuthFbA6O9qtbn2oroLynHSzHWjv0GFnnYUD1rcmDnP233syXYbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759376395; c=relaxed/simple;
	bh=psFs9tcbZiawEa744fkW47cRj8dFz/WV38IT8BntRUY=;
	h=To:Subject:From:Message-Id:Date; b=dDqgvvYkevOlcRcBRFXYrPe7m2NgxNzXuO1qujgtJrSUnnMWHhY9nIPYrhU1YOALpxYcBCwIhO4Di97K2C7HAMXd5jUat3lLQz5cqnfrCPfkgeJhNJyTKI8aMxOID2Spn+tr4nkJ8CiHaUhcDb7zA1JFPE/YevAOjr4YNPrjLLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAPu3eSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAPu3eSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3776C4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759376393;
	bh=psFs9tcbZiawEa744fkW47cRj8dFz/WV38IT8BntRUY=;
	h=To:Subject:From:Date:From;
	b=OAPu3eSq9Sad0Cz2Zq7s/gZMgHt9WijS+X3hCvEiI9Y992tetlpjjRvvE6TvCw/kR
	 2nzOQ2e9Y4MkQEDptBv/vqkECVVTlftF43ndP4NVDvfMuYCsZ/aEiT21lyxJBACv5J
	 5FN8DscZlPOR2ZhgvIazjG5uD9J+KvcOU6mwZgv63CLCBj1Vw4yiVod5fQ9t+D1ozi
	 ppbxei64cMk8ZBwY7c8rnPgJHqqdfnrpJRczYK5U1u9QdmCOAeGmvBNrbMrl5Nt39/
	 Xi3ERu3zt8qxsPV3ByssEapQslYwwylIkBzMK2WlVLIml5SRiTNe6ZVtzUTmidk1Gw
	 2dplMWtz/Q9kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90174CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175937639358.30825.1962143615027158859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8675eab45a9c50144dcb9dda10acb67bb568305d886e78fd3739a879ef7b2eb9
Date: Thu, 02 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759376393
