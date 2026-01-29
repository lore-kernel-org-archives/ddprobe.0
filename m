Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193B5749C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769645634; cv=none; b=UcRQfj0wkSo87IIGhbQQl9kXeyJ6lfU9NvlGVHo7RM5UglrYpg0G7Nu3IFqZZaoneVHpldLbxyiXqCF84rOGudSbgS+9XfuJj81b3t5RD6OcEz+UeiT0l7wL1clu3PdbXPkvLl26k66y7ZcOFx2GY5xE+9013kF0VsPiKFxyxc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769645634; c=relaxed/simple;
	bh=mS1KP5DGCB/uGtBLVx+bKR98funwaJ2NtwKfE+t2X54=;
	h=To:Subject:From:Message-Id:Date; b=iF4z7cwjwpWxXcD8bGN7idohGO80eQVSNgdEalYaaBive1A+7CNc5/seK+YnkmmIzatkUPZ1CefvOPlt3H256xRMwFB7lsvECxaIonpNvp96PcxrQX2xZzSz5jXwF95HmZPk/JSoSwBHKfMP5dZBOTSi7JUPLPFkto9Os8qT1IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7aUYgwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7aUYgwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4E2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769645633;
	bh=mS1KP5DGCB/uGtBLVx+bKR98funwaJ2NtwKfE+t2X54=;
	h=To:Subject:From:Date:From;
	b=I7aUYgwuvje3qaPoI1LvwBSJX/BPkUvb0t0CNmaHByLArv2fJXomRfwxYtQQ5+Ww8
	 gUDSQW7LIOSyaQtPnIE/Wai6J9cCWpZGQd8tdrjXNRgpoI17GXVjooMTObj8nI2T18
	 NaYLZFDaU74MzVJ7iIZhz1Ws8QbVVqzwnRjo0msZPv8KHsqf9Dfhx8+jHpwZq1oYOG
	 CdYrYQttEi14WGSyyr4ExEj51EKhAeWfoujkLMbYGXD6uQkzt8sNPiBV76IkOde2DG
	 uklKqKsN/OStmB3SBv0h5C5Q1fh+gKjBgWJZ8dcyxWu88ahxlusYMrTeFs9g7Ox0yh
	 kLzPpFMrteDSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE24D46C0F
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176964563357.27109.3691731082509080448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8803abfcb47047d9cdbdd9d7fa248fcf3819462a24227322fba89a8f638b700
Date: Thu, 29 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769645633
