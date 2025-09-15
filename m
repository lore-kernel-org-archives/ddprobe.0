Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3883535084C
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757950194; cv=none; b=pGlE1d1P+LFsBVw12R2nPF0hEQES0dFEJ5KDT4iuhfZ+qucz5E/yhrDsUfnBt0dW7oW6RknGTFPp/rM2dJ3rGlCnPMQMj4o+NUQMHFAKGhKRSV6TSgDpbdmYMkyGBVODtkEchbThM7q8/Uel2E1Em3/j6zZDxwXjrQ0Dt7EoJBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757950194; c=relaxed/simple;
	bh=iSLdDF61yNkEYzpp4xcGI9KXHrGBPdi6cmoDOBo/1p0=;
	h=To:Subject:From:Message-Id:Date; b=hEron56/rynVf65A9PIV6/YmWLMTIXIdyK7ZmXZ5eR/T8/GH2XbYDQIUkXUdctf0xuLXOSAJqf9WgNeuZuqk/0evXNv5RJzfrgkhIhDcKxEfT1Yj4Mty40APQ8j22NHxDbj3LBWF96lLxHYtbRdrd8tOYHKkdhtBe2k/lJnCgN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdnCQ6yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdnCQ6yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A768BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757950193;
	bh=iSLdDF61yNkEYzpp4xcGI9KXHrGBPdi6cmoDOBo/1p0=;
	h=To:Subject:From:Date:From;
	b=JdnCQ6ytJTi+YzKUIXm478+ahco/J/+M2cIQwGkH69P/ozeQ+ZlGR0TcW3F+fDV1H
	 SdLPTgHC7EKcQ4Khtdbc3nQgBU6EJycXmz7YOccj27NZIVhfLNrKYJ5lqVA1v2y4qP
	 DPizGIjJGFZOgpZEaDNxTR4QKlGNMmPUnqK0jVrrTgaJPWSyvaoR72Tz/JwOe5om3N
	 xs3PjqodB4uYOympwcbL1FXdSYdEPcBaM9aSTlrkQbP6CCH9GBy5Cj9Us69081BxjT
	 /Eezd8IbZaallw/YjxgG9mmK04XJXX1iwpHRMFOLNOaMNm+zkLS39XMVEFxNE4Flk0
	 fN3gqJ2+/FYbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933E8CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175795019359.21280.10616408568017440506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28cfc13834f45e3a3a171841c6b5a9878905739e53f61c86879cf31d42848287
Date: Mon, 15 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757950193
