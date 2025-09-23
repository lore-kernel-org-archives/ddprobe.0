Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08FF5154BF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758598794; cv=none; b=C0mN3mQj/20fT21lVcPZTeUuZ8sWY8TF5VioLK5jqZAi+QT6D/vkOZGZmLcFP1al2qMkK/4h/cZaz2kRJVlt4oK7biSSnxDmoDgLyluL9H+5JbvY64LFeXLRuGVtT6FmBe2AfJSsI/c0AYuMu1AwrSeQveXtXgINDOeHTsmAHKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758598794; c=relaxed/simple;
	bh=jXqWvLlQJgm+N/bOvlvIEzR/sNSn5VavdYdX+27PeJM=;
	h=To:Subject:From:Message-Id:Date; b=qY2Sf3ufwbrlsL2ckomsu+Qmr+CNCFuCkI2ZyRPKFFDzpbJzqMuTOz5O75BdP2q3lkr7lofLU3DC58m801caldcXi8CqAED1cT2x5PqVGMDA0G3HYUZLA9MLW3VS7E1FBxaWjzWofFZYr2IJdFawpn2/VrTYznJSYnOez8TePfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bELpFDTn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bELpFDTn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D53C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758598793;
	bh=jXqWvLlQJgm+N/bOvlvIEzR/sNSn5VavdYdX+27PeJM=;
	h=To:Subject:From:Date:From;
	b=bELpFDTnSrkRrK+L7agRwMnX5qmPXcDI4hspSXWYmxkYQej5+vX3l5soUpinkm8qo
	 mpHoXO1xabvZ05zO8W82cQ1w8mPMesUW0iJJpWzdyvTjphtzli3qyhQWfeXTyGTxl5
	 Dk9WHICABqot0muPd3tf0s6QwwedTR1Lj+6fV0Nh8uQvzOlO4fRI7mZlvdCH5c7VfF
	 dmRxIpz61XWL46UKXQ4ezU81N8DIpTwqr2i+dq5QnJYmjH78qFEGFEL+lclHKQGANd
	 GnZBWr+ZcObO68aIVslwYlBdils5+Cb+xWa+F1PVz/ygXelFmV07jRftIvw9dp31dC
	 vEJXCcL+4jWXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7CBCAC5AA
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175859879358.15245.18303783908468441529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1aa27d0e58a7a59c07b167b24b58494f1cd9334f0a794ac4dd952a7a15bc70
Date: Tue, 23 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758598793
