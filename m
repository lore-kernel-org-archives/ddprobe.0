Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D144D3770B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763206793; cv=none; b=cCpxcZgD9a/uXBEqtZNPPbGt/DRLAjfkjtNK2yBleaI0+BWVoKc+ctjWP3LQHJ1257sfs3nmfwkRYjuoys+mUaKASrc0dyC+KawArwnofHfhTZUs0e2/rY3GKQUJ9MruLs3Px5rthZlq9Ns0d+dhOj0c8iDagnP1kIDI7XLvspQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763206793; c=relaxed/simple;
	bh=ZsENyOaJ2bl14vqMno7A6Yba/L0IwM0jU0hdCKOux0I=;
	h=To:Subject:From:Message-Id:Date; b=EVbXhnXYykwdZFrn2H68M0nmzBjqzPjSpAY2GFl24SSGSVpnYK4ucKGNlffKsE/JYny2SLo6DhNrHfdNYTL0V/ZZHQOI32WVQZmucBbWBOKSrsC8upkUnjlgD4O/Et4AydG4og0JpZv3MKtK4PT44ejljF6ysfS6jMXpnAdYEuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4gAbrvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4gAbrvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95CFC19422
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763206793;
	bh=ZsENyOaJ2bl14vqMno7A6Yba/L0IwM0jU0hdCKOux0I=;
	h=To:Subject:From:Date:From;
	b=d4gAbrvuacnu5SZBzUjmRr/yBcFXK70kbTpPwlRTvK/Yf0x1ghMEB/Z5cHW6tECvx
	 n9Q90N79G/qnMQ4Ptdjz2dOP1iCjNdWbS1iws8sFFTfzrSx79JRZ+ra4GDSfZrX9U1
	 TGa7yA9vjf/CqeeAjVYyvnbZh521qyYhAD5GHmGuTHyuPODVIKEI1l6mJsqVSF51+b
	 OrHCT3EfsBW+3Hig/0F9bSJBAmjMqd6qoo2ETA+u9BvyGpxauhH+U+FV1qa78vopzn
	 VORVOZi7lQRjEKB1XX9uZxJOyim15NL6jIrKcEfrboZlqiuiYgvItbigMtPvAc0CaM
	 8LQnRnnoNY8xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFF6CEB2CC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176320679361.29847.5075082860823405988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df4b944096ce207dcee2f10bb652933e59aad371d827e55c28abe3eb3d38e172
Date: Sat, 15 Nov 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763206793
