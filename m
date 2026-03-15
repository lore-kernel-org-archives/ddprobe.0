Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B53379EF0
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773603894; cv=none; b=FZxTMOV656ePs3qxSIpc7GlLcI2jr+CK+u7uIlzYiZCbj1MH8DfasK4mGfQ8adLl9O5jcM8lC/FamMzaFkp7U73WvC+7zdOMqy3rE+mU/cJF7BIWnwZ11l+wmVfb2CxporuWAOn0BIsJYrmQnupD9wOvjMump4ydZCcI74Wsu8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773603894; c=relaxed/simple;
	bh=fNgj3WqqJe+93t6bo4I4ufevPCF5U3H+RGIjBsHtdi0=;
	h=To:Subject:From:Message-Id:Date; b=pRYrCFOYCgkxClOXelGkL4FYlw3vY+tSF1x0Q2hrw6MUwQT2MS6rHPUB/q5EfswcxFsZUUe9CXjrXyZjHukLC+ilvy54twqnzf7croLRRpVJVjOQaD5inC/TL15edChdzbrMt459WeINevzxCzwUJ0lYKuC6ovrVRtM+PhtlE+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+hyYhW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+hyYhW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A965FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773603893;
	bh=fNgj3WqqJe+93t6bo4I4ufevPCF5U3H+RGIjBsHtdi0=;
	h=To:Subject:From:Date:From;
	b=d+hyYhW7gUtlWNk602Kh75C1c4mDSYK9l1YIfvPefIylGDc4Kh0iljnMuP5Z0s6YN
	 Hp3CVH0p1GBPKsB+VHA9G5EppaGF1m5xD8+fJM7dnSjsA+SfvGyiyP74p38ACHgUpi
	 hKJIvkOlMJ2TOf9OZss6DOpU6XkfYHcgtjACiBeJlbBedjE6Nai2hBJKhKg2GugZbS
	 KYTEVrLBjjHyaCyLk8RQMl/DmWVQjAyxtsardiazwpDoog+YgdshUpPkIuPcp8CuJc
	 uPtejNq8hmaLOBC2pRPvpRxOso90d8dFSpxQqXupDfaJQxc1omCA2ldKguqfulO1V6
	 Keb7GtFg/1roA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93137F30282
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177360389358.32396.15935352662693272425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca64499903d3601555cf5a46fa3b75ef38f0b64f308a479e92b6de87827284b
Date: Sun, 15 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773603893
