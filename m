Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E7135962
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763926914; cv=none; b=KrVECqANz+jZnc/VJlFCipWHQ2SNSBOaOA6C5PM/WG+1H+9YuVrdEzIp/+4bZ8fWvIjcMTvX2LxmU/wXkXv0hyTXY6NpAE6xn3wld7+axMprEYm2/UGwbMAQLnTDuAdWijlOlrC14trYLRMQgloXABV2cK7dung11Eb4DHe3Uus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763926914; c=relaxed/simple;
	bh=BXGZaPPFwQ1GpidOfdgWqmA5Kn0ARfR6m5kaQkmsteI=;
	h=To:Subject:From:Message-Id:Date; b=L/KPqX/8/LiFUtDYSz6Q8vHdYMwp5rULcJg8eKDIrDIL7sQiW9MtvoYb/LyI9q3IqTI4VBy8LkZ3GmLFuLJbKey6EIWKREBUE6N+kcbXlAbrRB4XHXKcyaza9mrekdlzJoL/ZqqrGvsTJ5djwM/1veaPFTqxBfYTIbRdPOepLt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0a5ktuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0a5ktuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E93DC116C6
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763926913;
	bh=BXGZaPPFwQ1GpidOfdgWqmA5Kn0ARfR6m5kaQkmsteI=;
	h=To:Subject:From:Date:From;
	b=i0a5ktuPipV1pJzuVKZi+msVLdb4gX8WkZagvhqG2on1nflqahb+ejlLWckwr2o/T
	 OM26+pG19Xx8rehPtwaw0aDk5FvP4/T+xaoS4cUNQFFonFnwH/aYGu6a+NnysFe3To
	 C4jUarRw6+LWAvPhfQ8ST9J5ckV7hRg4BRI25Zb9pYH/P6Zb4p3EsMiJ3W0zEu0ejw
	 Y7omq0pWndBAQ/83Lh6mj2aAZ++2fFEGERPDvyp6jPl+FBFWR+gdi4p1P3fYlNsCDP
	 aFNJcZ9Unmy+Y8i504MkPlxkbQno2/AvWFFV+cMDE3zzk2Nswsyvl0CyIQEZWI3qd9
	 EtPoL8/d/tAfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A2FCFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176392691358.6241.12020897416290292372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d21bcd870f510227073a13fb4e9cd8e771bd11da6685d8ba083a421d7eeae82
Date: Sun, 23 Nov 2025 19:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763926913
