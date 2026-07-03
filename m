Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307941A6835
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783114714; cv=none; b=VNNBw6kEaqiuOoAihV4U72jsphMsvoT0tbNmXLL5e7sU8SHsbvfFwZukAqTzQEC64m3vPT5bGG17gk4Tny7PhX9b0hCIBe8Mfd57S93Jp0BE6Hx2ln9IGcuAi8PI1PJXX/1InBnWipJuiSfv6Q2j2t2Y0I9k5RYtL3jLoho6L+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783114714; c=relaxed/simple;
	bh=h/ue0i9BvsAfcvzN4PH5n2rf32WNJRUdbwZJhzqMw28=;
	h=To:Subject:From:Message-Id:Date; b=bhMoZHEfespZMzavPOpyJnyb7IJtmx75rkgxUp4pZwPmSojlPODA6LuCAO8l3uHf0r+7uYV/b5H4fKGAPXMStfq8cp1VnwxZNcl4aImjeV+IIHLgBqDMtIukysJiZnk9jXwfhvmRH+TtlF9QEw7lMqdPBdsNnT/aiP75O6CDaD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/lySX/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/lySX/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB349C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783114713;
	bh=h/ue0i9BvsAfcvzN4PH5n2rf32WNJRUdbwZJhzqMw28=;
	h=To:Subject:From:Date:From;
	b=o/lySX/B8zl7qvwx3UiiA2vz3ty6qcSIn/RUt2u/7EEU6ZWTGXVkKEZdveMJiyC93
	 vLjYPojSw/n5/4PEPtZersSSyH1ArPCZ8mJtkWpRuPMa5hgpRSVd5M/1i3cDFFeLSj
	 2swX3wB3G1W1zK+6JSiFx2ExBXtep3tU6xyUYS+6qU7RV+Y79Ka8lwAfvmNYUvO13d
	 E8Jx/ADhloCo4ZOnOxM+EYKEXHTlG992O7RNIUsAXGCHEPN9KGuEIoVfbvsSr42few
	 FdYqJa7ylr9+t3tMCWhX2VTPNPrhxuUjJLGuywx+zNPTXAb0YO1z3G7Ok9aORIEtlJ
	 3jir+9+sQGO2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F46C43602
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178311471368.8723.11999532150062266981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 662b53115feea5e7ce8ebf5b3451ad29071719193990c0180d0113b1a90c18bd
Date: Fri, 03 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783114713
