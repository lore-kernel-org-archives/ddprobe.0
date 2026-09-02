Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485FF4AA00E
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788366034; cv=none; b=Ql3okD0hIo+lwEyo+W2k0w6Tn8A32LwFgyi/7HcOOhyUUCUPiaDIlNPir0aaz9SLUs9lBCuefXASARHS+Rq6zmZrknXrwHVs9nA+nABkgcEI6pj8foNnyk1AvAWwpdbFeJy3EejkEJSfhlsaTeXoBjRNDfpSadJDi6crVCujqO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788366034; c=relaxed/simple;
	bh=D9Xdi6kovYI4IuUOWNmxE1yUmZo0+liAdjFLY5yuxKE=;
	h=To:Subject:From:Message-Id:Date; b=NOOCVchsBfSWQ40KyjkHMZpzFYUykKPvx5Txb4LWH2nVjpBtV5ViUjlxvoQWYD8rRV3qibHfnc2GWBlEBMjlmUH6/eNhZoxj52H1EHSe7TDC/NebonQF1Ru8rG8+kDzWfmKRivlIc39e1GMWgE5OEpsCFGQgvota/4pNJfWTSIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVAOxPEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVAOxPEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C186DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788366033;
	bh=D9Xdi6kovYI4IuUOWNmxE1yUmZo0+liAdjFLY5yuxKE=;
	h=To:Subject:From:Date:From;
	b=dVAOxPEa0kUR922vCVaUTdeHJWaXVIwH2nZmxeklR+B3SrVVUT8rE/Aee+wQAbgCL
	 /9Qj41TvJJW9dz+OUXMrq6B/v9YMNMXIot9X6Taonfgz4auxUYj6LM9m2MP9IErYep
	 3cSvdbkEw5rVMwxscZ0Nw06VICL9dEAy53ZizMLvbvT3Ufsu6zeq5t+zH3zIlFsHqM
	 QPt0E54LXcyWCW0yBfapfIUoOB3MX1Lk3qw+711qmIAxaSdPeHRjZXK/6VZEdz3hH0
	 daTphTtMeMBTxkDbf8FfiYOyl39n6HmD1uRXKw+zaVHJiytofxwZZ59PD57+i5S/Sl
	 BiEQr/8ynatNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98D0C624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178836603368.7357.11610560545832393081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8d9e24948cc724d8b69e22a3819d4e34451c81099a38ad6638874e675d6d74e
Date: Wed, 02 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788366033
