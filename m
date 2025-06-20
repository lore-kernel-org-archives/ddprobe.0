Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E121FBEB9
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750414194; cv=none; b=s2fbna+xBOeFNY0IYdMDqcls+zF8b2B5JxnEs4vC3Hxd6hrO8EJaGMLGJRzGmpNp/JY8IhICCVawm1ZEndsHlaKE/IHO1G/hNpbgI1wUaWx87I1eKDjca8tRQG+mFJd2CFLy3aRJsuVhXCTXC3ENCeKKHSlYz12Ob5+gWoZM+ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750414194; c=relaxed/simple;
	bh=IsanNmjqtLRDyv3T9vt+7+6VBZo5mtML8UUuJB4PbyE=;
	h=To:Subject:From:Message-Id:Date; b=k5igsxiH0IABKAFsVHNO6dKUmgVb6qF4EH0I33agLXbuK65OzaXy2qNn73dXyhmTipShfm0vamFTWnrfxzaxF+tqG+3TnWno4sVgYdk9ROo8e2Unei0LZZ4WHgyZCErvzjSFPdJHezWAQnIlzqhUDXp+u60jG/rZqM1d2X/LkVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaLnilEr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaLnilEr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F8BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750414193;
	bh=IsanNmjqtLRDyv3T9vt+7+6VBZo5mtML8UUuJB4PbyE=;
	h=To:Subject:From:Date:From;
	b=VaLnilErjMaZko4lCDhVZIqcLdEsrYrhvjnFmYctDBokY61PA8L7ztrmpK/szygVK
	 IuUGBwVcYFbvpMr2SzArorFdfAOgnObSrR7Gtoh/YNRlykypzj4Roq+oOfEF4incFY
	 JqLVuNKY0b9Gq8sEkZs6syOFom4p3wTslSvc3ltvYF1yieClOC+7WmTVc68fKmsKVu
	 PMQYvIiNTL/m54VQJ25aaiZvmVycyGdMh++bD8L8ITOk5BbnzsNT+mDU0W4VTPWggX
	 IUq9Yu90XeIvt0e6OTDEXGxSYyvGssdrN2B/aIFZOktA+UubjkOlFtkq6g1Js+cgfx
	 UYC18kgyn0UDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE08C7115D
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175041419357.13852.3492632015563887577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c50b7764c8ac5a07fc9a0afd4e9524e907c7e4ec1a3d3032a1ea420e32b420
Date: Fri, 20 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750414193
