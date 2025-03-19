Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44162215F78
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742419795; cv=none; b=fQZa5VnBYzIYCPuJbkKKZorzbtF7lwEuDsroUUQmXAJTflUHqTEw82802fUKl01k9ZXgFNy9rR205ucglqbMNbUMraawtzBP+AkavbHOwbbMpX+3v6sJ+rFwZnkifur7UZ6BhArY7hmB0lxVhSNit6IBirDEO54Em1lzX3bDpuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742419795; c=relaxed/simple;
	bh=oagZviJke4SMKPZWOSS3npit/lW9UB1QFFZutJiBw9s=;
	h=To:Subject:From:Message-Id:Date; b=tr6xEghyFDO1m5fnzPuFrxwskjUX7Z/NqCK3gsq4N3jnJ18yFK0epqeuHXJsAI1SB7AZKTMA0/2vDkxP+fJ4QXok/TTKHcybr4Pgm6q417MZXs3kKITG2fLI4d8QU9izbruWmdCVzGfhy54JkSGQGw3fTcXlMrdENQ36Y/kiyNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkQwdDCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkQwdDCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EF6C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742419793;
	bh=oagZviJke4SMKPZWOSS3npit/lW9UB1QFFZutJiBw9s=;
	h=To:Subject:From:Date:From;
	b=XkQwdDCq3OxtGDmKWS3eGVPPrad5V7v0eUnVs1t9G5DEYUFvEsujJhEdQAz0inBAg
	 XTdU5BqT8lE106eCccWA9uXDH99R9ftbaxrx3VWhgIJ23sFcjoUSb5EECnTVLGwpk6
	 MeKlZV4M7vZvFBZ4Ou44uMpzFch86B5kcjtILy85wZDQJqoNL6FlU/uy4b+phcLEJA
	 0Uz1inebzPfo2IqIhe0HmQlIgAGWWXSsH7hBCFTV5lUoWKTlGOcQ5K4wcMRtN7cl2u
	 KRq1fpcLoVt7LZZ709gvOuupqu8T0+E/5UscAWWibrO5wAYIxBSLPhW8q13de168tJ
	 9Dq4cZHHxotmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F418C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174241979362.5098.6147691612193647620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a0da12785a891e2a16e84b166a4995b819e4d92084eabc523cbc57e1ddcb024
Date: Wed, 19 Mar 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742419793
