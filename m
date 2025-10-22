Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A521D2FB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761126594; cv=none; b=hJTUo4bX7XH4lri0iL3FZgrSRdWcvprs2QV1QezwO+XlC2An/0YVQSKWdBQ3xCZtUZ3QmR5md0DqKmCZqVmU10iRnHHTkt3EmKWY7KwCBgnNWu7P/ZozN3veyNpVHKIWUV5xbzT07YSOKo5jXnnmq8dzx5iOAZo1E9odDg+Bsw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761126594; c=relaxed/simple;
	bh=SbfWAfPNWst6jQZGFhFGhBU9+jeRdZugT+KNa0AawOA=;
	h=To:Subject:From:Message-Id:Date; b=QoUmzuBzQSWmeLwP6+/D0DhVwSC8uWsZuB3Lhb66m3G47wIItRfe07COQ1OaHRmtrDSnDYA16E9qiet3nPYV0/zF6jDiSHpn5o65OCuov9VzzOkSOHxSnWJ/UpxA017s9co4WZuyIdZSwFAoNCDRiOVCck+eQJOPb3xoiIvKy00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnS80hoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnS80hoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E499C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761126593;
	bh=SbfWAfPNWst6jQZGFhFGhBU9+jeRdZugT+KNa0AawOA=;
	h=To:Subject:From:Date:From;
	b=GnS80hoLH3nSOoydpUBvc2ufAPbBqXyQg7UWEJ2uRgucI0yT7Z8Nbttb9/RBfJz+I
	 clTnS7cnV2LGnNba1HLS34QZOqTXwUd59uGIIs2FSC1+1qcUVVNf0kVvQRj+84Gwhv
	 4emBb/LRxl+gWn0eZOw9y3cgcp0ND7LKhRWu1dkpLtN5107xBT5ONY/9vfg5viEQuw
	 tQWxeR1w0XHiA1y9iLR5Nr/xduURkgoHjUThEl8cpwcy7TY9U5dfWa5fDLpTOmJAhd
	 JExtFmOWebhFID1fewyG8dI1vo4BJpD+NB8jCPQ522XZRvE4A7crdwoaUOPdfKm9vZ
	 9k/6fXbry+r6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0FCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176112659358.15996.12113605703724009614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c9e65467a96cd1972d52c8f7977c5af90b2812637e652d36059f4b522c0da11
Date: Wed, 22 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761126593
