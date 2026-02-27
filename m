Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B96DA329E6B
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772192093; cv=none; b=epCoZkrZcUq+rfbfiwpijZz0j3iTO/iimkZdNkP/TvVzsSRYGa9ZNk2DvE+54Icg3UTHb5Z15LYVlAvnyBe6noAOqnRm5Sy/gqyot6PRr/v1/kIkfCttsf01vxiByy51lhr3BwLEmdanbuN11eVGvK9byrQc3zOSVGAE08EbIII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772192093; c=relaxed/simple;
	bh=s1BDrWrdFw8+fuA72GCp3OLD8mbmVfEW3xVuAjZI55E=;
	h=To:Subject:From:Message-Id:Date; b=QijJVgJCEy6DU+vbPKoPP7QaDR9k2pvsIWV20UtMjO+85l9+nPJgwNpeQcq9fDQFMprWQnQ/wKrcmUFgn4ANSzJfAi1hKNKUo7SrmgzKBHLh16w4fhE+rWHVLxmxFzoEtqSp/CxjUMaAcrGKI+7HX+2dUSM/FD7zPQ1U9ZQw1/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gz2Q7zY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gz2Q7zY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B7A1C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772192093;
	bh=s1BDrWrdFw8+fuA72GCp3OLD8mbmVfEW3xVuAjZI55E=;
	h=To:Subject:From:Date:From;
	b=gz2Q7zY/cq29BJ7vt/6npDY70538nX1ZXMMayM1RD4n8C9p6rTcsBTQSDdeXKfJXW
	 StDVng7nkr+qDY++XVF7kkDa30w5LrwrSsy2s7VRc5k0bd7diG5rrFHDrk0FUEXN/f
	 B3skqfkn+2Scmk3sMIuOtMzQXaz1t+Fo2fCwiznY9VD3/K/20haULvcOKBB+cFrVrS
	 N9H45vTD/Jke2dlhk201gIzA+koV97h2yiCP/T1Z9kPORbeVwghP3IBNLrwoWNZYIk
	 MYmzZuwrOrM6xx8ZoSeVE8RWD3Zf8qd/3UPVkjzLcxdLoOmOAi4PaWlXaC0fY19ye7
	 2rrv+0OKubf6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1BCFD7F97
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177219209357.32666.14817321846303545329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59aebcb9d91d771de37097f2414632ddf522ccf4b08e7212d209ca25fc4ba2cb
Date: Fri, 27 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772192093
