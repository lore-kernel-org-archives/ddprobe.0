Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9A574E26
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706696897; cv=none; b=h8d4vz+TLOCTtBtDewExkPZuO5s9Afyfm9QVL9/5VzfZfR/QJGZZ76OewpWMVOWM2NYrB8BP/X12l/0GowdgtOmsbiX1ot1iQBrs+q5g0Vocor2rIAsrb7km4Vn7LsocqwBY9wnyqgmKW3PIe4ac8BGwy1BZh3ouyhpAzVFoKrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706696897; c=relaxed/simple;
	bh=B77DUjQJZk0ibhaRFU1eQFXQ8OTe/o/InWl0bnx8pC4=;
	h=To:Subject:From:Message-Id:Date; b=jnirErfp9KO9+ERnW33r/YS+A5AdpKSbfbXjTkrssB5XY0PHDf9nT9l+/dha06bhiiPoMWUQf8yJeRTnyY/80uvpBRY3ThHfYHBc7kVPs7LybMi1rhPZanfPHqrtEE0dtx3+5pErlI6MLB5REjIWJ7dfF0gGK1tPuY4zsg9ZxKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4RTV581; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4RTV581"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83046C433C7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706696896;
	bh=B77DUjQJZk0ibhaRFU1eQFXQ8OTe/o/InWl0bnx8pC4=;
	h=To:Subject:From:Date:From;
	b=M4RTV581omIrxaZ1kx3GtfrQbvBIT/lXkBGhwFh+vy1L7/5918hfwoOH8ob68V6jV
	 mvsf3ZTTkORpXFXc9d6WSmvVWpPxcre0WUcuAa47S+7sM0zSLpvE3JJHUXgga1etgM
	 WOiRN0zIRBFi6RWQAlBm6ID+6hp/sKtF093sUEMflCLlL2uB38uhiFlKrHOpJydBRm
	 ZkTVlMUcPh4FCfsLdlkaGZuczVIywI2msbW/o7RsTApv38t4+QIcKIKakGm2kik/MK
	 Qe2H9TxUVoJ6kGFxcBn6NVEymG71/8NHTuJzIkvxw6UyzhE+93w/0WcpVX+UuN2yOL
	 LNhsaxcjqHCzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600C7C47258
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170669689638.24774.17390476308941063394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b5968b3385d5e5edaa53ad68f00669cfb3dc713071a8113fd2506fc428ab88
Date: Wed, 31 Jan 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706696896
