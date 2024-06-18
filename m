Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DC74595D
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718726963; cv=none; b=WFKA0oJwjZlLV6cTjz14YA7e9UweJOEm/oRQn11E9/e8z8GmtJcU2fR5CA9ixG3Ldz2Bj9PS1eHlkfBU1FwOZAb3EbAMqmdaMn9JmFo1/pr//t4opW0ArZPL1OiZ2A77GzysoBgzV7zBVjjayiB4DSHRfzq6XtwX7hIsFNoKEpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718726963; c=relaxed/simple;
	bh=BOW9MYvqSVLrsTUJ9SY8C572RjpKK4TRm1F+Xt6fd0A=;
	h=To:Subject:From:Message-Id:Date; b=oJy45+QwNvV7Ql9+sVe9LvyaykYZOy9XXQLQZVpG08yQH3jIqNN9UrGtK3tISNenwSRY+CAt6b63h8MZyVFMz+0uyRnjpRKyFggJ4owOR39RCU8M3spyiuvTFc4lxbSEgjzmnnG3urRVMzmqplpqBVvBrsxj0/+xv7QnT/hK72Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQlql8E0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQlql8E0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F40BCC4AF4D
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718726963;
	bh=BOW9MYvqSVLrsTUJ9SY8C572RjpKK4TRm1F+Xt6fd0A=;
	h=To:Subject:From:Date:From;
	b=lQlql8E0uFkfrgbOkZ5xLb5UGTZfliKXqvDZ7V54Bu8/Ycf3Af2lCfbdLR165e7VW
	 OpGLLGmBXG0yjNxc+F6amcOKfrt8bLvVDcQQ2ogQmVYJbtaMOnTte9kV+WKMgqiSz7
	 iq++ioCDQrTTYbnciGEmsHYTZN/zNj3dhpYhCKb3l5Dgx4vlZ9MICy+xQzWEn7fmBf
	 a5ScluXSs5s/6zz+ssfifyM6gpO7G8nnMc8WrALmi115/n9Tvnw+VQaVRfIRPGkfU9
	 G3HaMD8m+uQ2r6185BkCQ3Q/M4iOkr5cvRqypGKjtFDcyLsB13i25i9lbd3WdrUF4c
	 g8ksKxISmaUFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0392C41513
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171872696281.14267.6423148473809813473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b2965fe0c0e9ba5b0dd667c32a9b8879e30fbb84032e51b898370aae0ab01e
Date: Tue, 18 Jun 2024 16:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718726962
