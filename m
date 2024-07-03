Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4335E186280
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 17:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720028123; cv=none; b=iG0AEdKVfnkyB14/85RHrFpipj13mFMDapwZITFQOBjpdPuWJDdKrnB05uHrfT6ZdKgQn3a8byjVe//OC1C+6EyIL/8o7lCxXgHV9qmgwtksisRkuGjxbZO9ng5kY4tSRT2Tpa19vxFB0iAcLcnR8upQ/+oPIud55uR4v+Nhj2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720028123; c=relaxed/simple;
	bh=sOQnifhN9fI7OI6Nv4Sk5eed7CTtPt5GA+wwqIaECxQ=;
	h=To:Subject:From:Message-Id:Date; b=eh97rDOlwwFselj+wpjnHBQvu5MjglDrGT6haLydBQ9PTZc0MX8V6sqbTsI74AtSFmmK08YgTYhjWXuZramUnt593PG0QMYP6FjdGQBVBZiroCPCRkONmjf7uMmSUx9taiev/kWEqnGRoNvC5xXKkFnbP/2C0m8YFYDsHTk9SZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQsCC/3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQsCC/3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF38C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 17:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720028122;
	bh=sOQnifhN9fI7OI6Nv4Sk5eed7CTtPt5GA+wwqIaECxQ=;
	h=To:Subject:From:Date:From;
	b=PQsCC/3JPFM3Ak0Dvlm6oeyNBzWAi8oeheKbW+MX3teqbX+HCPoQgGz4lLXy9LKPK
	 Yms6tCQg1wQHUGkqqTgo78lGPDXqVLdlPnFCASNlab1doP5jgK0fdfdr0b+iXGAn3X
	 27xt592BUbiiQWzvrkcOhu/Aims1c7AgdAKMfN9VDOWIWxA9s1k8sw++qs5Nc8jOvu
	 Pqmb3HJk+f3pzhlhq67dE4kGsTn7NUBmFc/AOwwHPTmheCOy45ve9xQeqbYHzy0k9W
	 OaneUVq+BouZ4pyui7mW5l9+T/+Oaym52o911ZoyLJfkirLmxE1l1RVv3Z26JADH9W
	 hgjMDx4vnheCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF411C30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 17:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172002812277.15440.16216575605231478185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1789c8e13ee0b7cea36ec9b122d2e958f150f4effae1de9357588f99036bae88
Date: Wed, 03 Jul 2024 17:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720028122
