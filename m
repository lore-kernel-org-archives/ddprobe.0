Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F7C5307481
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784125114; cv=none; b=jRP4VWbORktZ6PViq7A7Zzo50oEcoz9fY3xSjDWz8oX1TqyKxcTxvgQGCoBzU2A2KD7YwNhSFNKVxsK2UL0EKpKRVf7lDi9JSUIRf3jh0euMmXy7zpjd6IhSpyrwL2BTCB4M1wa46e/+iobO1zdoNE6srv7aVFnZji4R0FdyoOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784125114; c=relaxed/simple;
	bh=arUavJRubJg206XnmP2PDlhgl6gVAL9KxJW7feCIa14=;
	h=To:Subject:From:Message-Id:Date; b=Iwy/1tZXe4iRziXPgeSnZkALSFcjKWCWqDii+pwIWtPeCD9Wxmz/9nlSF3jW2UErsMhkvXJOmOdqvethiXMOaZM/EzFvVukZvRy314OcfQGQT1kIAnogfvcR1PjiLnVu8TfgTF0Gy30kU5IDRe5Erkr/4OvRRn2d0aQmJ+f75lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1KwXD8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1KwXD8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2384BC19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784125114;
	bh=arUavJRubJg206XnmP2PDlhgl6gVAL9KxJW7feCIa14=;
	h=To:Subject:From:Date:From;
	b=m1KwXD8Y8LTn+jZw2s4P0r+dP51eLb0URQvf4XTV0A/5qYNOHQp8AxTnDSTBEgL0X
	 +1cU/qL1FZwVs0WMgKGQYh2GUgpnrDaSZhORt7j72JO6hElYW60rvS6WLyCyEIKSXk
	 BMjOYKcvfwQuXTSO5WDQUSi6ucO371zzxX0mcK9DDA+TJZayUjHjVW6WOjVYViYCKk
	 RuIy2W1oIEY5EubIIvC8ieZxemky3YpkV+vnNEM3rldHsHDuhMkZ9oNbV5U96xZUTA
	 yIJBzWZPVh7CGKRoIKE90P3sH1ikkTpaCyl74z7H54cxElRZoKbMsSoLchynMMZwn2
	 5NHLGg8hGling==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF24FC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178412511389.32096.8732566563974693435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61abfb699517851960807024a4a5d38a2f9f692251b1cbdebe757199845cfcc1
Date: Wed, 15 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784125113
