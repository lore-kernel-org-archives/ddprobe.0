Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202CA1D554
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757850595; cv=none; b=K7ueBeQK8GUMHmbfup0lxfz/MlI53KRUXx37w2bp+2A3tjK1W2rcW+TJ7elMGRucF1nHkUa/T+McdZnahETyocfSdwciOQqAlUXHftwn/YBDTC8dP1HXbmB4jS0O+jeeAdrwWyzuldp6Far8Qeo1OYtPOD0hott8K8Jhqdc/QA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757850595; c=relaxed/simple;
	bh=P6fd1JV8QBd1qImOhwybUDWOXyTGwz9K8tjnshhwAZk=;
	h=To:Subject:From:Message-Id:Date; b=hSbrx/jbHQTwJ+P6lPwLJ59XqqmrAVdQbMCjZ90k2ChPJrF3itqwMEoj+7pOJg0/ehvqEx11PTdcwhdvLjdmJzFv9BW/nUzUd1U3/39SF7mnZO8YuVncpRU6WpzXr3QU70/jKXUIPfNi5pvbg4NtD2W3ZOf3EPxeNkSEeroEp+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUWwI1oU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUWwI1oU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF19C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757850593;
	bh=P6fd1JV8QBd1qImOhwybUDWOXyTGwz9K8tjnshhwAZk=;
	h=To:Subject:From:Date:From;
	b=mUWwI1oUjbS2asZnFmI+sc1JHPKbgMXECORf1kRbcYQ5rADQEnUaqNAP/XiKfDmoD
	 5iCTPvKguc2fv+SvPY6GyoiCg5MZJ8bxvZ4ykXXSpiYmmeuORU2RtitfciNSv47LZg
	 54P5vr6mZuqWzNcuGcBH5JQJj+Obi9ebd5vieuA/9ZFUDq0NHTn6i7Fueohh0tmvIX
	 9lauTPkkX5FxFK7F6Hn8M4E+xZHyJgYeg5Ryl4K2B05qxH+bYcvovwxqNzOaRDj9q0
	 +18FKWGzrb7MbHhBA+iAcKoKKzTStfoMLW0suRTP+1itVrxGZGJ/yY8+pXRm1Dmg9g
	 REctEBuvroFfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F719CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175785059357.20506.10987964516220610291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b3df76ebf9b850c07a224f019815d16330b79f128157e9d6815dd317d8758d8
Date: Sun, 14 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757850593
