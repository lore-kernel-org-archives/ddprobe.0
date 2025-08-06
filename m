Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0494C15E97
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754459994; cv=none; b=CJmZToffeksYs0n2lxO9gA9us+Tu6y7+V3NV6MOpOFThy0lp4FGo38yEsiOIMrYYy3IwctasGhTAO3occg641DBlRj0z/u3B8VhPU0XzOpqmgfjxngwD3NJO6HL9CTjuCsrF6v5/nwsUOs7IJstzdQEOrdhION7JUUjdEmQ42RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754459994; c=relaxed/simple;
	bh=7hySlwDaqLS8yctamE7XIsvcE3nKa4xiUZH5UHGaNEg=;
	h=To:Subject:From:Message-Id:Date; b=NaKE9r5KAv4Mg0hSPRBjk85on5G/c4DLAPCiCoBdfV5/v7AjaTURC+jRBtrMzZ/m37WPJIPQORCji2Afh8Ftd8+3phI7C3ldrUOMwjUv2JgfVpHEE4LIv2a694o9aGnbYCSaPIPHY634GY7adXjJUzXBNTK3jR/QnhDz9Kc7scQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqEfdXsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqEfdXsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E8FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754459993;
	bh=7hySlwDaqLS8yctamE7XIsvcE3nKa4xiUZH5UHGaNEg=;
	h=To:Subject:From:Date:From;
	b=hqEfdXsj3saGwrq2+HshUFsjG3QDza3xfG/y2TwUuQlx4eoZvMaaEhMOrQm+YvIak
	 chzZ9Tb7iSB8GGghVowUKgLxilo2ApJTJwbbnvhuVIoWWkTcpwrPDm138CkJJcmJH6
	 TI+NHK0PEPWWz33vC7bu5f9odlCOMLwUEgI+MVhuMn+ZwzYkNOmgiEwLMvpVgRwLOn
	 VuYyrasX9LLwFoQiPBl9dqHPJKOB6tSVwkQhAqBHAaIf+lI1XQc8t8b/hZZzJyhH57
	 RkJqZMfY6Sb2tItQrjibuyLvJzapBP4q4sJKZK4/1Rg6mSk/pgA+Xj8sc4IW2mTSXx
	 3BNQ442hJQBug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E952C87FCA
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175445999357.4469.14332155422568325990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217396a79be07dae3cb1021462f6780331f9e632b14a8d33ea4cdd29c2698dbf
Date: Wed, 06 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754459993
