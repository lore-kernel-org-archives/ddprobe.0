Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB677351C06
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787425834; cv=none; b=kjT/i9r9ZQfUzqliMvlu/pZpWj3tNAnyFhl+Sdfi2KDlzEsE9Gwyfk5N+Sj9QEkS5szfd9Lcd+hohFMU93cA9VpQWZ4/Ik/BupQ5Xrwc9sSuf6ZSWdDNYoNtux00wsETzbjxbCLKltry5dzbr67BhPIyGD3y70c3Ma4ZQl9rkKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787425834; c=relaxed/simple;
	bh=TgokBt601cFiEzicygfSu6shq/9KeNn6SzyP42hsHLI=;
	h=To:Subject:From:Message-Id:Date; b=D+l7BjrVfmoAnqbzypCveY7k28T67OmthXuqnsteovHELKNMpEN1h6IDjyB6vHCsSEjFbzLFsPqFyVvh3bFMIMV19Cj4TOPrWPrhA9eWeV34Zh9D7Q7QXEkDYzcZYbEAma8wE6hSzrzXHCb/yfPkvFmLst4SWVozaldEgrYW/Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bj3aFsmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bj3aFsmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFAA5C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787425833;
	bh=TgokBt601cFiEzicygfSu6shq/9KeNn6SzyP42hsHLI=;
	h=To:Subject:From:Date:From;
	b=bj3aFsmqnYOsP8iDIFLnXtg5NnUVLmlPvXs/dU47YGoyG/F40/L/9d7MhU0cF/uaW
	 jVluhD9Y1DR3Mq4d7x6lFf3HsUocE2kwQC/SyU8dZUeqg40gowf3M8MmD7rxOAkItG
	 /+WajkYwDlYvl15wv45AXn23SERFa6A1kTAapOzfkpdFzaJ7iFOYcYJGCvheXUPwc6
	 kfTKQ3VXDkYMvN+JuHOkvbljw281r1X9eqDH3LhejVAU5Jr3NSU56NVcfsmwxmxZLN
	 Ulpj8/6w+9UfEEbpKFbjO38uI9NcDDpkAyB36WrYeFJyk3K1Qt8+xwHM/gwzBnuQaL
	 NfL5jL2QkD44A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CCAC5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178742583374.24629.11713146149521372891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e340bfffb887a1f1e8594cec2bb30bb8fb6dce43eb1877be24687a96eaf298
Date: Sat, 22 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787425833
