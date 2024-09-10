Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D438142911
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725954354; cv=none; b=CPmJwVcm2Hvt+Cbaa45uZaqIZHIkuelhmabzSWosYoQfJLnBAiqqPFKzd6sv64Cm/pPbs0z2mxIg6Gvz2Elg2IjmTXLZFNwo8ek1X4Il/G9jMxLNdtDKTTRJU9gZJQ3hk32R1sGDQMe2D29PLjYGJl3vzHfQg6OLuR0PXFDix9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725954354; c=relaxed/simple;
	bh=+TVbuZDdRyRRlmHy/Sx/GezAcmNwK6xGylVgtBGW4Pc=;
	h=To:Subject:From:Message-Id:Date; b=SA8S2sgwm67NWJ5vb9mgPbQxBF3JN4YlqDWIBAl1OcfuYUhw1JFq0+U2H9PyY84BRJXFO1mQp15DquDgClqwgvCO2PREfwP6oLZgccdPyAcTRMPQv8NjGzzfB2OjAZOvXuTnhDKTb9hWw9jTDhW02DMoX17s3dY1b3BxJk9Nhlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0ZjsmB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0ZjsmB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D62C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725954353;
	bh=+TVbuZDdRyRRlmHy/Sx/GezAcmNwK6xGylVgtBGW4Pc=;
	h=To:Subject:From:Date:From;
	b=J0ZjsmB9faRPZ62TPMCIkP37Iyr+XiDynm5xOC+ulCILRBS5RSDZQpLLzhwNzqIGX
	 5YeaoJ7/LLULQoUt6AQNry5D9KBErT9EUhTEYejchrOqNvh4rVNxqctFnDatkwqnUX
	 LjWowl6h0pnv8tjxWwOENDxRt5H/717/VYYkwMA71vK+QetIBr3cwjExcxlmsGWB4x
	 CDI2jj4PZijAMwem22PjHmTUckoo3Avhj7Hl7WeGs9YdoY20BKym2H/LoPpU5qqFTZ
	 w89ltWkwA11nMUYirQex49GTm88QwZFZcFATAOeidy67sYlQkxerLxpJZFbgtKG98L
	 vkjOmwYJfC56A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94408ECE564
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172595435359.26634.16834158293952125059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7134e79fd7dd66649117f6e6359d19e878c5994d3bb475432244818622532b2
Date: Tue, 10 Sep 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725954353
