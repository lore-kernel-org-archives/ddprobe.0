Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAF638D3FD
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780958674; cv=none; b=KLfaz0waAqOAd35OlkgSCJcWc4E+pMPp6pGqOUZCNV2R/iKvxlIJAw+BscsoR65Mpav1OLEBOUV2nEeL5D5jTjJc6VW8iZvhYCCevBnP3NogAdFSYBajYpxXfTWCh01JmXJZygsy7LNdMhX+a/oKNF/8BSdoIa2a0rehWEPztr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780958674; c=relaxed/simple;
	bh=PMahlAD7U0jLE0hIMigglwFWHUnRIGA+JaOMC4Ceu1I=;
	h=To:Subject:From:Message-Id:Date; b=Zok1w7qY8U+0l9cawHbsKTN63x3lqUs143lRLqqFOaAbL82GwyuC5/IXf6ujI29S1uUZC5O/CgUapzUTnhCi4F3cIFqiTfPs5qYTHsA/J1XEMF+Wc0GOKXtisd8e+ADWw1guWCe067wbP7q+NRJHmCOdUbfd+KCJ0fJLukt0r0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twpf1EgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twpf1EgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1548C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780958673;
	bh=PMahlAD7U0jLE0hIMigglwFWHUnRIGA+JaOMC4Ceu1I=;
	h=To:Subject:From:Date:From;
	b=twpf1EgWSQcJJ+4/9dntscmX4bEX/c4nOeI1tB/VouQH0MvAV0mgY5ph8j4KN14e7
	 +UAEU2qMFTJpfRtGRimGUQjcCpM4K+v16nzST0bLqyLjEJ8KK3g7fl/CT8ijO8tP/T
	 fQzA+22E3nkDDqtqBGGY+cm5bZi2wwBe3EilhAYeOsMvufgO+soAfUw2Fl4o+GG+M6
	 IPWXnr9XWLLMHLA5W5G8ckHHuFsyKXCQVLagfVeYF4WB6Bbx8HwDlyLet7Bso4MYVS
	 AaRY3dNYTu+1ntNkhj8+ZJYPU0z+o+/QG2qvHAD2Cr9YBKrEqYwbLEkXAVsqx7vc8I
	 Jmop5ZoI6vOuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B58A3CD8CA7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178095867372.17296.2802029844407673028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b034baf3668e0762ec1855e67747616e3b2063cdc1d0e94f78c04683b4a319ba
Date: Mon, 08 Jun 2026 22:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780958673
