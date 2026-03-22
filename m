Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C6D40DFCE
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774193694; cv=none; b=YjcduZNvwuxvlGrWhfq8IfB6MDMTCdm+qK/AwPMyzwDoFj828fVrJzmuJoUUXNY4xubLTA+ReulGRX4769VBtUARZfKZF0wD9nm0Jh3UDdEF4SOE4NrV24RXIheNZjIBr1v5pPMneGMu98dLyEZH16gzJ12RsEd+vpEUfBLzqOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774193694; c=relaxed/simple;
	bh=fKRxgl8T7cefKQ78425bew9liP2f83MV8TljBtq5s28=;
	h=To:Subject:From:Message-Id:Date; b=BkGXQEHop1mMN+euNbIQEVoryf2LtKnKIPcthrZJHC/GD92U55PEB8xVuZ7qZqd9dxE0+ycpfEl36id4PterJYuZhmIdrTXaMpqqrC5C5qudtevqiS/NWN2R7v9teFyx8Wt8jm5fK9CLpwMWGOTrvtR6RbMOS6t1ehMszXxfOlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8H8ZDbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8H8ZDbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD672C2BC9E
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774193693;
	bh=fKRxgl8T7cefKQ78425bew9liP2f83MV8TljBtq5s28=;
	h=To:Subject:From:Date:From;
	b=J8H8ZDbigdqTh242WVTO585Ud29pi9J68DPd4DdCUdSW1tq1Nudus7tohb3RcuM2E
	 E+6n5KTJSw9X4H8akvQinfv4PBXUR1bBPzIffOCzvSusTUjBT+wjgQ8UTYpW6Wl5h3
	 3GlCv7mlvoxd99e6VDsL+uf79IdtdnMOCUKchg9b0a6XQJ37HU5RIdTQqt3uuVqFTR
	 bQpx6Ihb4AYG+QYBwWNB8HLE+AEtRdVL9XLxvAOP86pzebbvv/Xqaz5IB10JZ0vmxK
	 Wt3CVEi1idncbCC2QrlZ9aDVXgoYbo4PbZRACBUrfIhp6Zo+z5WZkWzKryT+/iRb9G
	 ryMBMSL9sXuAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99692FC72C4
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177419369359.22633.3337296086705767052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 999a47fc43ce3dc0fbd697bfa21a40fd93b84a0a31094ee8a24c9e9a54090c62
Date: Sun, 22 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774193693
