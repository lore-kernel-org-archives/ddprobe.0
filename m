Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350E160B8A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758365394; cv=none; b=httlGc9Em807l2EKNjpyVJ8A1/G+5Aatt6CSziOBU1RFc9x79bRPkWFS8YMw1r057MfltS1yyniv3fidobLY9zlDPwQ0qwQm9pg7k10X4xvriLJx60JdUxgHcQax7S9yzqpBgXJ/z5Ul54E3t6MfcICBQLYTc9gNBVwBS4C1f9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758365394; c=relaxed/simple;
	bh=QPLlKXp7Nj9creJi4yYrlHiRQWlURoHtwS5w147t32E=;
	h=To:Subject:From:Message-Id:Date; b=EwK1ugRhfP76JyelEJkyXgtbwftcOpkl/hriRz1H91UlTlUpuZ/n68wJUg7yRoBM1Ni6/VCZCyc/Ox8m0hlpNh2BCjy+xOs7Ly24xCo3Bfj/ZWZGJuQ/TuPkxcbcoJSAtSyZqcIIpmX4uBcs0jV5W7lPaTIH9JeQfRH9NjNlYUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDAsB+28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDAsB+28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C28C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758365393;
	bh=QPLlKXp7Nj9creJi4yYrlHiRQWlURoHtwS5w147t32E=;
	h=To:Subject:From:Date:From;
	b=CDAsB+28sWABsAQ7cRZ0nxNtiiti98v3H4iqaWAqS4C2qtiP8ubBiQlzgPA0SiKJr
	 G4m5zCVSU+2WTjpk7VI8Fuxr88qpFBeKlJga2afUTtaF9eioVlbw+meKDOyWaUCs04
	 Qb68M8HTfPYbanEOzPf8EAuI9Xx11LSn9Q5eU9KghzvpeGgmu51zoStkykWQY3pcE/
	 9yhg8hU0gbmk5T17j+MENJu5y+3qFlI6XtY72SpolAaudsxNzd9x0JiJx2XOZp+v+2
	 q9C3fyAGD1RvruaWt4/PtfsBhkyomuq8sNM7xakLzYoUYshAzPvs4MHLR0c67lH2yo
	 i+zkfou6YbHVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941FDCAC5AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175836539359.4299.8711162616768695300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d81e66b16cd5f9f35452058f7331b5b97bbb6d0d58d012de5395d5e7b4536f4
Date: Sat, 20 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758365393
