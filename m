Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAC74A0C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784852434; cv=none; b=XZ7PAPBCDKLtHQxNOEnf7SCnM50JKdSQqPLzOqpfRxmrkub9EpvyCPM5J00Rr+DfLapmlFPgWXUrFaOSZGt7G78YbRJqlA9R/TYZGAQ3QXeKbEVkT1LXkSDlrUKjUQyHuWMHtEQGFvKL106WEzclt8C1X0fRBBumbd/lxC5p/Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784852434; c=relaxed/simple;
	bh=n+5gmmQbQPczjT5g/tB7fB9KR33YGAsXb0lJJdzXVCc=;
	h=To:Subject:From:Message-Id:Date; b=ekNnYKyA7kkWqMjXE5gZK5z0BgNhpAip3C6pNEs9ae/GFauGRfVfVPgR5Ct1x+EUAIXX+Mede1qdl8UqdZWsLu9fWjSCaJYNXGJjsXeOyGSgTi2JMeDxsCSzH7vRxkjqmPWHbcnE1DO/nO4TDSSC51LjGBIhfkIIlKmULsJLzG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQHn8nYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQHn8nYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1272C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784852433;
	bh=n+5gmmQbQPczjT5g/tB7fB9KR33YGAsXb0lJJdzXVCc=;
	h=To:Subject:From:Date:From;
	b=eQHn8nYGFeRizmN+RCWBhW6lLTE8dB3mBey6u58UKGQsIr0iNeqypsrGMOtyEznHY
	 YON2ncJImmtsqCdWORNeVCFyMQKV6gvusN3zO2iwe/0kEjeLzPD97fHS44oJJrUvHM
	 0WWwxX9oSdP991zoE6orUzsdDktAfYZ+Wl+XMK/J/IgzHZVd26J7ZfXArzj0pRmAR3
	 OaplVuAks7EC3b8g9WvVAT/FneXvqC0qpVX8f2zH70K/4Dbut7BULOF8wctuPlzTEq
	 By2Bb/HtH3IbnlR1W7AG8KOjzpHu+XtxU7eIjvFdFDYwREBPty568G5wpi/4oamlyH
	 BGfiaCJj38wMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEB5C531D0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178485243368.12362.5862247081108254039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc7bc4f7b594b9c3dae3eb2aefb9de7c60e90421b665662d1191744e68d5b2a
Date: Fri, 24 Jul 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784852433
