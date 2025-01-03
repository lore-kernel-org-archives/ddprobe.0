Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5152E1AF0CD
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735879554; cv=none; b=lFtWaGTyfyCE285eTsaVk3MdbTPCM6UmVBI60Ncgb9+bk3pW4u6da0WxayRoQcUSyaXuyFVjSA1qJfNmujyUjb1SBuy7McNChLuR1qgWgXW1l+MD4HRkDWWAfvCnRQEFdO6HuyblOXPDayo8S3EkHwM8ACFHqEF6j9lWUUJaj5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735879554; c=relaxed/simple;
	bh=Md6ONFQOPJ2LdcYIKMkCYaej6dJ3cCkBME+zeWVc/IY=;
	h=To:Subject:From:Message-Id:Date; b=ugidFJNtx7tzlp3w1dMC4pYkPzPRIr5HRQ/oVjwnRIHK5eUBIJcAtSll8WmCV7z9ybrW3knCFEfDOclHmKx8H5XCF0UvAidvNYOi5yurjBxTqMq8363sJyJUZW/YqLPW313xv79vFO0Oj0t7juZK9VatsmiIM8L/HHn3EaSyHX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4wxqldS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4wxqldS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28E4C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735879553;
	bh=Md6ONFQOPJ2LdcYIKMkCYaej6dJ3cCkBME+zeWVc/IY=;
	h=To:Subject:From:Date:From;
	b=H4wxqldSz6oYS0/12Zh9arbh6dZ5pZD1DixM1j39A3Aq9t+0H7nk95fj/vVFWQ4F7
	 BbFJGZOZ9q9GJZRQuBoc0s1Jzw5aZqRgARICmnnyQKGeEdVU73YeIqjcmxhqUnugBT
	 2tOmdzBp8zhRcGRwWWY4tz57seFa+LWauvyKvbQeZmVBbOp+aDI8GD1Di4hSGivCbD
	 bXkf7NzaqcuEuNy6atyowLWk1sUfRPQNJyC9J36Ii6kOytubdC0stqK5QUI363OFH3
	 nE/EdRlQK87O3PJTWz4vA9zs8rxQ2aTgivmbCpTjBwxh7ObcYW8MdvTRr2ZwHyyHrl
	 1asvQv8G7gCKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AB4E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173587955358.11626.3233237195132820313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc06980a7a849a9540f4834eb548aa97a09384aa676af7bc629512670b39dc4c
Date: Fri, 03 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735879553
