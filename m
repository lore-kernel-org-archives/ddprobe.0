Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E3733F6
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759389594; cv=none; b=N4M1ujGZHOSqC6nqJ+TNEdHoTZIy2+0vm+u0sP3t8jRpzcXagDSEk8lEdIy5H2NiE0NlATuzR+AO9tSZ54choV93F0mriiCrZVTNNQMuwa3H11RFr/LFUZWWzxHMJTNVa4TU9Uc+fwx3dTbmWiCPTtkbVk6cDJZ4bXGsWxItm9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759389594; c=relaxed/simple;
	bh=MlRzBkwU0Q5dp///GVWtcLc+sTyUsfjuYdkRoIGhncY=;
	h=To:Subject:From:Message-Id:Date; b=moOd6qIGwblH8UqAWBKjD9RJRcWLXMd7BIewOzBTbop2UOHPEGTXG4u6Vwp0Qpy/SbMI3/P+/Tby0oHaYEs3OXoTPi0sPxwII93WbAN0b+62quauhip3MM3lPKnfU/HpfTrdjOQpj1AM6Pvt4qqVhIk4xa8UAapDLxu4MeF0O9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qqzn+91+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qqzn+91+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0FEC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759389593;
	bh=MlRzBkwU0Q5dp///GVWtcLc+sTyUsfjuYdkRoIGhncY=;
	h=To:Subject:From:Date:From;
	b=Qqzn+91+4qARi28ZeCzVWCLIMcAw0qPTLPsLtbA+EWNKfjUAcAmBvLcpECb0U8KXN
	 IDJ2tDSgL2QyFGoR38QewTFudcep4yDO9UnI40yoitb5j/h3wlTQuuMqzSinfBnOhE
	 LmWr+g9khqZPYJCqboIVVchZDRii976LUCBLCIZCKDK6CJ+cOO1vZVjRR4cbrm/L1o
	 GOaUMxjOlFP3ZBcsjGrEoqZtY2/Rbz953lgKnx6SWztETwen16z8ppkTihDgNbTRjq
	 N3th4eI/sBfhx3+ny0JrkZvkm27IMSEYlLMVE9EKfCXK83ZRFsMct6jsNJ1j9s69jT
	 pKAz0b7vSbo2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF67CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175938959357.14254.2303817600343726123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ee2ee4e166e46dad2fef3968ee0bfbd68f2ae8a0e8775082e3c1a2057ba9fc
Date: Thu, 02 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759389593
