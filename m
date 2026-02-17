Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EF27A13A
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771292094; cv=none; b=gfW7q83HfCrNbbDduVPxf995OCoG/teYd1F6stkWSCT59VmdajsUk7yTWwHCwdmMJ7wfWyWJTK0AaWSn2UbNJW+Tj+Tdscbm/y5fqv6fsQJ+4XivzyaEZJX+7y2r91E0D7U/3cDb0+D21Z81r/FYzUs2PU+U1NMUsO8Pce/zutw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771292094; c=relaxed/simple;
	bh=1t98Ps4Kz24ZH/qi/Nej/p3XDwAdsuo9f9DgWev10VM=;
	h=To:Subject:From:Message-Id:Date; b=s+m/l8yf06/EpgElo99f6JlUB2DhHbU5N6MWI1Pu+ntbJby1b47vuF+pzQANzqOumYhJVas4GiGBAB2UvOncbHRaYjw4qQUFaPh4hhWUpyoP4X4/Q7V1XLGduEW5KRxISE/Nd9shX+XTfxQvyyB1bHwhOZdCm2GfeE0SlL3xkDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DK/k47TE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DK/k47TE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFC3C116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771292093;
	bh=1t98Ps4Kz24ZH/qi/Nej/p3XDwAdsuo9f9DgWev10VM=;
	h=To:Subject:From:Date:From;
	b=DK/k47TEm3XVIgRODrLqwQ+Wz3x6LQvsLsLgGb1J/Ka4egkRcjXdNMt90w7ntyBhl
	 xacnSU1UrCOg6L873hVxxOP+OXh8GJYbwVdHbOJIFZ5ZYCnrpN3diiKFTObICIuL6x
	 mUVxMS6lyNC1WpQdGXzwSLmi65LAvf3e9oTX4VQsSYlhzTb/+OmkZ1Faq9iXMDGEwJ
	 otV1zVe+HWNLDatNr/77pwu+j8LmSU5rP9ps5NQLH4jal6DciTsMAAQxn/qfmu6d0F
	 D8hH6lg6qnwbhdBUkpYFsHwmK7QJC+W2hcYXW+is307hQlLDIyrnCGL/FlA5VuKvg8
	 0yBgIbtuxp7CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C64E8384B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177129209360.29890.17376744348005793264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e4a7e0efa1ab4aa5a41c1747f4752311fe17a5f15e7861c4ab999b2a6dfc65d
Date: Tue, 17 Feb 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771292093
