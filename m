Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792C33314CC
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763568714; cv=none; b=aHegFgPLVo6Lu7UOSsmTvpPZgmItoIyVnqIXZiU9WliDluO3J8VT2/IUTWKT0TzcGhtLkopL7Iu+q4zl3P3V6In1iTKrNBEYB5SEAPvKKXlyzPKt+ZARfDC+UgNCjWpcdIZjgDEyiyV9nvRcrnjUK+k95jiu0f6wkXCrnUKSUDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763568714; c=relaxed/simple;
	bh=cvkaChWaG8kZpQWLlYTpPNk3Vqcs6oapunR0wSfReTQ=;
	h=To:Subject:From:Message-Id:Date; b=TfoI4Sy+zI7ZJPFbqyJ/h4wd2KYWiu8ImOGrUOH35pqsO4S4vYWohDMa1glB++xuy3uwFCP7B4WtGcSC/ct2qVfwSUNNJVnSmT3sIbWP6LcDkmbmeiYpZlp8p9HnboqpwmjzvtnTWnt3sSLYfoFxCAF6Ggytb4v32aCuwvasaDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAuIgipg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAuIgipg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E19C113D0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763568713;
	bh=cvkaChWaG8kZpQWLlYTpPNk3Vqcs6oapunR0wSfReTQ=;
	h=To:Subject:From:Date:From;
	b=ZAuIgipg7PYJQ7v5QPcwwZO2Pw9qBZdAL/OOSl0rc3X1DSsm+dAEQCjDtLvt6JZI5
	 /ktfkoIKRO02Z0m5cYa7uE4/ea87sVkA5ZZLCgDS6H8g3iZ0uOeZNROe4VZwStyfph
	 kMCpaldvY2v+qw8MhDUFygekdj1G7TdXs6BAC3MjLr0Xy4feSClxgCXfbRc8FA4CWg
	 gAc4DHVk/cm41bgEvfOez9iMgSi2Hq0yKequgiGssAxZ/Ys8ChXL84y3RdsPPJfcj/
	 bNk4YFCugkhZiNL0tNjjRKI2+pqlZhJs1tg/BzwRhJkXEl6RDIrSKewaWpZ3uBdBKb
	 qTCQMKuSBeKsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AE3CF394D
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176356871358.14202.14753464322350257062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccee0945a4f552b7f0bdbbaebe8767667ac04d3ff396b5ada40aa59384c92e9
Date: Wed, 19 Nov 2025 16:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763568713
