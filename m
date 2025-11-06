Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1954B2745C
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762400394; cv=none; b=TKhkrPxnV4qjaOB/kqT/weo8Rpunw+zH2/WTGr3Dcm3Q7xoT2/D8STM+osZrZECoSorHbd2OdT91vE/gWBatr3Iu77x4Yn0MXXDnPwWqIiG5BGlJAEv3/bvKhgMXxyCbI5Z/MyFhCQ8znQmr6LxLpFHSzNvjdkj3qsqhyY+tfWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762400394; c=relaxed/simple;
	bh=dq+TjzmhJlNTcotGStgxhKBIl1MRnEI5DFAuNa530FE=;
	h=To:Subject:From:Message-Id:Date; b=uJ2wADofuvFzuxuqPDCMlRDmTWymbC1vwAWvD4xj+7xL05YtPTWshLxumInqFefuaje10YSAodBL/RjJyI5MF6fXwMFFTPUOqRr6/o49MLqJGiy63PgI+N0Fummuvzr9AyFpfAkabSV09yRtwlGpkeEFuc159LDXpVC+xou2pFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVLEHw/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVLEHw/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6886C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762400393;
	bh=dq+TjzmhJlNTcotGStgxhKBIl1MRnEI5DFAuNa530FE=;
	h=To:Subject:From:Date:From;
	b=cVLEHw/zCgfAUEWMaO/ajvq1tf9PF6ZbB/q8QHkqmU/r4n20NeHo33TKbC9niaY70
	 3lrIgd7Oq12Yn0jHjvTkCdB9YiMylyNZcmCWA5ik1rmMV6RWEswJ+AT0BGb08r9rN1
	 cXSKFg70NPadkt2g+BD2YphlvnwWk6eS/Ba6XFeOSLbx87s93X8W/K9NnIeIJi5B1n
	 8Z8BHWK6n2JZyQQcVX7UAXHRlQI+yFXEWPJk0Dxt2VvtImn8qcid07q3U/Iz+GxVKV
	 tAbArWCTYuR+DGhb0GpyNpp/0ZeJfjN0wYuqPvaoZQuAMsHt6pC71J24agfDFTgDdN
	 siaavGcHeS5zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D6ACCFA0D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176240039361.18529.14194286115891351098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d58a8dac421e84d07760b6a2875889f24d2ad6e966a3e693899535c6f75d734
Date: Thu, 06 Nov 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762400393
