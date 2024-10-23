Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D3284A2F
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 03:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729653955; cv=none; b=sEOsGEXtaM//ja8QS3ofJ9hww5fuwzdt5ACgZh9UmMWPOSTVJXy3L0AFxZNI90HLxAi7t4/ldp8uTXD7EHpPunbEF2eA5D+LxZmteCfdf4mxNnbzjgzee1+Fn/AHbJHW47RcIVy7UmoslIyY0dJAqNrHCFcKpk76brpPNCl2J74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729653955; c=relaxed/simple;
	bh=w3TYzP+iILUruqjh4CYjtx/nJ868GgfreTfDckIjIak=;
	h=To:Subject:From:Message-Id:Date; b=o4sEXqr0cOc7LLXC867fCvmMAK9mJB/UqHzk49RibSO293ywCZsbqxwaMwCt4zGszjKBVe3cfADuRX7ZKjccuZRP1b3VHcZv3ifnOzcfMHmNfTQ3Ro6m6On49mIuafMjj3fyPbV+5IMciZBukA1h4M72sZIVtfs+pZdZpTddkV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nffISn+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nffISn+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBA2C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729653954;
	bh=w3TYzP+iILUruqjh4CYjtx/nJ868GgfreTfDckIjIak=;
	h=To:Subject:From:Date:From;
	b=nffISn+UwqVewbc7dpH1Qr0hRxtGIablO8+Ly3heGPVG2N6vC1xwLxXUiqOdkTjmZ
	 TIhN7OmIj9oQaaIAPbkD2bOaB6l2GzXHK1Kedw7kP9kXagFwzoQr3VvIrbxZUWwicQ
	 Bh7iQcBQH9Zkw3jjswWEk8gmzmgwBFb+PRQK3PhPKz6KaOt+LGHUUgX3+ZaaITOQr/
	 jdsOa/dDw0yD4185RnljPMZjzVvA0qUVJz4ZYLzuOK/oHQDTedheVzFAjAFGbx7LlC
	 Mq6Ti7/vYa/ITmGrCAGgL0PlK05BZ4bDiodOLw23OewLAXkTB6fov5BEA48QqJRIFq
	 sb0k7ppex3eJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5C7D2E00A
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172965395360.21481.9274532075776086313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c0388768c04b3c683b483b601b82025fa3e9f5a83b50d765d27ac5256ae0247
Date: Wed, 23 Oct 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729653953
