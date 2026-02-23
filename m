Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E47B218DB37
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771868094; cv=none; b=Ca3g7oxzC5zeRt2gyaIfbUrTDVO9sgwbAsTLOJZuYCyJZI42sBi5wLBMIzAVseu6YNT3fTUqJflopEUlXi0SpxOd0lbxcWcsOVYRW67utpglQq4EAQmAMPjbsYtPQxzUdZQBIBV9PnmfevNrpl7xs4GF7//28hiW46qJzXfGGA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771868094; c=relaxed/simple;
	bh=GuL6W5jwuJC6mLRSaPVPRy4IfGtWHfJlxvK1u9DHGjo=;
	h=To:Subject:From:Message-Id:Date; b=Vpm6OLfQ2/DpsrX9EgMsp8esHraBB1tNaF/CYownjqWcpZLywFPVwtRjusFgYObpfbVXqV/Szhcp3vmJPAGGJSIks8DNnTa3Xeggz5xFDNU/NEBZjy4TqNnCuIkaohEAXeX0NsrWX16aqs+68Smq5zB3iDWUDsAedUuQwU/vm/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEuJOsJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEuJOsJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E1AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771868093;
	bh=GuL6W5jwuJC6mLRSaPVPRy4IfGtWHfJlxvK1u9DHGjo=;
	h=To:Subject:From:Date:From;
	b=UEuJOsJ24paBOY3Xbknjb+GkR7S/q0LipZtSyBPhkVom1LiUXZ6tB7ejYofTdccCv
	 BQJAaVJt3wK4BbGN1UpdLO1lm7YUzGA0tx9khycNT564fEA/4bGrv/eTVu7b13SNaQ
	 WokFmoGG6ZzyAdq9grzA0ofV4zGgC7Ymb8qfsNDm5jf53oHhYPTMvwLjLoc5IFtnqu
	 KxZw7Uy5qKRJ7xDtX7eJJDMPOuS9AIeZjdzdae/yiOuGgwZ2m0jEbWhMlT7yqxvUI8
	 Na4nv3AxiP+i7t8CT4z9iN9HK/W4GzyEPVePLrJeEsA1E7QK3R7wFzsWrm8LejJG+s
	 jqkERX2e46Ujg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDAFEC110E
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177186809366.28733.10282336796528097669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e04c765c0119e9676f05a9561609233f663149fa04cbd368cd49ac39992d9d
Date: Mon, 23 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771868093
