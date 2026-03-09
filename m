Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94FC36B07D
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773089693; cv=none; b=cpt3lte5h3zC6rQ5zrEsndCbfh7qRY73w9VUxoAYshIHhZqJTUqzjFprOdy3jFHWVtMGfMUSThJwe+cKUnNqEIa/hv/oQDzKsOgBzaD/SfLvGFf+7s6I8zCMbBo2TegifDQa8CJ8ifXXmPon0CKtU81zlG40oO2ci6WRactLV50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773089693; c=relaxed/simple;
	bh=Q3jZVCgVRwhjsTL6ZFEfVA5+fZL+LE8Fc10IfPrYXlg=;
	h=To:Subject:From:Message-Id:Date; b=I6Q4icRvXnRiAQKSiedE54qdoWxaXtdbvaY+Kg0HR0UmhS/dwkL2c2Uud06mZJMHJkhg6mAssAwUwaECH7ogW98528g1Jrxww4Ibj4100NoQUUJNzG5Fv5AFh8vKn7yNIhgk2t5/rr6bucyvVDkRqHLHvzvWTXW7DBKqQTvoAQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VP9aau8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VP9aau8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACACEC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773089693;
	bh=Q3jZVCgVRwhjsTL6ZFEfVA5+fZL+LE8Fc10IfPrYXlg=;
	h=To:Subject:From:Date:From;
	b=VP9aau8gGPe85kQeEB3fZY3pRazL8jnRxaffZ6M9D4yqNuVxaox1jSqpr+XHh4UuW
	 YaRCYkQxzPlh2aqAiYQ5K5g04YgQFvKJDhcXbEfVpTThNPO8Tcr52kSq0K7ACSVH4D
	 91zEF3TIlbd9xZSmbw8Vsy3NukGna6dc6d4u90xYblA0LP6j/Py2BD7/pP/9PREjz0
	 kDlJcwPAIywXh3whD5dj5x30gvb7mrGFORVum7Dtc+nhTLZlaGzAzHi8lEgnbuKhiP
	 RwtOwXxkJSesu+OsfH4OLdw9I01DAqzYObILMwHUfkXWtQKvD5wTKDXsqdQjq8BvQW
	 OBFwrFDD7nWWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B42CFCA187
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177308969362.3898.16822469601268237620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f5d0fcd7f735156dad523a2eed6440c514d390bcc790e12855710cbc918b43b
Date: Mon, 09 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773089693
