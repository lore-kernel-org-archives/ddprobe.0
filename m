Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1480730E856
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765315974; cv=none; b=JgKCmKcy1XSfctsuuqsWQqEui3bYSMWL4PvivULyAB/m6D9OoAt0u9KU85j4ZbD2VHWU+tQn/uG4oqKlxwnVWmI0tvMJVQrVr+t4MP+CKfM9A+HQqHP8OXkXljgqJGNB4MaYS/xgm8fqk8RwL0D9bI92jJK3J8czdCYK6Nk6GSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765315974; c=relaxed/simple;
	bh=ZccYvyYhlrzMi3ajPqazBkuDQB3+rEaiTDnmp29RxJo=;
	h=To:Subject:From:Message-Id:Date; b=RhA4ZUHx6UTQqSBEwmIFzmSBQRCYahzUuKIUWBjFWMiWze+1JTBjcuL18GODFLbBcV58uCV53TsVYr8bgEH0/5wE8bCMD00ja3nL70PBoixN6f1TGHkG8wU4+wkNatr9UxRcG/azeaHbNQxj6Mpp/Dcm0I25jriMgKiavUV5ecg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTRQkU2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTRQkU2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8749C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765315973;
	bh=ZccYvyYhlrzMi3ajPqazBkuDQB3+rEaiTDnmp29RxJo=;
	h=To:Subject:From:Date:From;
	b=eTRQkU2Xel7rQRjugyVO5vrR2gVDUx4jQc+p+M1Ab8tMuuMhL39kwFvWXOcQsqew0
	 61JkacYJ02uKwhDyUrcjYZXDmqD+XVvxr4t8T1jZNCdAKyiQGYlbOuASAXng7WKRFl
	 B5W5WUiL7sIfL/7FXcoKVd1gkXr/w/SLF7mk6gsEomMmSkjL9woT2ir/Or9W+ETzfg
	 QW9OP056B1PNj1UYjld2XmZH5CgsInGQSsJsOlIzOCCtNeCLav1gSbWY+pVWNP+CAk
	 SO8Peyx9l0XSaO0d+5NpksOD6fmhNPRHU9opWtPg6A+UtMK3UwrIrzkJaKNNPcUioT
	 g3EDoBLXK6dUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F53D3B994
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176531597359.20288.15307088766404420885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d227f5b4728c3982b269b0937ff70cfc0401b49f5af37e9cf18799fc92f740a
Date: Tue, 09 Dec 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765315973
