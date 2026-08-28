Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE5035837C
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787902234; cv=none; b=FFq2HAlIy3EDmggu4focH7c5C9FUJh1Zwl/LJykOn4AXGQETj3hgfhphXsSVxlu8/4glLOO0HP9UOOFWrX190j4ChIO/DPppBpfIwYxH6bXtuUUf7+9fo84eDuAup3daN7h8PBe9AT5u3B76ofVThaNxFMkmp0pQr/nfY/7Qdrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787902234; c=relaxed/simple;
	bh=HLIb2QY4gsTYYy9+41h5yY6nuE9cDv+Bokx74sCRolk=;
	h=To:Subject:From:Message-Id:Date; b=VDTxCburSgwy712RQPpjXzwVYoYFhBkh0hzGXTd6zmROdaROCCMabrSE8dzxcYHhI5hOlKondNDrdKoEzkX/IXUt1HZ+u0+C1hkbL1n6RIUurEndWsPUkncK5PKGYDqdhVw+2eKoV7RI7uHzwO+8lkd6+ChPcx881rEQpVjyP80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwoltvb8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwoltvb8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA71C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787902233;
	bh=HLIb2QY4gsTYYy9+41h5yY6nuE9cDv+Bokx74sCRolk=;
	h=To:Subject:From:Date:From;
	b=cwoltvb8YwzU4pBnejvOaRdfjZ6giGhUJ34wxWfGnKFO8SSW0CPwSM8OKNWU8g328
	 wqYOdqVnJjS1Wt4qI7/WKFaG0ROEyQxoWgTVHK52QF+OjBmfP9wzZQ6aQDZupDT8Id
	 ZYMsNgLPKp7saEL0q7W8LkMZ5qA7YiSuS8n0V7B3SJCRROxYEjbXgzjjYByFOJxE+E
	 KQ7MnIyPUrwWwAFerNip/xJieZx6vIjkA9lkPCEEHAINxhXhMDDESnEfNUJ7Pain3P
	 itr0yGL+HyJTNB65RzMQr7URc8IXqy+UEoRQfdt1oCLXYpHQNiGoDS/7IaMDtpc/KR
	 D6RwlGpuzpHww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9D8C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178790223369.20157.12491149590269274573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67496ea918508cb0f6c4e0a2ec32ac1fd8054403b50abd1b64aae948fb7245c2
Date: Fri, 28 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787902233
