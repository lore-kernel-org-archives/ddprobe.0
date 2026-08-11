Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51863468C05
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786476034; cv=none; b=rLzzg0zcptr7LnlFB1fl9h/KTTKDgXpBIJfoAhKsWygXUJlpjov4gvGywL4Ku0mqqfESuxGuL8f5b0Zoh3DXESosgrGuiRCjHkI3u/gyzE0lzCFxYmw+czlSzGpWUkTbquQTylYRxRBJhWI60x+zdZrVqjKh6y0dlitWIj1TQvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786476034; c=relaxed/simple;
	bh=5W4W2+huntJxW2bz+sKENhERzDjJAcxyZl52001PLrU=;
	h=To:Subject:From:Message-Id:Date; b=RLRMBT3J6xqXSZExLk9zG2arGStEgRRzJ55TQFGCFKXin9h8Ha6ZABEUR99ZqVwi3Ear0XTFnjaxKVLaYSYaW5DuZSRxtldHqiKf1wyXLqt0ujXi4C1W/P8EDFfYhoMotdhO1LRfq6r4t+j7EOT8S1LQZWEmg7Y/2jSY9Zzt01o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXPEsle6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXPEsle6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADF3C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786476033;
	bh=5W4W2+huntJxW2bz+sKENhERzDjJAcxyZl52001PLrU=;
	h=To:Subject:From:Date:From;
	b=CXPEsle6sgE2RoZLaXd0ua2M5ihsyb2Ftqj0s2xl9fsfAr2VIsp5I5JJ/YkUnPaB8
	 Nl3Omf/0Eb7nXAqcyrGhJp8k4b4mJ/si50dL0DVQjZvvLWt41649gFUwsyBVj14hKl
	 yTLcSx4qw9oU/WaUU5WmyZnsfLuFZBB9Avi9PxSwVkIV/FPmKekkMtWnK3mPqlnarB
	 /bDclPwNHM9qY56R/YGZPJwxxbMBC/TJA11mOJU8OJItmRSnZZFQoSjLBnYjEan68k
	 aUizM7Bi/6Kcdws2BRoTUVMIjHlqk7N24/bA8TRZ2y8rYF1q+BxwbRb9HavAcXjLqS
	 0t/w2Hu1mhVyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE58C5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178647603369.7360.5975121972632442201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff4f980464681aa967d573b7c866246da4c7bcb65e9f2461ba19279f95a14a0
Date: Tue, 11 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786476033
