Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2DCF224B13
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745011793; cv=none; b=ifiDCd/fyajA6IVVx93sKs8Fi78h9yhyYn9UvRPtQqv1Q0P0gIm+jDo6pJpl6rEcJ3Xul/IjIsN7/O5uWkPVOiHcKJjY6pT8wKfQYcOnwpRmVpAvIp4+6+Rscu7EHb/nCSFfnENLQGRGxxU+zs3jIG9Mej3TmEqpcqQ4gsVcQt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745011793; c=relaxed/simple;
	bh=i8biSLbXyVOSBOJ8qXtyejBqK90OaKOPbjzkwGbsEc4=;
	h=To:Subject:From:Message-Id:Date; b=D0wpwzZYIlCIGJPq+lDL1X7ytesLmj2mcUWN2fzG2dG/WXYUDzgMLNRyJMWwA+eGkLHTe4TAC21V20bpdSNhWxGhN7xiGNCPIXwhCVlF8gJtDzU1zD9FFMhZIKByVnsxai7quTvJhCpK1nz5kArCIIslZen7KGKKEMotFW0Rwe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNlZypUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNlZypUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B241DC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745011793;
	bh=i8biSLbXyVOSBOJ8qXtyejBqK90OaKOPbjzkwGbsEc4=;
	h=To:Subject:From:Date:From;
	b=LNlZypUWawn5leJQKuIfruVwskIFKqjG9cLoeymbJfxUyNYtpQ6mNMOURGfpLCyjm
	 wpB4e/BxcuhjKj7wew/EPAzpYqvnlywwTqOLEcRfoO+dUhW8VLoE8FzZvcCNzmcQGL
	 0MYI88Nbui2mbihTgvbBuSmCZ3SGoH3+kAAtBLW+w/NZrMJMvFWnfWu31dMv1iT1sB
	 Gp9bex0o00RjHOVSrICUbbPG1djYdz4T9BOgOPomGC01GwmBidrNMImalFG94Rig0T
	 6zTZJwOrlphiUj6vMp33GCFDGPW4o+UckPe9in93OFXPuo2V0Y+1VmGxzmX1ao00A1
	 SBCp2xM6jK7gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA73C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174501179361.27022.5696553144982937999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4824cef3854a008a132e0305c7fdfc06b83f1a5b9b4ba21a37d8ffc1d89678c5
Date: Fri, 18 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745011793
