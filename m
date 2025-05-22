Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3893A27718
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747883394; cv=none; b=iSYCBBYUV+jAbxdYZDt5lhfncl+1sWxWHydCbNIrsflMn6XvTlvttD4W2EhLlmaexLXdCIJ73xlkJJFPbF7FsRnVt7YWyyNp5lsNaJhI7x97hgzNsQFRPoL+Uppb5VHvoXy+MKrTC+BdEB6+swN0dQR7LOVoDrILfU6ZjAQc6l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747883394; c=relaxed/simple;
	bh=AP66lJ7zSrvlgZN27WJiFpp4iSPLjlt1TjcjJxz+DeE=;
	h=To:Subject:From:Message-Id:Date; b=VJQgY8wTnSCPCaEbfildiiQY+sjUsalLnOWIPgLlgumKG9NpyLwY97SnzlUj6lov2Aj/0mde+QE2gXxXB/n4q9PkKyCoE/4BlUyDyH2Kd8pGdr7rGOWGoUTXQ3hc/cnWnKiwkqSv4vN2zfjvbX6Vec6+abzRuDnn+2kzZlTvlGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esdjNkMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esdjNkMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1659C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747883393;
	bh=AP66lJ7zSrvlgZN27WJiFpp4iSPLjlt1TjcjJxz+DeE=;
	h=To:Subject:From:Date:From;
	b=esdjNkMueLIYhjs3c/qvQzzTwLfGvVLVfdFad8UI+kvi/oDyeWfi07JqqNI1GZ4NO
	 gJSE+nZK/5ge1vmTqFGH08J1qsiw88BkkEzzz9/gSDAEtdUWBf8jJATR+jAcXSHAwz
	 xbv24iL8uA9hpgyh1kw4rDPydFDq542187HTOtXzuWYlF86/hE3Vh2HyK6/UHudDU1
	 nvLSFPwKkdfmfUZe8EMCbjAYJGIJQH0194CkDenr6CVpLme0Jqs6GPCIwdkk8rTc1l
	 afEgWx8RApsyIHuerw384aLcw2HV+9mxJ+NMsRLGsn4xIwbncBpLzrch9hvNJtfnQh
	 W2XVZKNqp4oJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD25C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174788339358.24458.3616622561265432023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 939fcab631fa1dc025881678131bb8214dd340e07ad69ae769493e3958e89c71
Date: Thu, 22 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747883393
