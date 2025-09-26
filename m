Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2131BC58
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758847194; cv=none; b=I8B9ambplbnCdCQilx3OM4S+sKae9cRxYjpM1GrTOULynjVz184OmT1fiMBUMGw9n9fucRi5FAe3HLUzzdNym1P+2GPcONbGFw7jzVbNnkUYH7vydixCHtbc0jJoGG/BkqsLdPIvd0xtDwkULs9/8p+oDZWRul/n21MD4mN+lB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758847194; c=relaxed/simple;
	bh=jtiFYGfw47TrsxL83ZZmzl2NyruPpFwC2kVjnpJrOsg=;
	h=To:Subject:From:Message-Id:Date; b=qTscPPOabJNPFmdljVkjPUfhuNz6SXfqCa0tU4vph1Eva3oYxDWdOc4MBDRlIMEdL70KUzU1I+Ag58BmxPRy30Jm4pGO6ACSG7RM/HKypmToz8jYEJvodvbt9cuLEzxsE02NijM1PnQeuiX8Ay5cQm+Bmi7dMZgnSc7sXDIO1MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jjfj0Rd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jjfj0Rd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B92C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758847193;
	bh=jtiFYGfw47TrsxL83ZZmzl2NyruPpFwC2kVjnpJrOsg=;
	h=To:Subject:From:Date:From;
	b=Jjfj0Rd4197lt3C/S1XJyuy0LOZVFXVa9RLvq6d4CMLP+UpxGIxLljLCly0KtlbSb
	 kKedoyH6gsr61xucJYR9dcRd1uVRQ0P99iyxZtHhKO+/MlkcC+2zPUgY4vx999NmBj
	 ccjEBLWdVjftjWKy3wTLxyhfk+3MxaumoHt4SjtGbzIstYTVyWedbgiYCMFctHiF5E
	 F3CP+5qQ1CEp4i1/fhygZ6FL2b4WyEahTIazzxKqVvKjB3/4tIJhws3Ihj3feSnYcq
	 h9IroHdHDHR7MyR+Q9gSOmKaYYZYl+oR9yaT51JoBS0FOfP/00F0/rSVd4O0+HRB65
	 GEVqqBN2eQ2TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91890CAC5B0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175884719358.750.11303747532273763877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3620d3a1a39b8b08f8ac75edd0233013a178a02c96880bb838a77ed9fb6e47e9
Date: Fri, 26 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758847193
