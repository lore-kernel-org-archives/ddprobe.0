Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1CB16E871
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 21:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713994883; cv=none; b=MV0pqEZrYQo0p3YL4d3bMBmF6J4sRF1kSlCFt8yECtRuKp4ddHgofLK9tYhevXsCyA/WhwJ1+JX5PcNaeFKA0IkOza+QKECYusJkrVz+rzgqusOmnDA/O0ayOvk4bw99lrKvCbQ3ou2xXb86nlMDB7aFxSUeBQTwomw8654NE8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713994883; c=relaxed/simple;
	bh=mSds08gr1A1M8GerkDNrx0LSALyOhOICu4YOhiJFqtA=;
	h=To:Subject:From:Message-Id:Date; b=deoyMje8C5HxQY7RmhZm9W/gY0kD74OBzVcgj4KlF7F18pY5BR7PCzW1Ig1ODsG5pvAeD7T3roKV679tGYQBpOB25NN/pEK7vhCKcWzOyLL4xE1bgsi2r4QwhUK/QqkxecCKf7R7TfMrB94tQ/ftkgttFJRonjeMoMb9gWiqN1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvguPwwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvguPwwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A455C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 21:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713994883;
	bh=mSds08gr1A1M8GerkDNrx0LSALyOhOICu4YOhiJFqtA=;
	h=To:Subject:From:Date:From;
	b=FvguPwwdm1fDInUrguymukMF3rW3IDQPu+EE/e5pMWSSfbxNdyyIH/4vRUPV0guii
	 ndh4Ejfqf16V0aVLdLomAf/z+xr85gLNC9yze8FwUKOxHVzhzJiI2cXB/oLM0eDna4
	 iyYVrqFZzBOlzmQYwNx9LocDSao48SDhZlTYc3hiXwjF1yLqSDycLlPwxQVXSsyG8a
	 pW9LvwnR7R/xj1LFWJa2ZAvHeya9xwknpXjPNn4vSLLVOxPtJT6dU2OFMD0VMuqRWz
	 h/vG3LHAU52vEhjWnLyDZG2vHKJ9YC1lkAonQ86rS+6q/7uwKAcFn6FG8UF4/8H0rW
	 JstCb05Bvv7MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF59EC19F4E
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 21:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171399488283.31718.8169471235908686449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db39f770872748dd3a925da604ba0fe9d70e375c22ef510c269acdf7d48799f
Date: Wed, 24 Apr 2024 21:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713994882
