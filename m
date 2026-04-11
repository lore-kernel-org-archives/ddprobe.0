Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8C52DBF76
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775946454; cv=none; b=uXL0w7nkCIIqW2XVkLVb35Ymh98se9SI5XDRsg22p9Nt8mz3/Hk7FPI2gn4Xj0n6aJTqJK6NVWWtxzVdzAUhX3UKqjt1t/Hefea/7S7nCuPRMOt1QNXEGUbyceSLLZkxDnkecdVkrRUoWf+DF3BbIqcnmA8SSgbWvxUEN50vJp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775946454; c=relaxed/simple;
	bh=GdMLmDj37DUt3/E5fLER53W+qKPU1OdUnMa92n3P19M=;
	h=To:Subject:From:Message-Id:Date; b=a8PTnJ/HovedJ1LWKySFwH+y5mrSnjiboTj+ix3sg/bhVoPy1hMbCA0JJpA2QgOvtQV4miRXNgL6YMtZ8o8XwZnTue1eZRZF+mDeCsrvk2RrysBhyo/qP8lI8aDPg+Ye78auxnkhR+SeqsIp9/PPCUjsnGIxwK5mNFScOsm17Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYo5IED8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYo5IED8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19AFC116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775946453;
	bh=GdMLmDj37DUt3/E5fLER53W+qKPU1OdUnMa92n3P19M=;
	h=To:Subject:From:Date:From;
	b=IYo5IED8t1KBgMdYnWxCiQi/oaf/JG+9Fk/TRVTi7jeuT6Rj8KpVUOncFmfE3fpaM
	 8I3R7BQEPu/q92r+CjMDXZ5E9sZ5h4G0fZAO+JC4NYBTQdq0I0fjX8JBSCQ2NmBBY+
	 vnqMKiQw1MdxDGci+jqc8UWW19ujWu2lJ/JFu+ow1TDqFdU546rxWmkCm+XepfPebd
	 6RYK9VuZTKAboLlDDCTGe3R4iW4bVgffd+5U4Oi8jfen3mm5Exq3azAXzZQoQ0ppWy
	 l1DOB0oYy2A8FfJtWCt7Eyjm2b3wdmXLVbqtHeMX0djoAnqwEjXCd7OO7O17V8liDM
	 2b56mrBXVeBwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A5AF3ED5C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177594645368.28815.6714167399452197238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb199c42a2b3163cc8582a57dae7ab46438a655e1603a7751e72625012a10e4
Date: Sat, 11 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775946453
