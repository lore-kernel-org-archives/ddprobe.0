Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D3B14DFFA
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709067497; cv=none; b=YtQVnCVje++aENrLowePgUwcYrJHOFzqAzu6695xFON581cqTOH1KalwMzyD/rWmwpwkAowCjlQXltR6PsIREher3SBb1k3k/xf+P7lLkdAjEHaT9VpnFfOFTJJXgtJ1fV/Gynwy+GC3eUWrd9KbfK2DOP3dPU5JKIBIemnbN6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709067497; c=relaxed/simple;
	bh=W64L3j7iP+CzbtomztRKjeYniOGvsI6IRJCQNYZDtP0=;
	h=To:Subject:From:Message-Id:Date; b=nIHs6deMrXrm9o76JlYQLapIe/lZyt/gj2lKC8Qr0r3RDpqI3ZEvlbbcAPNMW5gk3VAmlZ7MPt481GI7TnbHXXq3cxId74FKW9IG6KXkWRDIQZvp5n/wbyYPmvRuYFkHWlg5sUqWwJJS0iXM0oqQOY6/ImPIkgbe3rvh9Q5gYs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/XHdNuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/XHdNuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 881E6C433C7
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709067496;
	bh=W64L3j7iP+CzbtomztRKjeYniOGvsI6IRJCQNYZDtP0=;
	h=To:Subject:From:Date:From;
	b=P/XHdNuuJHzaJN6swYBLI7TOXbSTTV3axeDOKZhUPqgEW834BlG+0r0CnBIlI62qv
	 GoSN3iH+Pcrjkub/JgQx8pMxBpEut/SM7JkGWD+RaA3v3OV1YAJWI2eL66X06/SLoD
	 biR4PFW44/pVFkjL4hdQo6Z6PHcGLPUauXaBft8IQUH5buF315O963qKfOwpZEWYoI
	 V1xPaDe+ltj4rbhj07pF4UQXEAoSi04rTfr7YmwRxC/DFgRMBh3ZU/9VNJSDwAcrkv
	 tpTXLIbw1BUlJUndLyyP3GG2wmrumPo2QI2/VwKe3Wnc8YPQ4PKDHXG/tZLdvbBuPl
	 DzJND+Um8kVjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CD78C54798
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170906749642.21846.848704630776357052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb7d930461b813394363bf37117bb47e5fd1ef22c19f377e23ce280bc196e17c
Date: Tue, 27 Feb 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709067496
