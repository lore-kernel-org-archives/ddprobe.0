Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1808830F93E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757597394; cv=none; b=RJWyya4rvOiF/AmQmm7LUni69sz6ohXJVSu9rt5TVxNXAEBa67BAcehOb6HW49U+B+gKp+CTZnjiOrSvNHvJLtUC8IWseDXC+GaQoiil/zkImBxGkD+MlCuvY9hSueR9PF+TQ1AtBKjHqe1UCF+bsG+b0dOWfoF1Ba365nBj86s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757597394; c=relaxed/simple;
	bh=P0sdXIMhu4SOyUECPrvtif6XWqp/+0tKxeHaqTTscbs=;
	h=To:Subject:From:Message-Id:Date; b=LuJNN+o2YF+SjZUIBmNodudlH21OaFRapzOjiv4rlmxuRtBs2aiuQchVdWrH2GuAMX+XOYnG5X+Uo84LS1pSSBcWiEz0tt2hngdnxK9097/cJuQoze2mdwyG2PDT7dP3I7B7zT4Z2mvLR9i8eJ4oKWxeVv/tBo1RW/vz3bOybqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZJFypya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZJFypya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEA6C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757597393;
	bh=P0sdXIMhu4SOyUECPrvtif6XWqp/+0tKxeHaqTTscbs=;
	h=To:Subject:From:Date:From;
	b=ZZJFypya613zsSmk0WT7jly9f6RCboX8tERnSl/yi/nr7KZmwn3XRr4p5v7rvRkw+
	 a+OWjiS/KlsktERN1agGN1BFGjLulo0M07w0N8jhFNWgA26Xy+d8G6UsuGZbpkE/if
	 lKb/JhZRo1i8DjP7s/YDaIybgfCeWwC1J6wabR6IzEdlzw/6k4LRGGX20WNNt0QsdD
	 A7YemgjgIW8gscmzS0/E3r/SPU3k/dJLWE959lTJY5cYwGR6LWX/S36ze/Q+MP+sxW
	 ln0M0W4XSG2x+r6WvOWIwCst1b1GIqGCp+tmCu0zeaLN8YsV0jHqaptu0KQhVvPInn
	 6h3Id5U3DEkFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD2CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175759739357.2557.15211594081887876549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfab6b0f3924cb92325628fe17321e1ca25b45dcc563ab408c1b9a4c857332e4
Date: Thu, 11 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757597393
