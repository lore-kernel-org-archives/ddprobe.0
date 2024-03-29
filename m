Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C395C1E886
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711708696; cv=none; b=sF+UFHigqKyKsPtO9/Px6OW45l9Cm7HkHApbOQecM0buQwe8CHC7TJpYOmWOwuvg4xxl/haocUdNnYC82nxujZ67Gja3hC27iEgtdmoHNJ7SkrP7unwPEY0GRq5PZBtZGyc0NkODxLyVcQmcXefJZgiyyXeJh70wUOzXFOcYkk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711708696; c=relaxed/simple;
	bh=H4GeiJCMzq2hF1WZiQuOg9DgqTAps0DvbFaK7t9I9b0=;
	h=To:Subject:From:Message-Id:Date; b=tfmAXHutUPdSxcAG7sXlUg/qp4dcueNDXlypVJUGNBugk9lqHovbBPHAiLRNM8mk5ih7qKVa6uaVgyf1MIW4TnoQUJYEIWxiv1o3O+BekvgeXtgEL00Mm5iDGUtW9h2Y+xzUepbN5JVFbSFhKBwm9S1XpZN1P5nbfCJQD5PZbOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQMuVdal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQMuVdal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 714BAC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711708696;
	bh=H4GeiJCMzq2hF1WZiQuOg9DgqTAps0DvbFaK7t9I9b0=;
	h=To:Subject:From:Date:From;
	b=YQMuVdalAB849GIphW+oD0I+iYS1XPHj56QDe5QNWxAhEP1vx4P7hSL2mc8WXCrUB
	 kQclb6GfIqIOAxJcp+etHMw6+gsDhD3TEP9fbYl38xLKrH/xLKix4IO72iuFIjx1Tt
	 pvdJBCx0oKf+Sllg7UIai8DgR2J7wEBuEDKHDrnQM4jjpGr5Vp8zr6938rKABdv2Am
	 ZSlwa7U6VZPFKEhKby37eQjeC098jQN2Wihj36CpLs6fbIP2noVmOzF1NhLFcMUJGY
	 0KZewAyu+dqbyOinXaov9/Ll8kXT05UxTJK5fqC85uy8zNIXswPS9vTR7TTuzECiZw
	 XkCiDdbOdzYZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DA33CD11DD
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171170869637.309.12231046632111265287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e77548d2e6ba06f440c2eeb9f5d6584d87389e4cc6d748fdc794c2dd1a3eab2
Date: Fri, 29 Mar 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711708696
