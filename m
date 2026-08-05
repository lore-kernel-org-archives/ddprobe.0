Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533D53D567F
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785961234; cv=none; b=Lvzg2qRo+AHb4oRYiea1PGYobkr29XRyS5j43E+DUgppxdacPtPHS9dYDINs9FpmHDqOaBdmmORcpyNvtgbMOwj9x6NfdQsVV9qEUrimtiLaJRHJoLRxzOqiy79HdX+a3Ed+hQS6IyT2vpNJeZE7D9KVihTq5J+U5YWrl4cGTok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785961234; c=relaxed/simple;
	bh=kMc4VwP43f1muC+g0UeKSdQQ+M7QdK1wuDNa83xVK78=;
	h=To:Subject:From:Message-Id:Date; b=o2vpr5WhaM0x+wPDJadcAFrvAxLFzSJnuw59hLEv80NvilRcOWe+AQ9p5XYmoBzWp68NjDXNmQ+FZg1RE6kCDeePrdwD3fe4sSys8ma83f5zijSpbrvsYtFt1T5OXbUfOdBRxCn5AOVj1gQPm9xym0YnORXLa3IO8zGRFBFk4dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOairsNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOairsNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB90C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785961233;
	bh=kMc4VwP43f1muC+g0UeKSdQQ+M7QdK1wuDNa83xVK78=;
	h=To:Subject:From:Date:From;
	b=BOairsNPpIQV2SFm+55tffcwae3hsxcN9/pnHyUQz4B9rDD76dm3s7gPP2XzV0mJy
	 XjZaIXeXdgjmyxwfSqVhmRD5jg7jLTsldSdH/BcImogBAWrfD3U0Bu1fTrXXHxVva+
	 Rn9am2llp/NfQtQSPt7DaBuYG5e1ng+jf2OFF3ooJ4QDV8/SmhW1AqO2N/2TDD5s5V
	 tG2W0/a3l7zMqfLDU6hb23KkaDXKiyi4qaI4NcCkSUGyOzaPJj0AjzGMLL9vuLHyuF
	 hrcwEmo1/rqw4E6hBfDY7NYtWxAAi1dnY30Bz6v99lYQjQu+PM3SDBBhFARHEgKOy5
	 fkRN0OUq7TbcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB049C55ABF
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178596123369.3240.12371364572666037655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e8e7c10babf59c7f66aa1573e5eca510956f411fb2967fdd30b589123af9869
Date: Wed, 05 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785961233
