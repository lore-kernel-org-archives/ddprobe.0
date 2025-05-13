Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4681E9917
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747116594; cv=none; b=U8/+shK4hdxnf8l1afhBD+6H+OoqS0d+Y89w4W8Pc1qdszilPRUGkd9pN3XN5luIBaYtE0q0xQCFyeY35PLXsmBBqhvd0QJgcj3br+hPkIfc9hswC6eXwxCdMrd/Nsb/TJPClqSw+SlavNmXG75TxsOR4dKEYazIECA2DE0K/rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747116594; c=relaxed/simple;
	bh=riFZnTS7PpUZ+KTtREuJYD+21xNUhP/USEpSAs+sNgQ=;
	h=To:Subject:From:Message-Id:Date; b=C/JMPAo22BoaLGccUz91Iq0IDBbSwkuP9EAv5+e2Zm8uBhtzy0Z2zbpCvWqYq7fTGjLUATLKKFtl67wGoIw2NDV1LJHP1euQrwHAJZqx7wwTi3PM40zQy586xNIewCHscHzyKt99e+Vu9J4p8STC5Br1MXTW/+rePCBJJgogvzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBBhTgX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBBhTgX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A368FC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747116593;
	bh=riFZnTS7PpUZ+KTtREuJYD+21xNUhP/USEpSAs+sNgQ=;
	h=To:Subject:From:Date:From;
	b=YBBhTgX+YHE39u17Ge0f+1tsziH8u8DKTXmjTHh7Te3/Twr8WyklIr3Pa+CcH553D
	 bqjfqLJRXGJDiK84up7NHbXkdevsEN4JY9E2twm9SQehD78ODiVZP6Rj8jrA7mRJfP
	 Ld+CGJbKF5mqfGWJS9V++agCRNwYnZ479e1ZqUGEACkrwTXUT7VGAcxaa4Mh4t+6HC
	 8eslUBowyd/7J9DE4VICfgj5W6OTBxD6LoEmci0XDg9StsD0kaKh8xFMVpZEsCui6v
	 HynIp9rCAiMv0rOv2aHn2Q0X6zOBEXhb2vuSMuRACcxqqeXa8EmTBeDj/i4LRgtwHd
	 rAFY4VCB/Jt5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E53AC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174711659357.31263.13060735548947956910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39208e59ae1c1005173ef36e498dc161f111ac2d4fccba3389a17de4853c28f
Date: Tue, 13 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747116593
