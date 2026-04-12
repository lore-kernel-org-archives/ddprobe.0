Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1519D30BF5C
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775987254; cv=none; b=HgArg6N6FIBpFB1lOkW3eECGoIjt3K+8KX7GD6zwDSvhlNMfksu55tD/4OxZkSrhUvQxH1UFiRw+WL7jFooopm5HY5PLT53OZXwJ3tN8yaHWuMwj9nCrPnUlR2fBBizrC7Z3JGuOysHCT4o6OlCUDUAK6U4HrAj1MmlDB+Xi3mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775987254; c=relaxed/simple;
	bh=P4CznvEix10MEW5dz6gLeGczFzETsewRwW0SXYcoNn0=;
	h=To:Subject:From:Message-Id:Date; b=XsZX/MHKIUGKrcGMDP3bgniPrHP93oREuT9q1ztXsrz21eOIWgTNokd4QL3hLR/CtzUyGHE3Max25uZJ3iH5cJf3zPNq65wEa7DgNh6kN8rTj8eAGXWrCdnhCjZhbNBgyeki5oxn5fuoso0vB04PuBQhsfMCPrIGD4HARt+Iq4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGVEFtK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGVEFtK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8ED7C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775987253;
	bh=P4CznvEix10MEW5dz6gLeGczFzETsewRwW0SXYcoNn0=;
	h=To:Subject:From:Date:From;
	b=jGVEFtK4tQXUfxyVsKKKpYy9J29IIiSAL6Sjkbt1sWoLx8/zVFGiafjAkBBAMCU+Z
	 cJ3nFTyaFZzHULlAtJal5GHvXk0kxtfHzbZMAgz0iBG0O7YLxLjrGL19CKd54Kpz3E
	 Us2kLbwWrRiSQGXPg3IJ34zEYtJAG5YMgYTwAkeFOit9jWMwBth3zChiUFzYYPS9YS
	 vvrEp7LnWncMb6f2r8B6srX29+fgo4/3cS4r7z0LbVmk1e45lx3ziWA16DNQJ03PUV
	 +ksFyrM49iBFlm4E2oY2Wfu1oXawVNwpdL/Jq8WmIILshLlthAK7U+nEDsFFNQhXlC
	 E4Ec/K478t98g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AB8E64009
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177598725368.21303.13441668167769294495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d90447662679d5ccad3d5f59cab9518d5ca4d607c8bd42fc7c13a41cdf519e
Date: Sun, 12 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775987253
