Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A0B2F1FD8
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756189194; cv=none; b=FpQggE1Wbo71AQtEavRCaVvMYD13Jm+FnAT9s7kt0fSurmxtTpbuau0vTu3QiCERaemNU4xSoAt/88YHnmBkobk3oIlGrAcb0jsLxZ9sx9FVyXQNL207Ft/wiYfwvF3IH47w4zBwxfvaz5fVN7FgM/YvWcJQ52gncFikLoftvNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756189194; c=relaxed/simple;
	bh=HAsRWsBBu5ACVWcd6pYTLWt3VFJAEYPeSQ0oQ3/3LM0=;
	h=To:Subject:From:Message-Id:Date; b=hHMIlhW67R+HF/zlcWPPCXR7RLVXCQQcKCMW5PR+XOebfKDfYeQLwz2oNWUhlunhLrAGS53MdvOjTIfYlHSg3R/odTlZkJOxODFfd5k4//qUjwfa0J8OvQ5jmpo4u9+n7wlhDDt6dI9AzSdm8HZT/H89jEZ/NnTHKo++eiEudMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1DvzIJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1DvzIJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1937C113D0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756189193;
	bh=HAsRWsBBu5ACVWcd6pYTLWt3VFJAEYPeSQ0oQ3/3LM0=;
	h=To:Subject:From:Date:From;
	b=g1DvzIJG8C16a8gr0Ew+3DYc9l3B3vJ6A+FBnZizNw0R0197iraqQ/axEkwQcPoNt
	 6j2vk4tBw+yuV0HchTCdIy1fJ48BHq7ryJZtc9SkGbmvd/02TImvfecLJlHALqyA+5
	 /4Js5pEs6Q+9cOjYzhG4bv6NeKWo6i3AveMIXMtVZVGMv/CKLBIAxpHBaf+8fxtGxP
	 mwG4AzDNFGfEamijwfLqhaSJBt02qvw7qX7RWKSicJ5JOqy8D8vX/t6NjikFrrTFrO
	 jR6+Bwt/W3iVsxcnKDCfC4aZ3IxB75fPISpBDJyfSpYaQZnKdWahFq5Di0YnEQjZDy
	 EqcdZyoP41qWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B69CA0EE4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175618919358.11761.14854037141256178540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0d238ab3f48d4a14a9e29422f099c006e0d5c1d7a8eb20f14870ab322f271eb
Date: Tue, 26 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756189193
