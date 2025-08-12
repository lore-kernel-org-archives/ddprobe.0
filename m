Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2190B2E54A9
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754989194; cv=none; b=eTQXGf0FJ8ihxH/cY755fLeIkJn7cDAWnq/DTUmnk5v6+w7fdAJFdNYyndZlUYsDQL2bhLb+ZbYnBkVqTpkifp8G3pXpNnxO0hENM68Pm2ux0KkzaQm3+Fs0dYjuhGlNQ+8HxYA/6S1pFZ8JoVCuJFeLSVGPvSXMhn+vDiF4CJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754989194; c=relaxed/simple;
	bh=/LdUOP3lFGOreKL6c8T1KTsQQbC1pIuDnA9eZShry6o=;
	h=To:Subject:From:Message-Id:Date; b=Sn9eXfEyC3bLq/MxaWjzyMmBi0b7fNsd4D9lDdpFUkh73nTbZOQsSZZhWBKjnDxQS1ofA21yxyKnfURVYwyuvC9W8J2Nem0ryX0GSCcfL/8yachJXnUXq876YF6ekLhDEd/w61sr4+whDsq4C1r/m/7QdePTnPfanxlWcpP4/ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOIElXk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOIElXk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5D4C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754989193;
	bh=/LdUOP3lFGOreKL6c8T1KTsQQbC1pIuDnA9eZShry6o=;
	h=To:Subject:From:Date:From;
	b=lOIElXk2MrWGH8HV4iCLWklN0LapDlyf08A74APaKdQo4OJxqVgRQcO+gMXxlISxH
	 gZwZzqhzwCzrzFyrol8G6sWtiNTxCF8e471HAO6H/8Dl8Q39iOVg3rH9eb0ayXq7z5
	 WFSIvKw/KYNpC6zebK1VUayiPrGlkTj5Vfm1Cr9coiaXpbOTvhn33UDUMXEX5BL7uX
	 JEZLmMtNjOsZhOOc4iytoniYnCMgtAK/lJCf0wP2IEXv46Z2KRBJSLXFbqXX+lbMI+
	 CS4aK1/tt4k12NK9SDFaSQqdayfPjD7VyOtRpYwyFKmcqT95/juYbakGOh2pULbwxq
	 MUsAofSBz4Wmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F14AC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175498919357.29669.827627859521369943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffe1d0fede6299e0595cb9c94040c283779f4c8b01e0216d26385c06ec3efda
Date: Tue, 12 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754989193
