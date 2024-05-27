Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CD01667D2
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716843863; cv=none; b=sr6VZWcoxu4ZRETqzx6UUA2+tKk1StZrSot/bq2wqPidVpNLL2d8VODmDX4JEm/be7/9lilvllE6GI5SHVtXy0Oh/pqxlfygGfWS/2BSltGNkZ+WWK1Oh8+hJlYD3G0HEvt9Bd6IYuSLVQQNqI3AgO9oPQWiNBhDOzfJpCtTB/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716843863; c=relaxed/simple;
	bh=/BmvUXObeyEShXy9hJOLFk0znFbCIkY6gPcYTWOjW78=;
	h=To:Subject:From:Message-Id:Date; b=gOR0uYw5EDjByq2KuhH6djqTFjgt5oHSPoOQMyCECwLSzrTWnxHRumJ14HjasGPxELKVB9aRdlafqeLrRQ0LWiYSw3ufhZ0gsKiRHQA25j23K2TF9NstMAFkkXs+Hpn5lhwvVclwNAm7kT5NoBT7uS1/gAM1zrMmcemjfgbctuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iR2UwJga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iR2UwJga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB451C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716843862;
	bh=/BmvUXObeyEShXy9hJOLFk0znFbCIkY6gPcYTWOjW78=;
	h=To:Subject:From:Date:From;
	b=iR2UwJganXW4OoQJxy/H8UcL71epAXNIL8PzTMa3hZsO0u3fR/lbE4X1t6StQmZEG
	 q46C8rEEIa98ddjsMBbcERHA+QrOw5Z9iRSOkyi/k5+OOU4jpuPEigkdqoj6YWS7aW
	 yGHJIn3Vg4sD/747hFAORyslvxm5ItHMm5VM9oNr12VZ8uqCpL4NfbHNgvwAxhalaU
	 usrFVa2ncPvpc1Yy//6dlrS/wANASID28JszqGtG17nVxTXf5Q0DDlTqtDkSDhdRy/
	 kDVYcDGEVzNDtbduAbB6YBeqqVG/cWbDdsJxmOWRGkQdbMFeD73Ju8rEN+z2FichCC
	 c8lpWD94C5brQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5303C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171684386277.13239.2118459207346674136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e2c44e128132375d0dcb3034ca219229769b3d3e099d68d1be00ec752049a7
Date: Mon, 27 May 2024 21:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716843862
