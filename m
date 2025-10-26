Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C491E1C22
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761487195; cv=none; b=BxrMM3tdz8PuF4IhYgFC/Bi0/wPTTC8AOVHxjNIXJ+hffQSkVto/NBHDvKLDyfaYiO5D3THlwHTmBgQuik9WEz1zhNaWBqaaG7qBV5gP7b/VYUss0HT6By/+z/yghl/mxpnMq/y35vC8z3tfDTaWf8jDrA9eCoeZzA4rCe/Z/Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761487195; c=relaxed/simple;
	bh=l6TcEbrP5ebwfQy0MA/D034CcTnHQmf6oCA1mxNScKQ=;
	h=To:Subject:From:Message-Id:Date; b=qeB+g0k6WLyU3jNaLry0FUZm3T1/CuWYAr9KRXt1/uPQ5M4L2/VCs2dYh3LpdB1jNQP6LU9us9VHmKEdrcPivSfeLNAPvZvgm9o6Pj+g6ZTPE8mEWXD1wOoLNRf4MhgJVoGperocBLyAsFWZGujwGTFauf1kYwX6F21KGzyigUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjiIcHMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjiIcHMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BB6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761487193;
	bh=l6TcEbrP5ebwfQy0MA/D034CcTnHQmf6oCA1mxNScKQ=;
	h=To:Subject:From:Date:From;
	b=BjiIcHMQ2i6mIZU/sfv9OEgl9n74nhlK7wiCmdUwu1OCSybcxsx9J9qgh8zt/us/Y
	 1DknjCLhRYqn6bEnZBv1t34pFBwJUBBD+cX7sHWBP/vP/CDL5cC1v7ccGbAfAHZUFB
	 VxHDoiW26hbd5M6U+vJwpDa8a6lVj3mL4jALco44cF6KK6esnJrtbXUaOTfWKynKRl
	 CiST2ySyMyXUYtrUXJ3JU5LmBxg7qp0BoY+kt+WPP1wjwE/8K4YqVJStNDonJuuKhn
	 MYxBU0qyDimC6A2hs3mb9QXE/VPWWyin5WVHqwZRELkvyeMxDtt7b5bdjFDzlAoOrd
	 ST3PFL2ZdyIkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925AACCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176148719357.6508.16492853895524218279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a71f5788e48d8199628a20d41370dad699cc0926c7ca4af56da22a64d687517
Date: Sun, 26 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761487193
