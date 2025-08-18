Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F48215798
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755490194; cv=none; b=ksd6iNhwx6XM0pBhi+61+GoroZTbqsHb7gCi7UE12tYwWHRswyDBjBs9g+tSW7o+zOADow2nSdsw/NHi68hzB4Geq4/4O/EyUFPBvHeCIt5nArsEXFYO8AQ3x/B2lqfPlCPILqoU6txLgrdLIEMwjz0Ca/HkL8MVrqvPxdKkh0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755490194; c=relaxed/simple;
	bh=izt9x2+v6ILTwrGb3caugnbjjV6+XFhoajLFajQNjys=;
	h=To:Subject:From:Message-Id:Date; b=AICQatoIOvzuyk54p3zL9JqVHehF7ZLjlR53My46s/4ENeCrW3WAYXhx2W1aSPtmPWj0ud+cVKOv6Lc/J7vzFp+RoJNoPn7rjR8viwtXY5rLsKLGC7q+VjpkCINgutvbFUjpt/f6sWAXvdR1V0A4eiX1k6nDg+VKdNUhbzTU/oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsiNMj8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsiNMj8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A080CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755490193;
	bh=izt9x2+v6ILTwrGb3caugnbjjV6+XFhoajLFajQNjys=;
	h=To:Subject:From:Date:From;
	b=dsiNMj8cI8nY/Vt3Vk+dfOJH7yUd9mjBKkTCAdpaeUkpDbDMX4YoMxG/ENN+biab9
	 hYJ6Irwjpe4SFFf6Xa8Or2u4RVpX5RdfktGIlEGB1vWZuOR5Sf1vTDG7Rcykj5352r
	 6ndRSpUWVZ6KTwbXxTR1JXbkYD0lpOIo7XXO0WnxPSi5Q36tZ00jmBsdSQiMAOGFss
	 wZWk2HevKCAOfPl1gZdOa1nd8riuqdWZYLrt01vYgRPnWQ3GlZFnIN3CAofbGn18YT
	 gtV8/ds4tRd4IB4uCbi4VzCE+kEvv6oY/6cf6m66iYJ0nPVpw3ZZBTdN3cS0SRSjpU
	 Ik+wE5v2VYThg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9143FCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175549019358.1865.8913035712712521414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae3da1a077364c3bbfcc8485e7bd6e1273cbfb8a18d932d59f80d847ec47ee2b
Date: Mon, 18 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755490193
