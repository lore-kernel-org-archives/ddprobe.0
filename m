Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C274746BC
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789214434; cv=none; b=sl0qo/9YNaNHpyPzaQu/Ws6RbTwskSHeKKExD2z2x9FSjRuexkpjR+wvx76NQP8kP5froN2k6zlCewWllPVosqyXabWWO1HB4dhhYC5fv0NOMZJ0i9Q0k/7pGGRo71QW9zvAz2BNEVx7YMjWQooCb/SxHAMisjojW5noM52gQdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789214434; c=relaxed/simple;
	bh=Rk9aRQiGEwWRUw6ZF+6plDKafsQ2bhFEit61amNkyKQ=;
	h=To:Subject:From:Message-Id:Date; b=udW9ON30AgvhDSxBaNw3LFGyWng211nE6uKZqf73pAVHxvQ11DMTscqKy7u+/aXsQlzKJwIuGTOo0LPdPNXn0WowXaIY7o7D/EX5qy3gt6iTEWeROnik7o/E/CDFbavzrFFBu1Fa/LXkld3Chbl7UXldW92pccQWBLCpiFQR8xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlLVhHQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlLVhHQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5083C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789214433;
	bh=Rk9aRQiGEwWRUw6ZF+6plDKafsQ2bhFEit61amNkyKQ=;
	h=To:Subject:From:Date:From;
	b=dlLVhHQHhL9WZJCdoApGFVz/v506bQqSn6ixVFzxaB9k80MBYN2kmCgFRaRdB+pfn
	 8OvkTEeTUQXyFnxeFypHpS1z66ky5ezTmSegWoMmu4taHAurEugb7ISM1uTfO3no2v
	 /yST9Ou7ihcYjIQJw2zBbQ7+NcbYcjh6H1YTZZjFtTZQW+ZNUc/EurkB+xvh++6DWt
	 hUWinL086G/v33bz2JYwQWq+P/FnsVoVc0Nt7k4NSHqTXzi41QLh7DTZaYU5N/1NTp
	 pdzE+rGhWwWqLJdCeMSNzfXh6FsQ+YBLIVR3gwCrUTU5tFu1IMAE7+lzwo/7UHCny1
	 Itntr5JfGAMPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF7EC88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178921443369.2380.2370726718403787389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da464d64b01b73bc3750551b03ccf79c99246e4624c3f59b07e46ef36a798e47
Date: Sat, 12 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789214433
