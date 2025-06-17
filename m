Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A27D2264A5
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750184994; cv=none; b=ocwB4bn03vmJVAxYZrClsj4iXMZQbzdJ6BDBcpiIgC8EoMhrAEiMztSH5du7tJPIyfWTWB2sJvuIuE3Rn/0EKR3nQBfb92swaSsf5sKHpeFDmmB5hzGeV/ZZUCGylb3mygdxueD8X8EsxRET9dqQBDGJLrQ1fAPvuNssFsOPeFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750184994; c=relaxed/simple;
	bh=B8N7V3U+BEZsNzsuYlv9xT2eOP7ULf462uS/RyIgCDM=;
	h=To:Subject:From:Message-Id:Date; b=UyvkvzHaJrBBOMJvEzNJcG/D8eU2UOvw5vFM2RXDh7yl0EAtR0NYM96UNniCnYVpRiyjUyIAwhmqqTaE5ZmG354E5DDKEKPhKk9fRsM/z4Z/l2KpwQavaYQa7/vlUlxAOsiSKL5Ovlk24u0+QfiB7nXsAv27W/3eEEksP4MUlYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYg9YWw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYg9YWw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEBEC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750184993;
	bh=B8N7V3U+BEZsNzsuYlv9xT2eOP7ULf462uS/RyIgCDM=;
	h=To:Subject:From:Date:From;
	b=aYg9YWw4xr+3blTxvrH+VyfmRhoSZT89xY93/XQwGcgc/vNQPjPTC/fU7+fuDbyIz
	 iID03RmjHzrGY3YRZexWNsOZk8fxcq2vHfJ6H/+cYqgA+4S1r/FRnBjDO5hMs+MRWt
	 eELKtOA9PuUDKUsHdsgW3vvm0U352ZxQ6qkyDlZDSrJ5/6SEsWzjuMeXtXaKMByLsW
	 zAhBzLRL/KOykKvZKhwm1nJWvRNMTfCV8FvB8p/Ve0TJr/yNwznCFk4iFytcycTsk9
	 h6+ni1e8geTKOhGNBDzXeqypUOYsg6I8+3JWUup1koYOqfXYipFCtMDrnQ4foTya1e
	 Zr1xdUQ0GsyWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90578C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175018499358.31232.16704276438792216678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e8da8b37e3993288a8ef8777fa6bbed3c30491c4ab32168f3df17f62c4efea1
Date: Tue, 17 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750184993
