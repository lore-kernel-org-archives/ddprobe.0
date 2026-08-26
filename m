Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8AA36B067
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787770834; cv=none; b=asmhFDV/qLqYWVda3EUgVSwZ1hWGInJ7zBQQNMCCiVssNAbKK7jWjZ8mK/7el1fyB2NRrcBpLPx/qpEeyNFveoXsZ5bP0N85NXkbumdaxL48pNlR7tCtrxIuivhO+Q9wyHopLv9fU4pDzxx6dhomu+g1GmbBOKnWQcrlWtDLN7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787770834; c=relaxed/simple;
	bh=Hz3y/yGDKeB0FOuTL3gBdRfq7ZvJfBMhogm4OTKmqyM=;
	h=To:Subject:From:Message-Id:Date; b=WSJwzl3ObiKww6Mne6lX2C880nYJY7TCzGM5SWeJ0/ZUY0zixK/iuaCLkJKgQKYR72kUF2MGkAmJe68QzrUOb9nuVSp6avIE9lmfgZ7xhxhpi6Z1yAR1X/RsIqrMnON8+eg8jtXbMpePqGolBTTmyz0HM1rPO8btT7FihaZ1jo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQUi89F5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQUi89F5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB84C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787770833;
	bh=Hz3y/yGDKeB0FOuTL3gBdRfq7ZvJfBMhogm4OTKmqyM=;
	h=To:Subject:From:Date:From;
	b=IQUi89F5r7iTGybd8X6cmUBu05tB07CgSL195Uh0DW1hpObMzO8T5VCNswlUkvBR7
	 hIgiPcK0Gsr11o6z1dy8YdB+tkTEgHMG0SMiioKoXGcmrj87NckfHeO9N6vsPvLu3d
	 5rBdslCs4mrKD1odoirJfwETv6RYQNKzoR3IsdOam06lHv80rjSXv+N3rFSi0EwH30
	 nUEu7ItlE1IuaouEJ4ZvWpPqsW5nuyTjlwkRuhupZkAuF/00jjq8PfJSfGr/U2WtlD
	 sOfw79yRAHhdM6ov19Hd092O1MzsEE3vkVHn7EzbtC0pkEzG8nsU+Xpp06Fw507Jdo
	 2h8QHF6b3cTiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF0CC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178777083369.27085.6175560435516594577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374905cca8399c64fa3cac13300cfce4f2952cfd769912de5946ed3a01d2736b
Date: Wed, 26 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787770833
