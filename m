Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4509976C61
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755743394; cv=none; b=SsRYyxQEtFpMqmLU5Fq8ecYC/xuYHHoDD3lGEJcoNYCOKE6tG2kVWFzLz+HUnL4YaqrpKZW7sttvMz76KnI8XnzfFCrzr8L17kvWqu7xUTWxtGUbOqzhE6bpKpa7rpzXU0qSzZjHGQoAwEJDoz9GqFm4UPbzz4yxqEWOO+SGDVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755743394; c=relaxed/simple;
	bh=gjbaWfUvs0y2v3/STnDyPNHyBUvEYaUyRHMxsgECdfU=;
	h=To:Subject:From:Message-Id:Date; b=LAtzfiYkMESPGb44nJvPktx3dNIdBpUdIS/fKD0QilzpH15lHZCThnYO+UG11/gXO89mLzE6/+VlqHci6J8mbdgzchRo7z3kLkxTaWw49T9Bs1BbE7GPE1Ng3k0G704Sx85zn3cZRCDozMbAPwiw9y11vGY1MaVZLY340tLslTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdHryTCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdHryTCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AB3C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755743393;
	bh=gjbaWfUvs0y2v3/STnDyPNHyBUvEYaUyRHMxsgECdfU=;
	h=To:Subject:From:Date:From;
	b=YdHryTCvOgVtKKvTkIJBo5203HKO4YFZaAzehLydCpQ0c/LZvpjrTnRFtCBEIVh5k
	 tZUNiJSlXVuaXxmhP4RhvhfXsiu16Wk8xZ4G6vo3CCU21luZC/CBjLMlTWxYmfvejk
	 YghAD0rKL9gsyspk3IcpqsQ+znoNTwj7l53tLz1OENLvRScUuLlWqwSOPPPZ+FRJv8
	 KK3beDrXwZoQFeqgWPdB3QdDTEdcZ/xWSHzwUwIUClGQPdUudM7lxLh2ZKpl3+hfug
	 Ae/GZZ7h0bbmzuuQqVJFiO5WeYFl127Oh50X9nV69vIiS/jWNOGkGn7tDh6AONIpVL
	 fa8jS1ZeERQ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9150DCA0EED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175574339357.11053.14839710070901714489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1083d7f87825f6580336931e69d9a830f7bb6e6a27c141e8f18bee2df5d9ac5
Date: Thu, 21 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755743393
