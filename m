Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA832BE7A8
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744369194; cv=none; b=VwDFmKivbpBlagHoaysrqgbLriq2hpWFmJlKBU/5EYxYw8WdDlMEhRrdDyOcnMcTiVv+6EkfxsF1K4N/Ql3CxUVZ0puI6sKijMjfDLTHrQOYOqVKdd4rbHiRNBpahRT+RcXV5//LR1BM3B5C813v0GvCpWc5XjQcIG/HBhLYnS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744369194; c=relaxed/simple;
	bh=h0VSiy6KFhOMLi1RsXn1yz17cwV6InvsMc6zPK1K8Gk=;
	h=To:Subject:From:Message-Id:Date; b=CunauNyyZ34OLQ7Md/H+yU9jHW1NofZdwK+TwLFy3MsiKjTgqyUGgBAv9c4fG150K3FD480Hz6tTPnC8tajJ+y3FWxdRp0xZVikmgjDtc4R0yiUXXmxK4ymK9QZoKs6qclwK1A6j9VGqqOd4UAGMvbkKwJJ0pvX8S1bDgtlFPq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xol6OuTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xol6OuTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCA2C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744369193;
	bh=h0VSiy6KFhOMLi1RsXn1yz17cwV6InvsMc6zPK1K8Gk=;
	h=To:Subject:From:Date:From;
	b=Xol6OuTiWLrcuhSgjJy528QHZVPXLOvrnqGnc5CM32U3Bo0P1hItG0F4xAT/Fb0Ep
	 8KWJHqMbguOp6yJ7W/9BJnNR9q+/OLi1a8J1iMzF3cVxwuZpXa04KzY3iMnWJTQsDq
	 Nt8qfORUWN3ibQSFQXFJATo6hHTdmaFg/kQvymnVeeUetq8azNXofo0UBY920ZcKtw
	 R3jb6DKBwrL/e/XpJzKHsoJc4ppTrY4yVmiy9CsQcuINRLvldHuINd/XtEktyZd5BP
	 BL6j7Vrk9sOw1gnIZC0196MoAyZ9WmzeCZpaoB9gEDak42NAvfnqXQHmjIiRzzpCT8
	 +noSUFP233THQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9555DC369A8
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174436919360.3588.83455556395411532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4fd9e552cdc4b917ab0a44098ad80b586c1fc390ca3067e680ac36c5b8ae83b
Date: Fri, 11 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744369193
