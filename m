Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3688835960
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735366554; cv=none; b=hbkh25lkR6kLyKc9TljqUgCLksnHfzMo5xnAKdUVbqA/HjiO0dS/9h933hzQ48FO929gWk8FqJpGqxRQAM0Lf2I3XPeFKzkLKF3URT8OEz8nnhjAgVlU7QpeZb+n/c9M98eF29NWEtSa9n0mYX4ReRVWAy+/WdyiJ7ScJlApGWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735366554; c=relaxed/simple;
	bh=oLnf6b8wI4tHSNGEbMjvhOXFR2rqSb4KOZE9aGxiw1M=;
	h=To:Subject:From:Message-Id:Date; b=jfWrnpuJWaaMYR9bqUdWu9/WCtoLDiL1s38BfdptXj6bY4L7v5ZkJeOjIzY9LQTHsmvRpZLCHHm+ImJWldrkIE4NewPY7vyDl6tmADXW4VY8D7emB6qPJd2i/GOH5bAanq+Gm0J+FkZeXbdw+v6RqHx2Q0YKGxWGntD6ARuif+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WE/Wo/Gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WE/Wo/Gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EECC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735366553;
	bh=oLnf6b8wI4tHSNGEbMjvhOXFR2rqSb4KOZE9aGxiw1M=;
	h=To:Subject:From:Date:From;
	b=WE/Wo/Gi7+ckVIgmGZLE+8LkOsOjEpIo9cuBdU8KxoIx46TgqmWTSqddyQkym04DG
	 1dVy3TBtcEJVKqrMpEKdVODEpgT7+EKw5tDZ53pVOj/WxIJgLGE2VT91VWKL/viXlx
	 +qfkbbaYb7Uz5b4aMD9mnyl1HL/TjKgcJdHXHQR5B5MLGMvdDObBoR2Pi8C9B5clek
	 goAHubsjkJt1wVw0l/SznAW0tr91wSq++qZnGOcb9EQa6txq1soy0UFxhisQtrd7iN
	 d8+w6dls04bRF342AWZiVGopYD9D/blD38hTFS42P6FD3wwFcs1dUBLs6VXn7ziQXy
	 LCqoh4vnrj0tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4113E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173536655361.9255.18009195993154957146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 859bed93cb35a7ec02d92362acae58dfe8b9d07c2f32eeec19bc6e63e66d6553
Date: Sat, 28 Dec 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735366553
