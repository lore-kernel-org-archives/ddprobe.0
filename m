Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E90191
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774184694; cv=none; b=pDDGCii1xbT7tQwKD4kt3DIU1eLe+VAt0sByReydUizigT13pECxp8035k6Toq8R4ij4/HcgcYj2wiWsMvAbAwUNmhPY/EF5J6nukr/v+gWGXuFhyDTt5fcsCi4dCZsmFG1mSu9I8kRSVKTWXgjxm6wD4/WEc5ssgVMQTS7bIk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774184694; c=relaxed/simple;
	bh=si93rysusUJ+mUYrK4GjqWnk2CYYnqx9dDUfI9cb244=;
	h=To:Subject:From:Message-Id:Date; b=LNrpNw5npRruYpVR2XcDR+kTkuhAsyDGbl4QhVoERj0ucXRO3OXHVcmH7us+KxryEh51iXZVODdDzl4mS27QxamuuiSZzzO0Y71CsGvW1JoEomORICZ53w5jxgiZ1We793IQMYZ/i3Mc+gwP+v3FoGQDpunnibhpoTeR8FTp+fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlyvgrCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlyvgrCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E1DC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774184693;
	bh=si93rysusUJ+mUYrK4GjqWnk2CYYnqx9dDUfI9cb244=;
	h=To:Subject:From:Date:From;
	b=hlyvgrCQAs+6I0W8DmpjJFrsxNp2cjYgA8ZNacd1R65vgvC4yjaCD3N+6JXWbPZRl
	 V7tnGGOYk1DAN1WwYPxu5XjDXiWHH3ZiRiYrK7prUoTCQknsNS8Nxl9Ly4HIBTXJuR
	 JG4CLi57uB8l5APQ0uO72PBwwHKwOWyeDYqvuYfeGTJOWbwkFB6bsyB3te9DtQCrG8
	 UN6OZb23b2FtK3NxdaJtQFwD3QBE6HBj4rmDFAtjT+Oh4yHHSSMWtAlUWPdZN9QkSf
	 mTHH/k0AwmCRAmYMHbJfENtusyoBd6JMCTzPxjRDT4Ja2DFV34kykaAY03MzzmhwjM
	 p95WMYE2fx2nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19B7FC72C2
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177418469361.2528.8700183431076617544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b2c41e02e1c9d9bddedd3045621d9e71c41bc49e4f17464e914c6baa0abda4a
Date: Sun, 22 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774184693
