Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167A02BEFE5
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774819494; cv=none; b=Wu5+GOVerEdg4iAqZQicUf4Q30Lj6GA2jYAx8YVdr/xD7ugDlUB1atiaZA8OjVFzsbROhLsUypaYceMpqNk8GbBh1dGrQ5aMzASYzCm4lNAnZVk9pZOv1wSJoFzYYgmFw8c2HWPGgvhatogTv1U7bi8pua01sxsJCgmSyyXEBIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774819494; c=relaxed/simple;
	bh=ZxMJnXnj3YtW4uRixGoYiurl2dzxsmhDjlyM8pbh0Qk=;
	h=To:Subject:From:Message-Id:Date; b=KMLr1aNgt6Fbk0NYkVVEfaHalmoYwszuyw1q2vuovF/gwfzmm/zbGVvdSX1e7MxnspgCE22x9RTh39LnwOlvw7Jbd6DeCfRvG9A4rI+sHmLqaoneIEVmY3yPLLGgnQoK+Xn9x/Fb9gpPmdVqXtV0XaH9BsrrrSGSxMIO5IgBkDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNybGkxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNybGkxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4994C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774819493;
	bh=ZxMJnXnj3YtW4uRixGoYiurl2dzxsmhDjlyM8pbh0Qk=;
	h=To:Subject:From:Date:From;
	b=HNybGkxejIfttFQIAL5aPCso6N/i261QQiVEDTT/Os+mpmbBvOyJycV6cjlTBhohN
	 GXC/lAcPcJkj7a0MvSa8MjiCOVGTABtKIp7o2l/n/7sYix3woobOyXTbc3Y8+Y5lIn
	 iDdSuQ7BpAjmSaNvFJOvs/4ZYdl/iVAXDd+tgqlI3H0DvYcePScbqt//NBiOFw8Nls
	 DdicMRGaEMraFO4HYilxsuLopOsiO8iF1DfEtVKRlKGO8SSK14BoD9BwT9yuLk0IYo
	 c1nksoIIeTM7F42RQkmBSlFdbeSUXAMUWjzcf74hhxib8cBA173xju1R7WvCf/ji+7
	 EwAjUFFVxKelA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936BBFC97EA
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177481949358.10232.2971723726268537995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 727cbcac0e2a0c3b645238e71f05adad0464e209044292cefcab46918df434d7
Date: Sun, 29 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774819493
