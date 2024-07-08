Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8701474A3
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 16:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720456583; cv=none; b=JHprd+XF8wU49kJeUVLUDZXqiiACN+tHWa92ifYpIJ/xhPWpHR8HcbgZnuAvibPslHMIjCEoIR8kNt4zE8HFfJlrKW5rpsVR7PmTaazWBwB0jxKdPFUDwVAnLvEIQdD15I4MHpiuG4ox9TCeQCY18q9QpTBsbuOyOnPwszFU6Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720456583; c=relaxed/simple;
	bh=jmQb9bStX0csf5vNo8+9oO2HUiq7kP5B+a43wR7S1gE=;
	h=To:Subject:From:Message-Id:Date; b=STC4qhHGyQFux8Sp7YvZOusLcmeiAGyIBZiF1X+l/54fEJEj34EgMCY+rW1wAUmYlEqHreWXuW63jylLTBEz3kwVxp5LvDh59brswGVZwTpLUIXntCzG2fv7N763/MEJWh2hbwf8FquotKYzQSwbbadFpR3C3bH8cBJO6gggCv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmhX9HtW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmhX9HtW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF24BC4AF0C
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 16:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720456582;
	bh=jmQb9bStX0csf5vNo8+9oO2HUiq7kP5B+a43wR7S1gE=;
	h=To:Subject:From:Date:From;
	b=HmhX9HtWFmG8BK82JjCChKPABtZCL5A0VILi1a2oaL0tUChxFF42ZYjyCoyHERu7x
	 wMTSXDTUNKLH4oFuCgSCJ+XJLvWbf7KgPacFER9eKkLEOZ2bniMkq4N4tLxEjMStSw
	 3FSeFrQXA+O9k8fvYnyGQW47ZEfCCwS46HI3EIIUg07poFE+NlOxl7WZeVrdj3saSF
	 2JrL9KJRsCacURYPynuAR9EwkkT4VOF09NnWJgl9Pwzta5JVnK9vmV/IcHq3lwFVNT
	 Rvw+qQkOgdLd9gNciLK41tw6owUyVQylXKy4dqO8JT/5+4kAh0NJkP0bXtGDF9FHSf
	 Y/7lOzgIpACVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF63AC3DA41
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 16:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172045658277.31989.17874994295605627543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2b74768ec81308a15c417c47402a323a63c4a5ad3c34f064a27be656b16d0e
Date: Mon, 08 Jul 2024 16:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720456582
