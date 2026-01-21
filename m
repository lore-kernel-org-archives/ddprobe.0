Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093C633EB02
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769018634; cv=none; b=oCZmubdlLAIRv6QjHoZ6Q5kJjPNIN5Vp+2oaN5zt2y8EijExWkp7A2uSwtn7k9cdHcok32NTk9FFD7lH1VHuNluVqx6mN3synkTV50j4vGJ8ro9x4LiYY1Zy9D9vZcY6stc7xsnqsiTe9XxNP1DLjBTD1HM0v51Ni4JcMtXG2tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769018634; c=relaxed/simple;
	bh=RCn1Qkm+NdaP91E7J3qKijzO59zs+Pkgv3h7ZyLZxHY=;
	h=To:Subject:From:Message-Id:Date; b=T63wcqQQj0KYBGadaDivD2DOSDgSC7ZzenAwgKoVh7TNjEAWosJkU0uvGyR2OvpUyZifkGP25OyvD/nMdAZuC7KnBpQM1eLEZpne9wrjlQeG7aHci2Uts/8UovilHz9kcxfwowsJt++bbSYm/4J3hu5xMWXpZUrol6giMn+VU8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/XahMWm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/XahMWm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D76C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769018633;
	bh=RCn1Qkm+NdaP91E7J3qKijzO59zs+Pkgv3h7ZyLZxHY=;
	h=To:Subject:From:Date:From;
	b=T/XahMWmMtog35Nfz+72DknuWLr23sp60fq1R2WuDHDVH4NqreNnfieJqLTHveWs3
	 zm+zP+o7SdtaCVEmj6/tQ2i2ATiqLWeZ/hLsvIPTonOeNaJJwpRNT8tIOlR83ihTv/
	 qQzppMpKDCBNotE5Hn5DSPBRmFA7l619RyGSKHFztw743AyZyB4sSsNN9W7ww/bOsA
	 Be87aG0unNFjoiz/+fUkrefNb7MF8gL65oCh7WPLbpdCO5dmEhtSKLU97bWGWngTZx
	 UzilAZgMxxDcQ7oP3jcdK2lOhEQodTUcN6hpqQXE9WORB95TVleuGDTLInXqKmI354
	 7DjbANJfgNPQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD61C44506
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176901863358.15601.10371449509366397399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67a47f1e9f7d57b1da16b9e97eb1637d64bffdc903866bf9f3d71c561ca78e7e
Date: Wed, 21 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769018633
