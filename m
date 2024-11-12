Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A35F4C91
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731387354; cv=none; b=CeCaqiGTyFOGQLC32x6+z54E1XW6p+jHv/Gs6jcTX42OGZy3OpNRtkFjgMudsQamGnpn05tzUFV6eoKcNvSyRBbg7CrLDxkTd9j8vMP9gIPqcQ3l2P/b7LxDOSXMiIxDtjCDriU8QMCrzdP6MwztwAcSUrnkfvdYB2rBuW72TQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731387354; c=relaxed/simple;
	bh=HrbuTC7mqpQd+Q1pgcxXIhWvnOpiV6/l8okaGQURVZM=;
	h=To:Subject:From:Message-Id:Date; b=R4A0MzGPPffkJreXU7Ppi/lilhHKhRumMcGkubkHZjcbCizE/dulZxjCVwbYVdpUNCeRQBsRrPxThXugdIcTKbCTCHhcgQWUzB+9sFWPpx5M6Mq/YdiXQcafEVAOBTKo0YJT9Gm0wSnbHye57eVE+Nv6MozSxhvgezO6usU0+88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ee8TRNVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ee8TRNVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3289C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731387353;
	bh=HrbuTC7mqpQd+Q1pgcxXIhWvnOpiV6/l8okaGQURVZM=;
	h=To:Subject:From:Date:From;
	b=ee8TRNVhY2W7tEmFrJMmEJVK0qav10w4CdDzFFi+p6LYdP5eTqaTChsFCX4JLvnEl
	 NJtypw5eqoGOi5YBC9PyMAAWrRBAA86SGOMv4YG5OuEQ6YiZB5yS8lYg2vCZaEu6s3
	 mtmlSpfEUHNBogxI0cvDQsjXuQ8hrYwvWUWuQjAprLBm21WlRsGTQO6Cb5T0+AD7OX
	 AfR7Ou1adcAT5KaIaFLdd/Nn6JtYdaORFqZBIpmtzmLhZEkrZzZ6yqGQF0rjccobIS
	 thwVkgu6w2IWdHyrikHxB9hUL+9VWRehaGPLSTeTlrFxGPa0bAPxsiMscEPGMg0Gn+
	 648u5W3DhP1jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B1D41D53
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173138735358.26200.7354718256847486074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6421dbc083af161a89f7048e3da194a0a2c1fe2dd6e1c7ec22479ba9dd27ab32
Date: Tue, 12 Nov 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731387353
