Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6954C36682A
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770803694; cv=none; b=AQ/kRFUp3Syvvw/R0UnaE0ea1Kw4yvKyuLNe3Xbm4Hm3qyx2xWf8JpnG6swUU0CrHfhhcsovsIjrYpAk/77DvLM2+Gr+DxWQDANFNQ+pxgdW6Mv4/QjhbauhBA+8/X1acww9LsC1owrvjN8hUYoPHrGxZ2EYR7RyEukJO1952h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770803694; c=relaxed/simple;
	bh=UgIY5MnXvXzD5VH7X52vvO3dCrNYE+vywCoyxJa2fyM=;
	h=To:Subject:From:Message-Id:Date; b=bNQMk9XK6vUtWg6UfdHurXMCvAIGGjS7iICw+YXsL31KEt8Rm7EI0dirTo2Hv+TPKbN1s/lgumBTbPzo0Q2ExKJ7JtrPTEhGPMrddK3KjxTd9dCCDtJyOFqQRo739aSj8gWRuooLm6m98wAqpjW7GF8qLCWj3DmTEIOM5yFJ5Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rChZq5g3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rChZq5g3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D851CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770803693;
	bh=UgIY5MnXvXzD5VH7X52vvO3dCrNYE+vywCoyxJa2fyM=;
	h=To:Subject:From:Date:From;
	b=rChZq5g39/QtCAHAF5J7jxMdacKUD89TeN4zo1BFPQw+XtK6EKjDwab7QZkSM7DZk
	 cr/MCXybDfd/SpzdBaFOnscq0q+3ibuwhEwXfmuHAAOIxJYoTguhsaRsVaBhoUk11e
	 7G7FeBWDILBaV3KHmmbsE+cvF22TxB4TCSA1P1uzp20mcZdjECoZ/pDXGcO3Wu7jdj
	 pYEL5JpztRpvi2FaBGU0674sJjyQ+zI1dZbiL7bWG2AHuZF7XvN3lo8AVf/1ejUB2x
	 mhxk0RK/vSC5g/O1bdQt05e/+zT0oAwHE37oPWCAe/L5QQz9ekgetYPM9eVL2AA6/P
	 Sp8ddLSbKBh/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC84FEB5954
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177080369368.6464.9290133580157851900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378c5c764366c098d4f1c5be5a3cfd92878aef3a38d68792e2d3fb1c67e6b1e3
Date: Wed, 11 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770803693
