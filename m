Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1094C6E
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748076594; cv=none; b=Xo4gWLSHYI5cZjTEcoDTUBvhas5hh26ZNxmrJaaaUmMDAfxjeN3cBja1ryq3yEeN3CYNOAzAzjO1bAIGs1t6PLw+xV3C/Ahmb62XapcH99AmK0pjexhS6SgUekmdz0Y0qYBteQqXKlqEdx8e3VOCN6icZBA0smlN89uy9mEqChI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748076594; c=relaxed/simple;
	bh=NI1j4jTjcTf7ca0CYbuhiO1pPprQkDfUnQvTWyu8EwQ=;
	h=To:Subject:From:Message-Id:Date; b=nmOtFXqBuYVd3yucQ/2Zpu9gYFXnu5q7yCqTB1BRAh8BgoUJqUDkPtRc8CncdUKIuPuDz3yZfTIUk7p4PdxTvd/7spF8hZD1N+1jhz7l6iaYl0du4FeMI8avMCbhdxktDpvfMNxBPXE7R5P1CjwBaLxG+xwq8Sg7jiMmGNtFKpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnTfjUFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnTfjUFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8803C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748076593;
	bh=NI1j4jTjcTf7ca0CYbuhiO1pPprQkDfUnQvTWyu8EwQ=;
	h=To:Subject:From:Date:From;
	b=PnTfjUFBgW8Tpud6qj7LHfcUWMnzICIBwwHMtVpY2rEsgOGLTdUx5gS6jKmWrhUHJ
	 ukG/g/sobYzpIGbKod44bBRNM3E1J8PTjsxypJ0/kKMWFTSYlRQNB5lC16za+Bizvj
	 NjY7TDcMshhi29KLZ5VJIH9A+YNrTXan5Fip0yKRquGDP96gM+9eGyJ3zWOLxBQOdR
	 hbyc6BTAnPxEljPdOGeZMWTIvH3xKVlm+i2PFf48UoYOuIKCSKz2FFdReEPwb+hMHG
	 z1yZmCnTsKuwdq5+Z4njAVXmH1qknzCwOi0oIyVC6JQfxHE8o/znTE5nq6VubDQIgl
	 tStjt3Qyu0Mpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961A0C54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174807659358.1635.17530566935900280186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a089147b403a591118f9d2186111e51fc16cd2e9fe171ad02d95148d0fbefcb7
Date: Sat, 24 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748076593
