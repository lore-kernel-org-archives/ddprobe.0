Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02023387
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706231897; cv=none; b=qEhc2R2YmV+IZLgYNGqtx9uSoaBK8mb4OYFb1mh9RjoO2wmzwHjYzeylhUl1tFdeudqSJjFpXnRAyRK2yLecCYIQ+kpZpwGTRVZbhTIbYvPd7z5yaHwilk6ykdq4jaW5806KyCiYD9OhHqExWESFvUm9pM98ARAvPaVMo5xJ2aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706231897; c=relaxed/simple;
	bh=vmKvIoEpfRia6RRUojukBCLDlkDwV/1tX6ThGu8senI=;
	h=To:Subject:From:Message-Id:Date; b=elR2l14KhDFdY/m9Bd8ZE3l/i8plhQxBNim8Mo/hVrsWUwne3x/Sji3z0nsk+6H3j3egDcwc+YyZs/F7TQk8YlcvQ4+xCWupWfRFZgvH1oY/RM00x3oB2in2lB1lP8ikCxCjmFtKCjlP8/VauDXa75H/JKP6ULNBJlViL6qOvDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9tkbJog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9tkbJog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E615C433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706231896;
	bh=vmKvIoEpfRia6RRUojukBCLDlkDwV/1tX6ThGu8senI=;
	h=To:Subject:From:Date:From;
	b=r9tkbJog1Z2tp3xp2A0fSOmEIHADVoXlo07+Enfsq+Xsc7+06OSc3EKb/A2WxXOBL
	 UPAzNHVVIVb2AaDwr+64p+mfud2Hh7F4mm97Fq80T6mQqR86HdajqvZuu7WHlCiRFq
	 a3FvkfA/0d0PhOix7UpVyI2bjfT0xtSVC2b6ouOn2uACDVroUPJdqJf28zTVHum2T9
	 eCtDqbJZEnW2vD0lLAQENEXUPXKnXYkdEEjQ80OPAoKXMeDNkdko/qPvZ+1QPsgxr3
	 VZ1bklStcEBirD/HOQ9LBJielGGsfB2KTH+q/7ho+o5ACbHgGJyxVsdUIiHbWaZ8YJ
	 mV2jXfphUsF8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636F2C47258
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170623189637.582.3860234235382841680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7719754a05cdf2aabf35bfb4b626e8eb529e171f462940958f66c91413cef57
Date: Fri, 26 Jan 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706231896
