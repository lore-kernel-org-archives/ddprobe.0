Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454C22B2D7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782350254; cv=none; b=dWhvPo3GQpeHSPIdD91ipNWBwRZBttpI7iWTjh3W7Z4l0HfX/NYQz5lgZ+HR60Sj00MBc9UNTJ9FLeuSsutKno5JYRw522aFdtjILdfRoUflXULInxlAGzCcAaJwOdYSauKASdsxXFOsniov/Cch3Wl0J5EJAC+zUwqlslRwhZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782350254; c=relaxed/simple;
	bh=TNkw6tgRPRZGN3lwdq0xBlDrvt3puxlLduQuVwF5AL8=;
	h=To:Subject:From:Message-Id:Date; b=FWxdktKhN7cL2vrz55a0dSIqtd53xI3hr0Y+4JnVi1VxbEVbqbNsR3BQQT/0tYSnhgEm6joJ9TxcmZfrK+Rdg12bGqZpVuaJ/WoZGvDFFcTDqLGq4mZs/BisfEdWSXrHh2GBDSnGMAyRiWk56EJxlg5sDXBhq1PnBHP1q8Nwi60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OndiibgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OndiibgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72B7C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782350253;
	bh=TNkw6tgRPRZGN3lwdq0xBlDrvt3puxlLduQuVwF5AL8=;
	h=To:Subject:From:Date:From;
	b=OndiibgMgv/RrYFrdcIXDTbend+5DK5IURRaNJ1EfE6eML7K5eOcg6C96ZZOhyhDa
	 058PkOR8e1IeltotwZFv5dbqpN09K/VMmid4jVVS593Q5ojc9oIHEuJCcqLPGinnq2
	 SQ8IcNoCl5MXUdUsL79kX61q19QLv9cwssKgZcfdAWs8+WiYSSGlpKwpC68njCLkXR
	 NS7nFvXenf7TAcCILDuw2aQG4HITyMU5Qsk8/IA19zoRDLYYaI46cgVeDjNCSb6LLS
	 FtY1kQ6QpQF+7Yfq/Q+7u1ba/fvbqUEYfAO3nEVpqiZNqQkFZ9HOEeKOtE+6Vk4q9Z
	 ASl3w2tUoWLBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFC5CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178235025373.17748.14854471716883508471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405002c674356227b5dce69e94f05ffbf91d876bfc930af4ae44d5f2187ac7f7
Date: Thu, 25 Jun 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782350253
