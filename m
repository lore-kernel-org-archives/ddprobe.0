Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585DA3C2F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714943543; cv=none; b=PnMMVtEYJpwPr844SCvR7XmAmNE6c24DV6bV+8ovOQdGJfIKdadZOznsIJSO0FVTmbPY7+5Tdsn2Blj+WPfIVIDSSHxmQ7OECLLOxZf6wRJv53vaM7HpHjxAZJzw4qAUCwGQiP8oNb5Cb4goyixHp3g9sftpc2sr00L6FefivXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714943543; c=relaxed/simple;
	bh=SJp2u3pSa+fp/U5f8Zxf0EwjnES5QSx92fEEAMQ7C10=;
	h=To:Subject:From:Message-Id:Date; b=q3IS28c94p6X5x4g3TGwRxEvcEbmwaRNEb4Z6iP7Ps820kVrH2buusO48fAWJVumUzPGsUm1zkBzSfev9G7QaBmBtL4oCCKdhy4L6SPmgbKkZOfnPBTENRSzBWbWzWyR6CAlWq/+hd+gmdxLJbSKsSH36kB8yEhi1O4SIrWKXQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YigE+d9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YigE+d9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB07CC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714943542;
	bh=SJp2u3pSa+fp/U5f8Zxf0EwjnES5QSx92fEEAMQ7C10=;
	h=To:Subject:From:Date:From;
	b=YigE+d9OB8Eofkjjv4J7+RMTaK9U72p6QymUH4mL8pQrCUkNR3kTC54C7seZWGgSa
	 xyDlgVV3+bDCz0t3QFSBo6z80zzo6wKgDJd5P6EtERKSVWPhJBjTtQs9zfcJ8oQThC
	 25HXp1qIcsK21kFHBt+PkSbtMzI37a7746FclsOx1A86SFXDyyKfYWJ8WeqTedmykD
	 /gVx2M1YDF8R9JY/gAhZNgzcUlMJgzlV2Dj2Mska1cL2tPv+K0wsrxqRvC0bx54NBK
	 7MZyaqh4yKfLlcy10w13eygdZzAXQJlryvSdJvb0TNVcBRj5FTmJ4NZlAixn/4LCoD
	 rMmMm1YqVNodw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3258C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171494354277.2770.761395397751765119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcbe47ddffc4375247287e111f9dd7e8ed09066ff3c1f8ac4dac6c5c7c8b3480
Date: Sun, 05 May 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714943542
