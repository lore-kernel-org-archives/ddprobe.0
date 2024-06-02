Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6759179C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 03:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717297523; cv=none; b=ofkggTe2bCkrugKWz7nCqqByt8aLK+Z5aCnG0yqWwIapbXRpEX3Z/QPyK/mWx+y6BP0lqbYa/AH/4ZjnAaq4uc6ESgMSyTnwnxI2nApON+fAoK/QJLTXdyahFxYUa87g69zWKFn+p1fHXtXYVv48SUaP5ypaEbW+YTUHgczdPK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717297523; c=relaxed/simple;
	bh=EaB+79EGePCU1O8TCOc2tjcytPD1V6TYUtgV6lHMljY=;
	h=To:Subject:From:Message-Id:Date; b=MXHeSjOTmrtUMg2e6mRblP4E1ezJmarGiSzCi1wPYd5+E9GqTfu+vMicjzrPODYb2KCOtb1Gqfju/Mm/L9DlZiYSgZF8EaEIUwpGrL9VCKTwwrbDMAwcx/rDz77oNrY0Cwq278bIiU0x2l32QsHMVb0/TP49/K1s6hP4unqHpD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPk8AAkL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPk8AAkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90B9C3277B
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 03:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717297522;
	bh=EaB+79EGePCU1O8TCOc2tjcytPD1V6TYUtgV6lHMljY=;
	h=To:Subject:From:Date:From;
	b=JPk8AAkLd9gHLACfDNx+DP/dNyrbh1vt7WuqB45IjqmphDlgeweLW3x4rdMSAr/cS
	 mFec94OK9EcCd9qGPR8gFve7bZZAB96brHQmuhbo/8dfOXTpOVBa+ZkWaI2zljiQzg
	 SHF5fJaYAtuUYs81zTX0g0UQbLTGVzxibja7uxpS12YMxYXQZEy7yQzSSuN1kJ7vFB
	 gFoPo55SkvQhQUEXdN7rHAhUdkSEqBmIqSTAB1nvwmCV6glk1wenT1OG9RLFH0NLLj
	 mOfcLN+arTQsIBDkJUPC7vZwoL6ITcfA3e8jt8ODP3msMZn4mDpqil/Cv5exi6H1EQ
	 GvgShloHCYAPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C495EC25B76
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 03:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171729752279.30469.5530467200216228554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ce38214a04b33f8ab5bfc9315997b0bfc4e5eadb6234a34a019f012b4f8034
Date: Sun, 02 Jun 2024 03:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717297522
