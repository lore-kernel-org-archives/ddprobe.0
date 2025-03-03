Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BB21EA7CB
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 21:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741036134; cv=none; b=UYvdjXbKh56EpcMRe6fQH3ec2aYvYv1GnSZFxSzqR6JHbhOSzXC37vASbyUcvY9S5w8hBkUhPGt3zAUNJVxS91C6OyiBQwI3NbkUsMYO/w0juASrl3DxAYWPsOo8c43mIQr0nLtVPwTXM1x7U8w3rSn3cfH+GsNx4sO4p/3cGos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741036134; c=relaxed/simple;
	bh=q39hkduMaqW28d0dHTseHvYr4piMF9UQsRdhkjedYCU=;
	h=To:Subject:From:Message-Id:Date; b=TYCwZU3G/ezA+b94bh18yd1NdDq13G8jCwZMAiCNvAsogpUTeXquMnm+iAGisXozBLS0Mp6zd6M7s5T1MPfJYwQ7wIgKtGW0mXesHsqyGK3x6z/2xs9ZGCN0DKVg2eOQ1S/3DYMHga9GwrQdLmFqTFJ/UuB94OaIU9a4tjnINoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baBL8Cn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baBL8Cn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D17C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 21:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741036133;
	bh=q39hkduMaqW28d0dHTseHvYr4piMF9UQsRdhkjedYCU=;
	h=To:Subject:From:Date:From;
	b=baBL8Cn3xyusdRD6XnycG8RTBHemnRlvOEcFoGJLRkuqLhQiH1N9GmfxT51o0gMTo
	 uUn2x/9qIATgWe1/a3gyr8hjJPp8ZA3bfQKGz+7bDfH9/0jtIamUtBgwQftVIcrz+7
	 L8+4hw9VMZr8Zmg4Xo340xzkM0QhW0K40FLl5LChWjhoLVHSb7oKmJNdclBPcrWFuC
	 yn1vxEV/YEAicDIUF+i/i6vPevjoaUCTyhZnOmYZLtHb3vli2HPciw3BwebZjwFxF+
	 8OD2RbqwjQbyoVSwogH9MX0WSzHwPXKi17bXKK7tyhc0KtjPuF1ly+RZ3OokYFfP5D
	 kqpNkRim9UCyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A426BC282D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 21:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174103613365.9960.6694125468484058288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11197fe645e6638e97d771637af50fad9c9ae619d4d9beaebab784d0d3d70769
Date: Mon, 03 Mar 2025 21:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741036133
