Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221E17D07D
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747410594; cv=none; b=J1y+sDQ+GHw6xUXQk13gwwg4TVLn+occGxyH5MGku72GGU5IlcWe+RQzHc0NbUEB3OW5ghH7gI2sxcfNDmky+Ko1mrLivZQ6GRuM8UugZU3iwgQSH70/VNRcPIxLfIucveB8RqBI+8kOIT5PvziFcKuDBADce+9dBxuk6l+lZv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747410594; c=relaxed/simple;
	bh=kT18zg7kmabxjuz5VZvzrYpYfVrYUw9PMtn455fXx2Q=;
	h=To:Subject:From:Message-Id:Date; b=hLlIm05764kRawcOwkeJMbY14L8kZj+j7E5vf0hK29alpIsrpAt7P+TntGvc7hSNukdB44BiWCjz2WUggIssAvfJEC4iTBo1Dq5dQq40NYCyMcBuGfGJdxvx2ALaZVefjoFy+eUPCke1SA/ML1uwufnyjru4R9ppRtWnu9rYhh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwyJVf82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwyJVf82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D9CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747410593;
	bh=kT18zg7kmabxjuz5VZvzrYpYfVrYUw9PMtn455fXx2Q=;
	h=To:Subject:From:Date:From;
	b=IwyJVf82YRUmVBS9wLssqE9dDl//XTSmSml2kQIdSlLRkJaI1J1EfFCVfR7jxrc/c
	 4UDPAPnqwautoA2YsArt1gPND3X6ZOvcGNDkFOrT3ivKQI/Oy+EamMLyVyF8NB+hDP
	 u0802l7pCd4M236J+TI75qIf2E5B2lhW4MsJomnOaxkH6/AOEj0Za9aLhgWT0cjmxi
	 YT3Gvp9wqQ9rraC30GiP01eJfUCYF2+2pBmuPaql7L2UPOzaTXozONNfaJVRlqaDXF
	 x2hU89bf+V0AydKhCvz612i7WOWMn/Af0XZaMLyNpcZCXv9apQNW3KCou3NZ/QBoie
	 1ocQp5gDs1KhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D6BC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174741059358.22369.13444936385564092614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32963a5517fd39e09e89feb726964072d0479a43ab9fc4607becbb90bf275ed4
Date: Fri, 16 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747410593
