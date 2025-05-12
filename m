Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AD31E87B
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747015194; cv=none; b=WPkbN83bCjwp6B3krghsNK8hX9qE3v5KT3yHy4DHKV9qFD41kILiJhQeklhH1bg63+kFlCVvAohefDDGUBwaPTDkf+zojbR5WPTylBmbEUaePu6GAuqq+jFIR2BzCS2KWlC9MLKu/Fj5H1NbDXEW48WzE8DWLLW2LjGRm/MzAAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747015194; c=relaxed/simple;
	bh=b259DjcF84qGeujvJrE51KaQJlDUnSP/c2OIwl4dw1A=;
	h=To:Subject:From:Message-Id:Date; b=X+3P3RuemUH01eVOMiwEPbQNAdodtcBT8JyuV+ABVKycqKoO12uGnA/gUMDawuFL46kPdax80uILUdWeRPPQO8Ur7u7F8PApiv0ivi9hX65Tzr5yKF5z0B2BW8gWcKAxmRqNzuYURaPGX6mUVjs37tkx8Oi1LZPgHG3mYaNi3y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xn6L4oYr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xn6L4oYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C23C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747015193;
	bh=b259DjcF84qGeujvJrE51KaQJlDUnSP/c2OIwl4dw1A=;
	h=To:Subject:From:Date:From;
	b=Xn6L4oYrpFg/0wW1Zby9zNgbWhu3Rrh+y6ZqxUXtsDgDJSlpo8Rk+xbrPCNRli8pD
	 KUWQ626PZMejRkIsTgcHAEuGC59jAL9EKZPNDvLbOdhQSObQAmy1ajnDM+l/lgLOQy
	 lbsMLxsZ+MHdbwlVn+8GkwoL0jknBVNpr0OABV886ftL85icSyf7b9OzuJBOZ38VrV
	 rNHbkmpcxQMeH8k8z3I+j8FwU49Bjd/m33OwLvvsONDIPTYEVvYbK3q/B5PCg+fjoW
	 750piKeMQX564gRs0mBqKHqd8rowDQsPmwnubJEvGOoicgAEzQO1NYpgy3Fl3RxzX/
	 omQ3cG2dXnjmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940C6C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174701519357.16374.2956521847280673772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 125340be11ef2ef93f55d377f14ed3c552ef92ef46367c02e6c8241de1bf5acb
Date: Mon, 12 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747015193
