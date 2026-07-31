Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560EAD531
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785459634; cv=none; b=QdY3fAYDN5UOCAkvyuvTOh/z7p9nr7wiJArE8B74aJsnb+EtfFJaWdfvvSSB4lxwsGrk4jhIN/VkASXxoj1AuH7RXnEotrTB8sE+/gXTvxmi30sDwHZSmgUuTzqZMJOc6kAnN5eWJvnShJwgpipHypGDQQqLnxxfjgHHtyRLWag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785459634; c=relaxed/simple;
	bh=GWgp+WMEYPWYxF5GZSkkoma36p/VWcZvUf4OLUbv0WI=;
	h=To:Subject:From:Message-Id:Date; b=gwBSPOaF82KEcDxFsbtVjxJZw+xLVqM2puLa6v0JRvHEpUNYaqnh7Va7AixlvP+9RBfc0Ziq7XKRj+KKiOJvMG+OeOUqiF3ud3WeIeL41OWLn7aZTCc01tTK6dkEfOJpmkPvAx/5IygQXRkYoqAVjZ8rYY6TMbXvVqZGbehqJEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZN9DtQWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZN9DtQWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3407C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785459633;
	bh=GWgp+WMEYPWYxF5GZSkkoma36p/VWcZvUf4OLUbv0WI=;
	h=To:Subject:From:Date:From;
	b=ZN9DtQWDfpCB5oxMH2HT5xyavaGTgDA10ogeD3dPVH2cPFixNKx02fVYfP0N50R3h
	 ngu5DvdwrdNUlnwILS3IQdO+M4hYf6rJJvPhxhstYTknvAN8Xy49nrUtc92zz8orsA
	 qh9XlZpcnNzVAAmCVTZlDhSzS6jofFmxgBlUJ27GVB1YL2t8d06nv05a1s9cZNagUv
	 WjhyLeuhm6ooWq9dhbEatd+ddUiSYqc5NoltaskfGIQiS8WtSZupZmSsI4/OC/APJP
	 e8wHG5yNd1LkOpZW8vsE3H1yEq7lieEUjjl6iAU0KG5ILtZb5GuWGW3/jYBUnXc9nE
	 SeAK4nVelFpbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7A9C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178545963368.19232.8164853985896564359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e54033480c6849ba06f41db32295b91ed9ace0eba6161c7bb0250e8c03d1d2b
Date: Fri, 31 Jul 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785459633
