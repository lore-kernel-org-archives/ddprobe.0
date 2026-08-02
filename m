Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5011D31B828
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785714634; cv=none; b=U7cF/erG9aiiBNLoTF8BwG8+PCVKEC7b8k+MwHErNccNYf5kObpq3xSkVwt2OuO+j2V0EmdAe/cXx9rxZL6VxE4GBgcaPjRg77dziuMNYb/OIx67MS/GZMdKft90Q/Sgq0ClKzlI0xzgwYAm1wyWOcH1P++OFNJ1IkikYHgzhLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785714634; c=relaxed/simple;
	bh=Iw3SMkRBIy97owaKHKkYthb3HKwL6h2e3oK5apBq5E0=;
	h=To:Subject:From:Message-Id:Date; b=UOwppgXMRoyCerEFnLQQgodibY3KvaNyXLnNElM9EhPK3dM45g4nVgr8wh8P6ggjO3HNmTPx5Fd5fcT0JY8Uj4aRvmav8aVgakg/jofz724CHvfBoRM2C9jVuAzK3Cd1yGNHU1wtNTHSWeNACUvwJspEPZrQk2aach6VSLnunX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArxfrWP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArxfrWP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04E6C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785714633;
	bh=Iw3SMkRBIy97owaKHKkYthb3HKwL6h2e3oK5apBq5E0=;
	h=To:Subject:From:Date:From;
	b=ArxfrWP87mS4r/z8mrL8nFBqT1kza23Erh8B3XnlK28U4TSMvEOgrmxbFj7Ufem4X
	 RihDTvMYIMnzlQ74tFc82ZEi8Ba82V7mCe5jSmyzsOTl/alnoXrqsJ9dHkLqI/Epl8
	 yhoenmfw1Ct3Dq6YDG7u9//BouqU2DhPtQIeaWcgiOiUeqr6UDpR8GB7+a7SKgBNP2
	 uFJPS562LfIKopGU86EsViK28cEkjvxq1JFDF0/E2fNxRWRapFjz70gKTKtQkQG1n7
	 PxrGUOGfezmqPEAkNfnvoyVDTG+3INF5NBgT6qwA4yWStYhf8OtQAy9tmDb47B7MA6
	 /OAaOuENnDxxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE06DC55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178571463368.4705.12673822689348933146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f1fbb1252643c78d4e7a48042a91ff585598e0518208eb498621ed67af0d19d
Date: Sun, 02 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785714633
