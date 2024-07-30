Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B5057CB5
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722310554; cv=none; b=ebcSnWbCdZuRHuObxQY4LQs97fu7DYdgzmGlL4l8Zj4BOwm9Aw3BIVIcVlPk1RidvW1/RD2bGIPyAmw2sywOefGhb7ZzaWJkI8UBoNDVSdk/ztZRAJh47oN5BDFfOsX6+UW/Utuy2HMBQH3t4dRZoVcGzLKyeE/FYcRRA6DdvZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722310554; c=relaxed/simple;
	bh=P670hwKa6lDYyHdXmhZdyw7N9yiwp2T+R1/COA+iMXU=;
	h=To:Subject:From:Message-Id:Date; b=cMYfCNJcX0bkHgzQ49Y/L7yRiMJv5eLRaQKkOST9lfEoNtezPRyjfrj1xseFFpl0s2+H3FF9phEYEjkOD84lckGjamtEBk8X2gP8hUWrBi0cyUaCcHZhq0U9YHua/2XT9o0MjWAkkGpYZ7da8sBD+CFi1Lsi8l2xvEhwVtBTZqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8qBJcXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8qBJcXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE59C32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722310553;
	bh=P670hwKa6lDYyHdXmhZdyw7N9yiwp2T+R1/COA+iMXU=;
	h=To:Subject:From:Date:From;
	b=K8qBJcXqhFNbpza5xto/Qxxn/U4xv3LHMrchdEJuvVk15uEaup7Z+bNC13LnC8K30
	 rDfEmAdk3C3poguylasfqwKG7X3jYgd8qslpE9g2sUdU1MaH2CDQCZHoypVyCNtw71
	 hoV5pypKFpoTRg+NrZEjQ8m9/6cKIX4+jJgg39jIjz92G5CRRcl9WHSpX6/72NLCz7
	 A90rvGtNjnpRhFd4gQ9cvjVwm3mZUTMDWSvsxP+QueLa2U48a0IKHThNUhBfMKGshv
	 VTebH/NIURQhhNxjScxktfKVFyeSr/tGkbsRW6VjK9suppJ0xg7LKvrXwgXvpXvv+G
	 adHGR8w3Vbv/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94736C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172231055360.14633.3490889782718703419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50231d5d6ecbee2af6e08badaf06cccafb36847de71d540a192a29351eda9c4b
Date: Tue, 30 Jul 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722310553
