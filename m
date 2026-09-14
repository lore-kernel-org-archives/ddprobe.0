Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFB8368D4D
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789344034; cv=none; b=jVJbP7esRsfQZ6Ts/hMt+mnGedmhh7P7Ea07Uhg6QhU6IiRr9APpoIv2D70rX6GKyPeTQh54FMgKB7NAO1gBgAfr0YsLIBRLbizSPuUluk8R764yvHXd/7qognp+GsSy4P2lI7XVNLPmp68t3SfaOEp22z19sv4FeG33g7qrrOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789344034; c=relaxed/simple;
	bh=wsuJnt9hKxU8e4tF6/yk8kKpBPhcv1oQbMNCDNcS2AI=;
	h=To:Subject:From:Message-Id:Date; b=PbNCsPP2bTfNZQ8//fQtgqXPTQ+TFNCqtn9QTKx7YTiVf9DQRrCKnqlk6M+K8XXaJW6uHQzJQMb5nyYZ2CowkiEeC7NNsI5NwNUGsQGdkbEAwyy/sf6dHnKr5FDFL1iXa5mFNMb0bh3OcPPa1dNpuLw6L0vo091VGBJL2KJr/+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z01gA5UW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z01gA5UW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47F5C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789344033;
	bh=wsuJnt9hKxU8e4tF6/yk8kKpBPhcv1oQbMNCDNcS2AI=;
	h=To:Subject:From:Date:From;
	b=Z01gA5UWPi9S0kk5iF/ylw2UzrRrAZ22yRI1tZQVgxxu9xfaUTU1TjsgKOo8j65NC
	 68zYFpts9ovQU0xAEM1PrAJ+wJQczHtfMCheWvq9tHD+6fOl/U1jd0olelY7AF7a0y
	 jkPK2+lwLky3xIe/bUPIBY8nWPzKrQeFiT+eA66sIwTvmIVw2nWbAKgKRqolrPh3AE
	 b10ouayi4jnS8npAVHm/u/9znjIfm1JjmWlv4D4WDpdKhEMzVQdsLkIOmeWrRA33Qj
	 jUAS2iTE71vO/S6Ua4JoO8f8vpbOuXCGwtaXPEcjna6hnmPd92Vju7H/OO7ZxldZ3R
	 vQJ9haUe2IA2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B095EC88E5C
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178934403368.20323.13366157276367303786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 103cce951d48f5a32814e90ada2625abd3b29b4288086be60b9b3441a42a85d8
Date: Mon, 14 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789344033
