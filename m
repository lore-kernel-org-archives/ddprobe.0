Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E58D30B
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 05:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713504563; cv=none; b=FEOfp0zWXT5srA35tQgmGnPFxbuosR72WThuMDmjuuVbW699NwMgjP0pLSUiVuRVwB9tIGDRpYWuTRxug3OkWEb802ETyXvQyI5G7gYxPqIeezBkNN5X1kQx9NBegQF5nWirv4KaduCZUbaUf3cOJ58//WOiyx6H+kM0Oo3IKG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713504563; c=relaxed/simple;
	bh=v9uwppTDdDinyMiVRHje1FhUNZ1I7NgEXvggx4eyEuA=;
	h=To:Subject:From:Message-Id:Date; b=GPltIXN+b3F6Bf1d393PTFa2nn8AoZckD97XwCSgSdkOJO4BuIpOq1SixGc7KmxwzwqE6zBdJuPBYC2BrbUke5lpOoAFRCM3S1R8EiD5ABxDm+XmSXS74W/zhNcb91fO6MQU5lS81zVxSk5dp1bxSYJD6cnkSE8yFE1pkVuIO6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaLZ31+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaLZ31+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1382C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 05:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713504562;
	bh=v9uwppTDdDinyMiVRHje1FhUNZ1I7NgEXvggx4eyEuA=;
	h=To:Subject:From:Date:From;
	b=aaLZ31+TVDGbWiV/1H1sIdL+VLUOkgFUhSNFXrD+xylzxAd/d8umIsmJrt9AUz+ZR
	 5WzNUU1H8I0WIHYbjIDtXlceatagmPLjgtWztfoZ4XkK1cdl33WHLw2nfmm/y5T5Gt
	 sPNQCeFN1grQl91cWYcCLA9uiUT5BcPPlpu8DJzuC7agCiVL/S/rjWi/lv4O0LqdxN
	 LlA6KGO3WHJG7Cq6d83RfRLrAp/Qnv33pI0n3euFNT+e9CzIMgHH3HO3UMFbuexarJ
	 bg3IYhHpY1Q/mSSZcMrj+FY99Nq8CfGFKlXVQ1arWoB2QLP2NQDvSO3G4P+Zpok3Co
	 +kKGOBK4er+2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB62C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 05:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171350456277.26030.13691824181019520085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0089558d122f4e51f431c770cfc17cbdba7e838a457527e31eea3122960271e9
Date: Fri, 19 Apr 2024 05:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713504562
