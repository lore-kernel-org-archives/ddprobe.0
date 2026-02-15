Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2B816A956
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771133694; cv=none; b=ZQwsIWktuDHxdeHsdJZWMMyFME2CyM1lhoIBN5tVtXjRj/+GAR7KeK6Ys8zM7nFFYuk4UvhiFkwR/qifZP/ftT0HC4WQnl06I5+4yA6CsSaBw+6cSHQHY45dqTh08K5t/8x16Q+XwjJ+IkoxrH/NthOWIv9J2RarwXKzqR2nvBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771133694; c=relaxed/simple;
	bh=jWqjfzCyWx5sM26U4SF1tmuaHV1/6EnT65/Jch1Ce90=;
	h=To:Subject:From:Message-Id:Date; b=r5KLZeth05FOAQsTRjUV4/PXN9xDZ1kEETszYasAMUWZYC/TazGQQoBw+kN6JHT5Che1g1BZCfmh0HhsopZYTm3NFzp/fW7/bcIyTGpbRosBqbUBtERvDHgxnMZPQWaXHDyYVqtM21lNnA7gOwSbjh+k9lXmnxhoHixgVtFwBMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ti5HD39S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ti5HD39S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D48C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771133693;
	bh=jWqjfzCyWx5sM26U4SF1tmuaHV1/6EnT65/Jch1Ce90=;
	h=To:Subject:From:Date:From;
	b=ti5HD39S8noC9trhQE//FKJlNcne6DsEUk8uEdxl7w4U3lquN2VSBrtqHo/VzSYwk
	 wQ89XkrJDXMkIS5YRy/lL62muqJH709EIBP6PzclHQhi0kkCeyY4ikarJV4HyeLRBO
	 nMLVk9Z/ZH1j60KEZA2MHdVEvJs3asFfBpznyLAI+qgxQXK58AfSKzLdDaHBmMCUd2
	 vplxGFbxQKgx6NFp4rlqdjyvotuposeTTgCFwMVqS1qY220L1PB2nuOVru0YfK1Nyj
	 Kp9kore3QV0f4F5vHAIlRjsv0PN7lUwIXnV/wqJ9NSjPPgSlyB+g6wMOawcQm2WyO9
	 Phjn0if7oKh6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2B3EF5868
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177113369359.21146.1588055594141328272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04230694cf3db0d7a871518cc587f6c41f9cd50d5e44627181dde947e50acec4
Date: Sun, 15 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771133693
