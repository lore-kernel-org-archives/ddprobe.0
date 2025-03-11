Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDE32222CE
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 07:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741679334; cv=none; b=Sl7sXBvVElJtrf5INxsE7Mf0Fa26+E3Upva8fICDiGxcnUQ+1skq3IHQwhioxCEeS95wHBh/p7cnRvY3g0e7yMUXN3YvANwzlw8c2bAQurgR1z7LbUCRA7QBb0MrUKzfXndvMh3qyqzTUrzta38Slvaj69OYI7dZvoOqFDYa3U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741679334; c=relaxed/simple;
	bh=Nmd+JgVSdNzJw2OkO4VnMAV8jx1mpcl+o+1NAIzc5kk=;
	h=To:Subject:From:Message-Id:Date; b=XYs5MkITvSREfBCxD/OghQnqTnUf0zT+1IoyCrLeZanhH3kESHoAbGQYB92qxZQHB9NRcDERa4m1KYnCwULoZyaZWqY4JzadAcYQeZt1kvhnT0m+SgbDwRVrRSeUkjRanJ0eLkXrwH/oC/TzOngDYC8LBqTKkTtW57lvhBq+bUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vrk97Erk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vrk97Erk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4603C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 07:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741679333;
	bh=Nmd+JgVSdNzJw2OkO4VnMAV8jx1mpcl+o+1NAIzc5kk=;
	h=To:Subject:From:Date:From;
	b=Vrk97ErkJBimkHDjKhscUHW1qnb4Rx3YOhLPxDjlLEgB/TCaxsr3uBjD/aS691A8J
	 MgbESIGGn/cf+rccGED8yXjLn2fLIcUJUTqVv/hD7QnSs2NNejCVSIxC3Jr2jk+Pa1
	 QyLtEKcTHJ+jUGl4kTsHgq/UiV6P6hYTUkIzc+401lDbPiQjvT/B+K5MIUxAar+GKY
	 brfPHbmdYb8AnA++3dPYalF4TmQYBqN1VN46f6AWzAOTQsZML4tqNWk85Pc1zA2I7B
	 yQzkdZUthGlAfq3rXrSsXAFntlviwTqdtf5GQsqEuJCtwOJzx1p4DL1ycQ/EvXLxy2
	 LtZrtLdj0Z23Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F39C28B2F
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 07:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174167933358.29295.2289414704524292879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 698b0861c543c55822ca506bac1268c970bfe4e65bb87bcafdad864479b0db84
Date: Tue, 11 Mar 2025 07:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741679333
