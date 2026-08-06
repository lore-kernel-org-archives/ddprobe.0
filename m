Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EA347A893
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786042834; cv=none; b=qAESDCy3LvHOBUTVQjitYnIUAPUNDNfYkpvq7z9S5Js06S/sWwnbKnHXWD/HIn1DcGRPL0R6kWSyLLd+RPClTRlX6xNkQH7ZEAmcZf9cJremDPpYhMPvGIVNIBde5KmqXsVIKOeIujv0YrEWrnBr6JPaOnpRMynBPjxZhcyYkY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786042834; c=relaxed/simple;
	bh=V97qpT9mHPo2GipxvMedTmWNpj60OtebEBpqq9avii0=;
	h=To:Subject:From:Message-Id:Date; b=ZEns6ZjSMjG9nssLWmODujzDVOc+a3E1FeEW6BUExE9xQE7E0/1Z1eTjC+EwxHRAqe+qKSupLplDeUk0d1YY54ZLqNN2BDP+vKHW7rP6sj0gMWhEuzg3asIUSiALcxrXYQEhNBs7MsxbUvIqupV+ADlDDwS/iPfsN14Zc5QaoVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shzjP26A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shzjP26A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D629EC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786042833;
	bh=V97qpT9mHPo2GipxvMedTmWNpj60OtebEBpqq9avii0=;
	h=To:Subject:From:Date:From;
	b=shzjP26AhJIKJadFHAmuJnvYTrVDhjlhzPIH53O4DUD+sqa45CAquNUxIdMyqigkA
	 sYNoO2pRjWRv99V4yHFvZ8kPfyEASJsmOyYcJWAw2k5hQ5du9jlc7weHlPU+YSP8zY
	 n/IbV80fKJ4nzw1zEznlcs6J/VXeU7OnwgO+RpSqSpeenw387TTlS9CxbU4B4oLrbm
	 cinWLknC3k4mwAncgHGadIXhCbYKv8ZBv7NiCaKoTRImXHG1KcGhPQqfESsnwB3MRY
	 4mGmdwBgkLfs3gaqPu4jQQ2HemBLCRwUzwrvNV+PrmBVfyyjgOjPAsbbv7zmqciCI8
	 hfImahHGLhNtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA237C5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178604283368.23868.1510843072121309488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb9de10df13355094d93a77873b2d7ddf1050a449f0f743693b5df097464b11
Date: Thu, 06 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786042833
