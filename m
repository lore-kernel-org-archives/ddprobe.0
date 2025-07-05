Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AED82CA9
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751732394; cv=none; b=ooC7pe0Z1wv8K5fUNvluU6KcErhGG6WWNqAyUEIRB2237rngBmOffKnBZgpq0JkNG2FlfEoD16VSn7OHTiSpRUeey87vIyE2gHfntv5J6cw3YWGchpPuFcds2tJIt6HbZvhaN8TzjsvcB3gR51py2lnJJZXUIzNY1SLXpxSlRLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751732394; c=relaxed/simple;
	bh=7cCuwixTm66kaMQvxzOsdhI56FlEkAuekF3lcq3Cc7Q=;
	h=To:Subject:From:Message-Id:Date; b=RJmBPehs4RvWr2f6IO9rUs2/gqXilkw+dFbUqyskPL00iSfTvqyYnya1JBFGKi9wnMat78zQXGfrI35LvEDJCqdKEUHmKgWTOLDZHsGqkzPb5DuDS9ymyszva+w+c/l82BeTxaISvGyp0wreHHFc7jhsSIw7tqcHdUijdZw2U24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYmhN2lE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYmhN2lE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60C7C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751732393;
	bh=7cCuwixTm66kaMQvxzOsdhI56FlEkAuekF3lcq3Cc7Q=;
	h=To:Subject:From:Date:From;
	b=jYmhN2lE297fQ+AYj+UKuv2OCiB1b6StSQbnVnMTl0RDuIqoWV5sDUmENx+tWukRu
	 ZTnNCVRSKQ9ZAsBGvgdw+vMGR4SiiE+mLpNCqkqqoU/qrrXPYD1+y27DJRGp95+lUz
	 U2n5IH0st4SS1bKl9ZLQky8Aovwk/A48ndKNjd7+W0G47hkmd6IiSi2YgAA40d19d7
	 NIS0LAC6Lk8N3LgBgg32BDu7opkZhQeG80t5eshdS/nfO7W9MGfcVHzonFF4rfaRij
	 mXfzn+/emdqjrx13kkJyKW4b7rQNlF63sbR7IlFYHlNVv0eUVJGpVQVsuOCYcZX5J2
	 cREmBgqKmd0DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94206C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175173239357.22799.5871626173892806428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de9c9e45592d5b4c20a5cf87257c4fc9d5aa821488b8bd3200d610d29d61adc
Date: Sat, 05 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751732393
