Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC4CBFBE1
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708250897; cv=none; b=qKQMYsLQ9A4oJE+vCl0cknV0FPuFAtFzCQXYyIK3X2SAAXGAl7O3vF7utf5pS9PpSeogtFSG0zX+qNE2LEVfwDWCFIG1lg3MVuB5FDGXRlWLPhV8t3zsRBl2uq/mwpp/wpw1EQlXLf8sqE6+KMDRqZjp5Qm++PTf7xoomQYWSKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708250897; c=relaxed/simple;
	bh=iP1csVpRvp07E8z7SqHdGOC3eZxbYIUT+Jfq8REUvAU=;
	h=To:Subject:From:Message-Id:Date; b=KkrH8egZqUabK+R+PF821RsCvU61fW7wivkAt/nDS5bABLA6PeCq2ttqR+tM9vDjdV7GMvG6NbapImy2LhWeO3uJPc7i4ebr+MMWzCf6ctirWy9zdcLuuXyIjKnZBNvdiFSG/4boOUbdcnsh9fXwgUBLe4bIpfj+AuIkQIPBO28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaf8jKpp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaf8jKpp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A9FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708250896;
	bh=iP1csVpRvp07E8z7SqHdGOC3eZxbYIUT+Jfq8REUvAU=;
	h=To:Subject:From:Date:From;
	b=aaf8jKppbZTMjB4zeuphgyst3WiMayvQgwRTtJKirBU0WmmMJvCM97Bj9VlZqpm+1
	 UwQCapcHp+JUgY7KUafCH7deVHLJ58ouW6mk7efw4e5LMmTTY7oaO5Krvc6wQWcQdz
	 C/UKb16I9iDEzR3TSzbx9VvsXcMCXsfi06QYBKaKN8WuhAMTEJgkn3MgppW+XgpWaj
	 sP4ynXYTItErP6n7fuFDszqoWIyNhlj96WCL8N/boVLU4EOvY9mRne5crtute9tnXW
	 ApyCYqIt7jBdxoKhDmqIE90nKi2yWRSPaQ0q0QFdDWjkEGZp7UdHAwMk67Q2NT20bZ
	 WlGM4SqIyw+OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B1EC4829E
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170825089639.5118.6025986707599778709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd451c103baa649f046b1f21c3d66226e764d91e66985b490bb5fafb162ceb40
Date: Sun, 18 Feb 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708250896
