Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089843CCFB4
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774437894; cv=none; b=aKEXBPIBm4v4ZEnCqmuLipYtvjqjvswpbGvd7nD3Y5kXkbjcpEsp0DI2J104PQbCS8NVBhki3Cch0awPV0cT05DJU/u6O90G4VXxp+MZH4UO7RAHj685YKjwivzD1HXPNT4IoqYzcu9kULE6vWXjukbDHoyE679vdiexAAhtSOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774437894; c=relaxed/simple;
	bh=uEFnugzVQj91yvg7iPEDC0PYqcwzlU0OrooLWs2xKM8=;
	h=To:Subject:From:Message-Id:Date; b=AwIlj5KYfrVwM27D/5/7pWz4JrHkZr2L3dz3IUQi56YfykA3Df1YM9WfHX+KPh0479S7dOcg8Nb5tJgt5o5hS/+LSmfg0KoPF4Yvzq5ReSeLRHC3z6qh3kV3R9A3eSYa8aWqQ+WYhi0tMvsQ6thIY0nObvhdk3sffPRNp7VleyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LchqQaPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LchqQaPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3742C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774437893;
	bh=uEFnugzVQj91yvg7iPEDC0PYqcwzlU0OrooLWs2xKM8=;
	h=To:Subject:From:Date:From;
	b=LchqQaPnX9/5JFuwKuk0FqAChCKka1f7c3lGLS5npcOIbCu6JCk37cZW2l94iAJEn
	 yGzUo69yqEMxCBd2fy2qqnP9IYXfpYPgJL2aObjRFalNebpLfWOQob4aTurowwTD/r
	 +FaclgPXPqXM3ydTnpNLPIE9rtQNZ6KpIFMHpeQjc77X2zJJFQXuo7KwkhdhQ9QeeP
	 8l+xIzBzsSEhNQpsRF+TEDMNvpqRRP0DyWP79oPZzMVZ1dotTaWeP72rivMSHBlcir
	 BMocOSnCv9qY5AfBYZCDIr7QHh1S8GVuNz9lp6bbTsSpc+QHYOAAKkiief4X+xNNjc
	 MjYNRR79yUK5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90146103A9A7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177443789358.30582.1099260754349627570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0715bfe6f5cc517f8d55182ae8809370707f02aad5f143fb0d905dca3ca0774
Date: Wed, 25 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774437893
