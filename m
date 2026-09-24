Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CCC3DA7D9
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790293834; cv=none; b=bSjVdxmtDbvMV8TxXIJyM3un0ihFqWt+ZwUhhYXF/z1k1fO8MfSMh7s08NmetT2vxBW5/5diUM03MuX6Ta2Q+Y4D+ukg24L2935TUW053mfZSuboQttwsU3fhPAmRTIkP5AF6HJARr3Kb2F1ziyFTgHzaWm2c1NfQAuBXBfpHJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790293834; c=relaxed/simple;
	bh=CSpUDyDJskZiFG6DcDHA6jq2hI09lzSjfAdxhPD7xlg=;
	h=To:Subject:From:Message-Id:Date; b=uVq/iZzrG4xP3cCOjqBp/Do41Ar2fI6zfvoPMVi87E8Vq3nHyb6TZp/biBjUj0t4KQqydv5qw0y761+CwmEzgTE21IZp2vXk/cQRiRKCB7ojgpNZpr6W5PJz1coqxpvLt+SGWW5Sj42bmm7sBsCgCWAPG98x/WCfQ7iU6KL2oH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKfdLxBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKfdLxBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E53ADC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790293833;
	bh=CSpUDyDJskZiFG6DcDHA6jq2hI09lzSjfAdxhPD7xlg=;
	h=To:Subject:From:Date:From;
	b=oKfdLxBTE6BT9Mh08m7oCXU3ybb6BukMOEHbpXLJeRKCFoA9pUZSmfo40F3LWfq1K
	 w/Byg2YO4La3gK5MNTFrzNvaSTeN45d2CKxoH0lJ+HDmtWZXe/Z0NehKp5OWGMyg4L
	 cQltHD63GWXO23z/YYegoNQU+tRsTjGJ7IxoPojbPn1C9pWTtS1Y3cUiikgJGn9qBO
	 ODPS6ap3Y2yI1WOHfAWWGpoF7BIUMDcXBAZlo3W7zG7UE2a5JaTiWGigVpneArORwL
	 uRGcBNaQfgVk16txFrnNCax3XXdo1+i05jzk1QfpeoGh8TzaSi8kVV0qO0KiDA65XB
	 S1SxjWa60hwDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDACC9831E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179029383374.9175.998134840479149760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9aaa652b202a6153577b381faa380b0bf1854680c837b6053bac7403af3741
Date: Thu, 24 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790293833
