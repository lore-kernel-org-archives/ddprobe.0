Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD52422532
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784215714; cv=none; b=WyqADdwY5MQ/ATb0KlAj3J1S8mprnGjQQhMMigpibMZY5OE2VmClrnf+BiRd3Mz8CwL5SPZsv1K7DhHzdOvPey/kd9jMl9Us1l5wT+rOPKMumbCZhZb7gxPfobUXy/Fk3RCIdB3hPtcQwc3JrqkOWP5bg9ijlPcsXS6SG0Fv480=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784215714; c=relaxed/simple;
	bh=mL46Z6+ZNtg9Vy6S5wJAs3h2nQxHzw+sUCZTQR0YqIM=;
	h=To:Subject:From:Message-Id:Date; b=iMKmBhGzo1UbsuAnS0Ipgs4oEdMXEU9i9HBKemVag7bXNk1LvXVV7SGhM3lX2KfKBdxBXaJqUaF/SzXKqrTtLf9qjUyurPA/N3HgL4PCiPhe1YzUI7soTM0atIBWFZzUM0UXKXYEQUxwD0Onx2M7TB/bjz5AzlCmEQAnC3hxigY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btKeHQMo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btKeHQMo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E93C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784215713;
	bh=mL46Z6+ZNtg9Vy6S5wJAs3h2nQxHzw+sUCZTQR0YqIM=;
	h=To:Subject:From:Date:From;
	b=btKeHQMoOss7DlQ9+d0ZWZRd/HQmj9ElFtZYgyvw8kwCCWd2gOrxk6BIn1VA52h/C
	 ZDTxl/H40fPe97afjaXw0Nhiz+aXN/fFFZ1RAjwmLYuLBuHp4ce10Kqn7NzjB+QxSH
	 3QVv8nhDKPmmBmshL5KV6pV/vceHiT7cxmBbmMllXmyJbQKRSHT7nHT1gmmKyWMr1p
	 qFFGybV3kXAhSMOFkLUrKIDP3WrRcyv5o0UP+y7nXmTDvQ3UC/LWeCSn2t2aGIdrM8
	 bYnieLfU7arxwUOKm/mVE1L+rdqbvRPImcBwxkI30dQU6krPyeQzktfkmTMsAyqjfC
	 u+OOglE+2r0ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43D4C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178421571372.2930.12642052045422883876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28bdf4426ac49abb365c8b86f765c41381b5fd96af357a247b7543fb952c90fa
Date: Thu, 16 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784215713
