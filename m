Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEFDF3EBF05
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771460094; cv=none; b=ORi5X5HBrHpFIkwpI0JIT4Osilbqbttzy01KBFKDMy4q266BcKJdPd43ZDIgnhKws54u2xOriKbnSb8zl9kbsj5zIg65cyxDTuw1q5bMvC6O0sGK5aQVDhN5m/7GMjK7BmItj19YuI3OLqdMAwg7fyBbvO/Z2AIc6RmrslP22fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771460094; c=relaxed/simple;
	bh=1lYR00nX1pO5IFDgP17zGEYYZNcAeQGS68D1IN2l6yA=;
	h=To:Subject:From:Message-Id:Date; b=nh3nrR95RntdAjunD7FLwNSgDPdt3j0xBLPXbODVbRPH0OYCAFRyWPYjlkAOx10fVVCcIsqozWPvNdsu3rbDyEVn4ULrN/Rzu2q0I3qIMrkxaMZHRsiDrxXYG3xegjseTxqKL9YFokTbV7aWcYrBNafF0cxxuhoXBCRo6BM/gpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgYR/LDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgYR/LDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9704C116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771460093;
	bh=1lYR00nX1pO5IFDgP17zGEYYZNcAeQGS68D1IN2l6yA=;
	h=To:Subject:From:Date:From;
	b=OgYR/LDUQPQ7OdAjgEAU+O5N+a9oYodQ/0JnMwN3fITmzbHAkgs9FS5Xl3B7IS1lu
	 4ib0CwEmniV319DkM9jMCfo+/EI9/jiL9d13n5ef6Pqos4pLbs3ZMnWsHAOdS6n1im
	 8Za/8nwCUVux82giJpZiW49JDs812gggdSsp9Tup/Ft893+wpt7kHJMEdavBAcve6R
	 6MwruGEosFo++hvPFezxEgQ+uNqUaZeQOp0AXy0XCCXAevANtgA3FYFeqhwuWfHB/6
	 GHGwA/wtubWfam6EnvFgruKrTijQFCbF49T1PFk6qNTfBuRTFmGpZ8Q378k7XNU4WH
	 i2ftFLl0wnIaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936F4E9A02C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177146009359.10417.10627103512208302626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eb15dcd1d55f7b8117b9e1fd9f0f4eb15a19775623761bedf1c8cd3199300aa
Date: Thu, 19 Feb 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771460093
