Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691C53C4167
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789920034; cv=none; b=DQOnNgkZvykRU9MUW/sNwTS9v8Awb79GziAh+mMFU+7PpNBeTsshfML4nuwMXaXT3dtxMba4qxvFb0uOAxBT8XRJWd4IxDs0qSflLophvxXPvosyv/TsyQi0diIT1NBf0Lqb2sDPUJkK4BTaz+dtcQjd6UO1qTOtRUUB62m9TwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789920034; c=relaxed/simple;
	bh=78dXRqVoBAIFkSZZYDSIVUiiMU3uEuX6dV/yPMqs8Ak=;
	h=To:Subject:From:Message-Id:Date; b=mPnW9q8F77zX2hSXW/Fr7VwbH5UHW+SzH8U0dHTFdRiYCoNfH3sEUdYJ1Ys6jAlObVJ97EdkpJYQLjzBYhdVL6QW6LNspom3NR7FR+1YbV2yIzC4DL+8s1IWBMqo6EzmiM+1L24B8b1BIhBinQeHyAvXqXjh9wzUiZcniXOp6bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NY3u92qq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NY3u92qq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8888C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789920033;
	bh=78dXRqVoBAIFkSZZYDSIVUiiMU3uEuX6dV/yPMqs8Ak=;
	h=To:Subject:From:Date:From;
	b=NY3u92qqBn2DfjUOLp6pXMZrKhkJr++Lbu8GeIo+k5Eb2lDsV9fThmMf8xroJgVX1
	 +llNvWr5ljb6xh4ITTT/tur1ZTMfMgjtlQn/x9rNl0jlw6kzGjnBBZYb9hYOsylMR+
	 mgfO5HaStDe56fDBJNCDftNZuLpQFVaTMP7VcJggdH7CkDnk7zbw3uCoykqnm+goQZ
	 eMsuIsE5V3HtO4AwJmhkkwVpW1B1la4i9Ll7aWSgmnoLDjYeba8zn+tUZzjgys0rRf
	 yY7I8ZUU4+rgYK6fBAlK27Y7RFUXI+zhikufX954Ns5uBeCbFduq7qC+W7APe4bNps
	 Lpaw4ps1Lt0aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B200BC982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178992003368.7749.12923529346112707054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35afe807a638008e049753edee0282b742fc8e280009e3444ff21b83448c601b
Date: Sun, 20 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789920033
