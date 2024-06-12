Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F5554F87
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 06:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718173703; cv=none; b=dNE2DcLBDN7KFejMuJQDE3fyib5NnbnCzsuaa4oaPBF1lSzYKNJJAwU93Qrll/K5Sc1s08DpG7h9TShJTCZWsXTYL9esrkX+0ceVpp7Bra/VIKa1H+TFdnWANBjDbTULTH1AnufuXaak+8msUGBW2MOBoPZnTx5JrWZDbu86W4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718173703; c=relaxed/simple;
	bh=9x+3f4bqHjjeaSRYC0/fyCqA8Sd39JTVmSgnJxVBdOg=;
	h=To:Subject:From:Message-Id:Date; b=TXKBlT+2VccVOVTzlgycQJQF0Nr0HltCYyqD2ZeN+dlyFbhR5VLQh8Dm1gZaRRHplgraWpHU5SjVAbYCpQIZpk96AiwXWH9knowXvT78vSrD5lL+ysMlRqumadLFhCtQaykcn7pXBsJ+LrPqZHxIPFn9RHCKlq3AWCW5jGDjjE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDG5jz7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDG5jz7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC363C32786
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 06:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718173702;
	bh=9x+3f4bqHjjeaSRYC0/fyCqA8Sd39JTVmSgnJxVBdOg=;
	h=To:Subject:From:Date:From;
	b=bDG5jz7HhkoazksGBtvLG8/Yx8YBGfmDqzW5JuztwHd4PFrsLSiHvTbz10VZPxCpF
	 MjLEiKLOyoP22YvMoZZ956JbW1SQ7GLYYobmPBLsRljTQe9Q4aH38a68+vu+jbDov3
	 xWVQ0iq3OU75r0RvHYOi6GNHcwbPWIF/V7t4u7KIRZFVVRYHv357yI8jkq3538kC5v
	 jogwEXCZMYiHmhnDXSlPb6rxepTyzb4p+aTj8kjy8Z53W38YurgzXpHhjLQiLhbibi
	 Wude74/euP6iVQeBItYJvHui4XNUaxvZvqZxXWWTYBtQ2U3Yo9azvDAE3Omo+H6QiQ
	 EUk2G5nWP4Qtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD862C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 06:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171817370281.13467.526170321581866229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edbc19d37a9c0cda813c2ba55b59eada4d9d5a55f792101e964c8dd5fdd5b302
Date: Wed, 12 Jun 2024 06:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718173702
