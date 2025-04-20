Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3081B1E47CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745155195; cv=none; b=oHyJANm5rDGrcsDtm/S1m9nzerSxVlkIMCMzqNZ60NFn/S3TLPolSgLyKgloqPq9hEdf5jpJerMeiaao7unz0Y/cIQg+xSkBAlnhGt5tJMBNo/TjXvPU3ZLPBSaWM5NMvpAXF3KneX2eSyz32L/b4fP+bHFhirbYosBku+dOURs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745155195; c=relaxed/simple;
	bh=4XxzHdGZUlYocULNNt4r/+jqrAbsl8FmBwkNqBgSb0U=;
	h=To:Subject:From:Message-Id:Date; b=dCPANRE61wzTnHZl7gUKQ6askOH53BWguBo3tF05pKLjQj4bVw2Xc8L105hlFLLu9KVByo6EWNlr65XUBj5tCTtRS3PywW0x2zPrM2087M0s4FjtDpgevvpVhm6XywU71ltRYFLkg2iHyJYaIKzpfXaGgBbbUbqYO4oft5zVwOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0YTrD2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0YTrD2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A125EC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745155193;
	bh=4XxzHdGZUlYocULNNt4r/+jqrAbsl8FmBwkNqBgSb0U=;
	h=To:Subject:From:Date:From;
	b=A0YTrD2LRxttonkbiFr1xY7hM++qdjSlEX6ROZu0b9C67wq5+EAnYv0AT1KyZ8VmT
	 1pMXVfLCLZHjYv2iHa3y9VbYbUfRifdqEJbTgeQil/D4OL/Jt/fAMBYototBqU5n1f
	 llOQ/TThC422+Cg07ki9JD3DHBLG3mI0byVz406wP0+Qa2FHxIA0IcBBFBJ+J9gNY6
	 O9p271bLOvtmXkark2fn8lrp3Woh2Y39XDRdK/8Ofy6rBMR0KeHjyaxPs6r0NlkDws
	 xkMqQHJSquec2hRCOOYkLDNJR6HaSHNuh/EsQRilckr0bqaClfNRYCtTGMJKQ29GJl
	 rqJexe70JOhQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1F7C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174515519357.27120.17537990696544487688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 959181791d63139cbb10701a8cadfd3861e559e0d26e3024ff168672eed7ca01
Date: Sun, 20 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745155193
