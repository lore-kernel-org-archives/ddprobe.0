Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0D83D561
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767645234; cv=none; b=fBAe3ZxAMvmfYwG+0uWsep4m6gp4fZajqaF/llH32c04g5trZjMiyrU5PFC9fiweb0qS0K8hNLAnvGKn1QYQsCyflyrVc00y9ZOrWmaPX6/bmXsbUCS4cKcn9NojYDQEoahQeQpjmkPo5G+0T3l4svDQPK1GmdWfQMEedmtMruI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767645234; c=relaxed/simple;
	bh=0Pw3PcyxJCX/MyKkndicmHQ3ZF7mkev0JCwtPcJIN20=;
	h=To:Subject:From:Message-Id:Date; b=aEbGuWhK7NlV3djBpv12lFcw7hNWjSV51YmDdTmxbU8kx3lfaD5D2N/oPBJ8NNoliZCC43Q4x/Kka5RLGU5gBPk6FhGVAA3QcAkmvolMXVYrAMeJgJHk93qlC2DAqY6mOQwlXj8GolTXkIg8RO3l2PH+T8kQalN+vFWpe86/sZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pynZx7wC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pynZx7wC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62AAC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767645233;
	bh=0Pw3PcyxJCX/MyKkndicmHQ3ZF7mkev0JCwtPcJIN20=;
	h=To:Subject:From:Date:From;
	b=pynZx7wCBjc0fRegOmNkEapVEkqv9u0RpT7hpMAnJ4dSXwJn02M4ASmNdNQIrKCYV
	 P+HU4J1yoqz74+jJxc5/vsWdMDZE0gunUM6KRr3ORMbJqmcAguwgmDyxz7amrUVLvF
	 HyuuALB4T/X4b1/IaHsrPU38fAJgqDXuhxXOnhTz9gWsYvdPnevK8LSfsKjR+eRHhY
	 J0Gnq3/R7Mpvrcz81RkynBGGOnLKlzgGPpgZtM7Mlz4zQ1nnqo6mpQd5FMOuT+TzUz
	 nhyBHSS8H13qMm3lV02kEW6bKlvyO8fH6xlGJ9iqVBxHBgC01a2X22Fe7H/oBePijO
	 E9g431vACIi5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A2ACCF2C0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176764523358.18293.5774113030581783104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4e5d2b9115292c982dfddd28f2cf18804304ea43b6179cb9440fc9c73f292b
Date: Mon, 05 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767645233
