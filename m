Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD911EE032
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729512354; cv=none; b=fQDJKz7yaBarnFLBP9qwIQDOZJG9KTqjqlX2t0yQPwZ6ztqPWTI3gKmnjhLWG3+XVUMEHXxTDnzkwRXiI7rfwrkj59BdZ28FCEF/3fDNeQm0gBAhRXfekRtDjcCJ4kN4qRfH9JlpNkybWxwrZgz3toz/uTXgvvsW4CnzPm5vDeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729512354; c=relaxed/simple;
	bh=5l0l3y1thW6XDfwOhkOcvfR1DYR6A8J+v1wU87c8JFE=;
	h=To:Subject:From:Message-Id:Date; b=bkJlMz1LKl5A4WQx9uFMrLsYtYI1GCkK852IngMO6BIE5YNhwRMcSkMm7hzWF9spInN2aSZFJWcqQjhgITjwCKVMyZNgYb0/+I1obAuywac8mi509CL7kiTIy8+8uM0AEBY7HS3BwiYcomruqCZFlvtFxJFgV7blyDTfBXh6Isc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljs6XIek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljs6XIek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78C7C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729512353;
	bh=5l0l3y1thW6XDfwOhkOcvfR1DYR6A8J+v1wU87c8JFE=;
	h=To:Subject:From:Date:From;
	b=ljs6XIekZYzsqJOuoZsv/Oi4QE5RlYemsu2AYHTSh5un09ys8uIi3Xdvrz9CYgTDd
	 PUCLS55KZg3xWO6mvmFQi9+Jde5r0pNiADguMD9VmRYNDQSblWTCF4srw/7nTBXQj7
	 8Aqi0urGOmPWNBdu860TnZHk+vROB+vplPd6WnRhjYtHedbZqK9prePP5VKW1vP5dG
	 qiPHKKxA/RdQT4kaIdIReX6py+0/6HJ5VvfNJcAd0Y+9VpwhC2tfamVfIn0RGm1JqY
	 mf0Om28AfW8/F8+99bNL1FcSwFf5B2n48pdc1MxSy5mckH1Y+x7SjmRzaBSXJaDpKx
	 hmwvbGNXSfDJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941A3D15D83
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172951235359.19353.16795917910446342678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31acd89535e8cb001f16b0c19bd002590e298796856ac3432215719fc8e3172c
Date: Mon, 21 Oct 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729512353
