Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D3203D6498
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779058234; cv=none; b=nZCG1pofW8wWjMsuCdwI/8ukf0nPv768xSzqcC4BQPRbr9Vwtp3UycJoowbPY2oK60cB7xNs67GUXlGinni272vHJrpWAL9cQ2vYpPrB0QM5YB1n9YC62Q4TDa4LOu2ZdznapNaIHIkTAq3jklbXQzhxuf0CPGvqvmRBWs68rlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779058234; c=relaxed/simple;
	bh=VRsKav/R33oSejsUN57nGmqLZoGyKjPOrNnCmu9c2fI=;
	h=To:Subject:From:Message-Id:Date; b=L5joPhleGGiLHxMIk090PZ/K/mHjU4pFQDJ4fdzsfS3vP0Ccq+nGYZkJWbaOQV/R5t7eVFfJJXxLOlz6oYrBP6/wQaOxAnluqyr3FHl+qnYkYlHKqfq1YcPjrM7tePz45J6f5yTOo5IZRSd+wAIBcdsfkaXXLYWSnD+yu/HZUj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eO5vbyT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eO5vbyT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FC3C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779058233;
	bh=VRsKav/R33oSejsUN57nGmqLZoGyKjPOrNnCmu9c2fI=;
	h=To:Subject:From:Date:From;
	b=eO5vbyT7HnzxSc3TwxeVrpqZihVf8aZGm43WGXSlbekDFFF/3+KIbX0Np0IFUXP0i
	 o4AdSJmu1Yfa2owlwarAOSdMBLCW75ydyH62TwC/otT/TUf3sLLxdwn96mDO5AAAYb
	 w4yhirwLHuF4V9TJu5qXKZlTajdFBuHhVxJ1m9qwXnoQs6RgwaSWxi6VUCIETavcP4
	 pl7CpEDBuwbinJWS1KrRtysNHVdC2JKayQmXuTQmK4h4Wnh1KEPlCVM+vDWWEmc57A
	 co0GLzDK1aGAPVVLBrQFP8l/LWkgS+igd6D1fGufv3DFx/cSJ3JMsrF7Mnp4bOLNNf
	 zfrnZbhwgWcXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A96CD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177905823368.32624.4701276036099910168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21aaa9a76dd0678012ac3621e71627372571c1d80e7b7fb99330cfcec6d0a18e
Date: Sun, 17 May 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779058233
