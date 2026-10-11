Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74EA01D9A66
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791680434; cv=none; b=LfwkMZQ9FqmWgwfsmcRPUIzEfHCxCPvLbXbzA3ml9izSc0euD98IdCLK7dCARijPBqjM8exkYbhI4+CdHuide+SLHiPyAeo4SZNnvyYOpNeYtUNhBqQvdU9yNgxWfOo6WA/tS9bODZjYY43AFEYS8b7KdaB75OkURvxUNcEbOzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791680434; c=relaxed/simple;
	bh=shASWIpnxzt24e0sOPzlvWxiXIFhU0RP5yo/0Znz6Jo=;
	h=To:Subject:From:Message-Id:Date; b=C5FiGKpFUsyNwON8lGZiJG2d7rAcIyxcnVzf5aX5sTpNjypHidwlKakfQDXXbILG5moFX8ZSeVLNG1X9z/ITIm441Cu4nJfwmKvVyW3CudBHbOp4ukDgYhrpbENZ9VrUQnnEafN8sxjOdItUyD36VBebVKSLGHlLJOHrJg6vwr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rx2MM9Ag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rx2MM9Ag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D653BC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791680433;
	bh=shASWIpnxzt24e0sOPzlvWxiXIFhU0RP5yo/0Znz6Jo=;
	h=To:Subject:From:Date:From;
	b=Rx2MM9AgfzBqiJMA6RHowi1Z3p52x6CPRiK/ASdFfQWRQ5dlT33Hl/s2rgXzvgoY4
	 r8vehCsxW2ZWOGI8zVVvEo+PhWmf8wmyKozEFOOJF3aekjTvQ4zaiGg5PT9fRGTUPs
	 RDRVDHKKOE7jbyW0JXQJOux9wNc1AAtoqoGOyb5HZUiLZDo07KW2WIoX+7Flvj6kF1
	 bHs0eh4iw+eI93kEXKKLp5JNciWYnaRIjy3mp+ajJZL+mEcsoPvDM0qnM7Wkz8J2EV
	 HiLMO8v3vrBQdBwKyvaH76YzicGRmu2wFnbGPNbZI3RUNfrxVGH10va0EmiWG4ITty
	 X0eZM8HqfUfaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE91FCA9EC5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179168043368.11617.9915007195945163817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63f00a72fee3719014c85e193f501799047f3fb2a022456a4530dc02b76ecdb9
Date: Sun, 11 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791680433
