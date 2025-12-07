Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D84C2264BB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765135374; cv=none; b=F+4P79ICvQz5u4Vp1ZT3my+bAfO+wRADcbA6eZNKag76ce3WtFeOedWacGPSnIZd36kRD3QsRhil8YDk6ecyKlvb1N7clYDOcsEBgLp9NgQkCnLOSHWUgEt00KIdpaPTmuHqH87x8q+a6JuRz600whBvi1Zye9Smf5TrnCLk6dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765135374; c=relaxed/simple;
	bh=psv8TfOU1SIiDRfZTylucnZPkWLK6KoLJr0BgrwtQek=;
	h=To:Subject:From:Message-Id:Date; b=QPXqIFfO0PzTJWPPC1saow4QYaTeKecZMd+5KG5hqYkB0p9xfLV3gO4qMq7VT5g7mO44tpWU5L5dMlJh3x8pkyaU7LTq4bpIyuWBBZxLqwZGAI1yK04Y6NDSWY06qLgG4eB5uk9dgxhxmyoTNhS1CCvgHPFevfAAC/2fRIqTkfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jc5/BEkL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jc5/BEkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CC3C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765135373;
	bh=psv8TfOU1SIiDRfZTylucnZPkWLK6KoLJr0BgrwtQek=;
	h=To:Subject:From:Date:From;
	b=jc5/BEkLF4ALjN5s4K6jeXwjg8tMXwkjyoXNdL4tv0uJp2mjObdw0hvE1pkuxaede
	 iNd/uQig5RsRunoxMS/EDxttaquFz0tjxoj+FYTSUPHkmr7S72A5C45r9ZtP+6DoGI
	 sZJvrW6pNGftO0hJeb0kVEKQcdoPWUCslxcGuMf3OigoiObb8ACt1zFE315CbJnvW3
	 IxDn/+IfDxcj9FXqLqRnrKKsiBmPLKtsXQFWbaoih6hzSnjxHByIwt7X2q39kkq98l
	 lOWCCNHor1vrGzNeO+05F5MyDo+WTHxyMLNbiLxL8wwBmmKd3rKUjJ3ZH2dQkLWYO7
	 kkE/jE4EANYig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C27D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176513537358.12439.9749203599093610886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e8c04721a836d0aa04c6eefb392f3cd62caeef1891b9efc19f84a8420cb6b52
Date: Sun, 07 Dec 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765135373
