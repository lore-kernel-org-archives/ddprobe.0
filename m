Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE1F309EE5
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767704034; cv=none; b=OkIoOOuAeL/yDQaLjpW7zb+xMIntVH9EaIiAlgbkcDlTisaaUJTBXmgRhb1Kt/cZm/t+6gl6BW0Q6jFx9+L705vEIBCqv74wpuNqzvn3Iwr40jhsSusHSSuRlU3QCHTTdwBU55G5rQTiEV939bllcpyDLmJu7Yv0J4X6b+6gye4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767704034; c=relaxed/simple;
	bh=HCdIDsMzNlgrGNiA8/9gdOlY0k9Rs9EdcYcMqkwUBLY=;
	h=To:Subject:From:Message-Id:Date; b=eRWiglfNAM8xTkMK44qLFaDQIW68NQl2gcY3fBBwAN6kgukcIXLtR31M/+e30WlMR2mhNXGQyPi9d8VyuxAvog9T6DjML18a3UJuuSnJmuEcBpo8ZvhTpfzz50y5IyRWFQ/o7HdJFlSyBFvdrvzMefIDIgCbucbeS9Hqu7zV0ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSHE1MQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSHE1MQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F437C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767704033;
	bh=HCdIDsMzNlgrGNiA8/9gdOlY0k9Rs9EdcYcMqkwUBLY=;
	h=To:Subject:From:Date:From;
	b=FSHE1MQZjBeSyep9RMMx6cNt9f/fKdWsMF8m7NWHVTMY80kSRYVBz0oZBbttNog/w
	 kt2QEDMOHJI2s970lsFUsqHVidBhD4JlQzuPtlcjERWwDx5chaJqY/MJgQMFtROjA1
	 8QGigBvZgT5nut7B9Z2ZjFOlTtCk0bqmGBOMUzP16B16OIm3wwZvXnxNZ8D5uU/LTN
	 NNTNrcLA01coN4AFWCTmeE6JFwSo8QmSdB4dEeg5pxIXr465IUIPEc0hvgMFs7JOLT
	 KejY+QZ1933G3j86PJcqqdEdWZAmZc5HYgy0yrOGAHXhlniBdyrPdN3/AAX6RLS4/f
	 enf7uuswq5kUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA1BCDC192
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176770403357.1534.6008688498503653694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78efbd8a725e6354e2327be50e491fb387eed16730e172ecf94f247718fcb164
Date: Tue, 06 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767704033
