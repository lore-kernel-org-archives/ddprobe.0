Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78CC910A19
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 04:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713760823; cv=none; b=GMCC7x/ItxW2pJSIffnOXerx6IQ1yJr2uUPdI2WYpjC4LwcPkT+3oInkhn7I2OC7FoxzpaOU78arGx77fpuSL6ZzCWKMIc1NBdDULRv8rIXqsld5V4GJEWUzI87uhRwBXaApWm6DSEJueoYKxlWOg2pHX2jXIh3440ei6qf5yyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713760823; c=relaxed/simple;
	bh=SABhX7wBxVqKPLsGn0+DbaMec90GNCa8aVWKHlEPvVQ=;
	h=To:Subject:From:Message-Id:Date; b=Crh6DuvgS/7Nqs1bZIRh5IMAPOUlSeCGGU8/1asTB3E1cGD0f4jE9pnfquvWMmNXjVQp5NZk5EV7ExVvMp915HVLVcvT8Wj2OEQ/5izHO9EWLsO5n44+WGq7hSrX9azbtrxqfg7eI3uVxT6LZCqptYJUYsuBmmvi4DcmrTEKfws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1l/1ZVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1l/1ZVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E946CC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 04:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713760822;
	bh=SABhX7wBxVqKPLsGn0+DbaMec90GNCa8aVWKHlEPvVQ=;
	h=To:Subject:From:Date:From;
	b=o1l/1ZVn20YdNUssMFPqVm3SPKJ7znEAy7AAm8fnzzO9LXWpprk9ZtST8GlrM2qaz
	 F+PXgZtjDGP67Az94j6+oa096Nb1SD012S/o8R8dB8JzafFI7742mPiVG2oO+Wk37E
	 77s1sZqfYM+hDGssW/cTrkqKHPjOMomFIXfNTvWmy37DmH09+zBcWVrPrfs9O50t7Z
	 SnyZvzItV/O5Xmusr4b97dItBVFIRXjV/nNIsg7y8cg/6/l4o8DpNa6jXKMhlW6Occ
	 hiv4h6llbsq3iupFBGKsA17E6xeGm7SKbpDa9Pjm4e7ngBPjo+F0YdB1EGgQMwvvxZ
	 BUZFhY79MdZqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE29EC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 04:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171376082282.23213.2024165146995866193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c5026bf9211598388516492a9cc609b6b18a9f3b33e75f9acc97f3587be39d
Date: Mon, 22 Apr 2024 04:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713760822
