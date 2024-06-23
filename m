Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E07814830D
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 18:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719167543; cv=none; b=eLD26vCXbOzQsHZ2KK20sjM3csMYimNvXn0x5nSsRVFtjVblB46z1IpyISMChJgdhxu9mS3utUxMc5O8IG4xUV/Op/43cUOvZ8QF7RmTohfZ7lyoMxh2cVDHUSlwhlv10/PCIrmqz0zqoaWuq4aXTwFUp+xIeNvo8Y7N1FJMeLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719167543; c=relaxed/simple;
	bh=SOj2EWRh4V087uaIe4E4yBtA21VJpCWvSV6U7J5ktdc=;
	h=To:Subject:From:Message-Id:Date; b=Ylv2BNmBhzWYw9NkO+3m8RE/dnCmKQZ5lWsu/FNNECpJMjzx7SSBaQA6XRLT5ZXv4ZcR16YlyuOiREQ4Q3rjnUu6gJ08NVAPAfF4h4EKy3XnxQoPv21d6rPrNg0i88jujCtdthjTn1eSJNdYQNjaxdS8iJ/AaYwPylBdTMgGEE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vN5MebV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vN5MebV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D660EC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719167542;
	bh=SOj2EWRh4V087uaIe4E4yBtA21VJpCWvSV6U7J5ktdc=;
	h=To:Subject:From:Date:From;
	b=vN5MebV/svQEbaWZPihnVz+3C8h3qr2lRrozFrjeCH6z+Do43UnjwOxoC/VGZRfX1
	 4Ulo7Rr/OesO8vGMAvl/tYva7Zx5RFRDXgmCo+Ag0ntvurUiRR98jYE/gHqZnltH7X
	 O2BehG6+cy4zYVjZWloxAsf6YQKXBoQIxETvsDyydImSVIRGjxg0YTpe9aTaXQC/Dk
	 uUnV020xKNjhyAhmaGJJya5JHZfjjC4/kFsh6qAxZEoY6/wYF2RLSpjtIEBYE+NFih
	 KQ9LiboN29Bn5bG7fXeHh94/vZjWRFU8YPsQlXZnTpY/axy8MnDglVeR83Wu1Md7+U
	 fZrBaNeQXKAkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44F0C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171916754276.24789.2065101003255514816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d81916fc48eaef57f32333d3e04256978ffcbeeb74c295837caebbbf87b8617
Date: Sun, 23 Jun 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719167542
