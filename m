Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9DC149DE9
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 20:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716324203; cv=none; b=sIN5PFDfa+4VucMwD4NFSXvnpV2tgx8Lfxkf+i5yJRlf9+9H1QzxuMydTnrV1AISaMPXRDxR4R991xYPHTeqMLPz4TaOlzSAeyo4H6yX+oH4WaV5wDODVz/zhXvb0WVdI72udKcdR38r2SXIGKLFNvXfNQl7O/0sMuoCcTZ1Cd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716324203; c=relaxed/simple;
	bh=gkfXe290BNWkiKHmJUlPAXwuAsTKYQe/fWd8VVpVfYw=;
	h=To:Subject:From:Message-Id:Date; b=T1Rjp43jAHh6OHli0fYSIMWhbUpHqtOxOm7dZ5rLdN7Q7k72vQ27jdXMyb74t56fUPW1PIz4Eo6dy1GSMNW+CacCYdVkEVvhCnN/Mk/JidGPEOCtTgTcYVjySygQM2roV/xZ1xHH8k7jUTOiktFryPht8o/wH5K94M+f/rQm058=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kdw/KxrN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kdw/KxrN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04A42C32782
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 20:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716324203;
	bh=gkfXe290BNWkiKHmJUlPAXwuAsTKYQe/fWd8VVpVfYw=;
	h=To:Subject:From:Date:From;
	b=Kdw/KxrNHHHRAVeaBcCN1QsetAhX0krdgfL8NAHGjUl1yJdj/CmcOiPrtESllTCSJ
	 3M5ms/WO3mA3C+NEjbv+NHN1fK/9guVRxoqokBM/Iig86hW5ZU72bzbxu4Z9nT1Y0a
	 exHDi9CzLyFIyQBLyHo2p2aV9aJmhbxVjDJNJ57xK+kUXvCh2DXRKml168qshEXv+Z
	 gv2qJsIv87CJh8FI8dAypQroMHiikHSW9792bE0MnLAanevVvhSANEBaeZIAXvHAZ2
	 0pOPJVhEf0TRBaTnJOPPt/NqVyTcgvGXN5T3QvdioOsB3xXd4YVEVfiRziY033TD1g
	 bxzK+2J1fXnmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF45CC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 20:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171632420287.5806.13300576722235826464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1b2f692af274974003ebae57a4717ebcd7d2e47736237b0df4acd56da38fc1
Date: Tue, 21 May 2024 20:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716324202
