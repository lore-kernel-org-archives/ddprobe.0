Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4F1364B5
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705831697; cv=none; b=Pld6vPWlgyA+gPJKXJYXYGQWhQURyevVE6vWnMQJkvZxcgbnfOdwF0EkwzXJjICm0wYdwrC6j1mbH8yylBH+I01G8uwue/ps0doGMgrU6M/biUk8CKuNDj5aAbCbnL3SKO1k/BRxWye/v3tVpOr17kiWb0K9BrU6FrM1fxCYjlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705831697; c=relaxed/simple;
	bh=XzbzeDq2tev2l6dokmqMBgwC4UmKHqpoL3nalegRNGI=;
	h=To:Subject:From:Message-Id:Date; b=BIWR3joJ9oCF5pmQed67jOVzyNF+s14AZAHPKwudk8MW43aCezM3rXthOHUrINuQhhFH4OhkWp1j0W7w+qM5j1TEp703VjWS9JImFHvNJJuQoU4g+Zx9GB40dFlYCmFDnSBH/h0RdP8FusxyV6sGtFwwRQ+XbwoOPsipcfnAxKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omnRk4Gd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omnRk4Gd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79054C433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705831696;
	bh=XzbzeDq2tev2l6dokmqMBgwC4UmKHqpoL3nalegRNGI=;
	h=To:Subject:From:Date:From;
	b=omnRk4Gd+aSzXCxsxH5kdE0VMgvwwBu9FRQM0AvBrIFVQa/L6OGsij/377JjIq7xe
	 YYliv65vqiwZ/Iv9ifBFQvcGyZEe02u8OxmWNOZG6npYvtynb/pIp7QXF2j+/bLm/q
	 GZ0KNwmB2/8bqcqxhCzWeIgYUf+yjiNOXNfWZeqXd2eFhR1acAC3c5yrD0rw5N7QdY
	 n5e41e8Xgy0W09JuMA1w3mszPmS/WFeJvC8UdxZbAXr3OCePpppHj60GW50YYNqmj7
	 +72TPAucmGQTs7bh2Pa/tHHI9M9A8wn7BiOcxqqMYMeKQ7WjVZVjefT66N/Z21x/WE
	 MRHFPSB5hq38A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F81BC47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170583169636.22626.4322215259379920262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc37f455a451db89b169f6fb0f3c15390be9cfecb1cf5b5fed426dbc66ed0be
Date: Sun, 21 Jan 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705831696
