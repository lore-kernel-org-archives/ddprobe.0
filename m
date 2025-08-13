Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382F5295D91
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755119394; cv=none; b=fZxmRBPMI53ihswTs1dtugvuB730A+E+N15a09/MjTPilTiiBrYYotoicUv3Fk4W95h9TkMRKFiZBJhG7mDS7wawYNNioKZHj2ollfwTjnvVrG0iXLDXL09uWJ9GFH/J64lWV1O0Wp9Fs+9FpTfujVtSnVoZICCglNrKmHd9oQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755119394; c=relaxed/simple;
	bh=8MM55wSsxLpsRs3HiL//MNSw3+YVMU92Ty4+Igr3je8=;
	h=To:Subject:From:Message-Id:Date; b=kynrMNr1veOW8zZDKCNdCw/kacjmHE/CHTlavk0SMHoyjUBXqdyQn4OtXfwhn0m7eNFwnQEK0nPyw9q9208+GdnXf+VUKcuyE/gtvWhY3Vp4kykD2EvIjdJGIhweDb6KLJyI+0F1CfmFS+olE9oYrwREdDRk9RDl9QXIVmJuJKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNHiSUs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNHiSUs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E42DC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755119393;
	bh=8MM55wSsxLpsRs3HiL//MNSw3+YVMU92Ty4+Igr3je8=;
	h=To:Subject:From:Date:From;
	b=BNHiSUs+pWu241uX9dvnqizdb1XW2JV79EsHLx6b4/h5r4Ebvrtst9AA2PGUjlCcq
	 yRXHr6WieViaS7j+z3u0EMOsUyzIyLfMYeMczfC7xD/Yj4x572A55Gfz8YGd+k3oYm
	 PH+p0/G2VBdtNvs3IbKnGbo3OPLSkYB9Nlpqi1YebRvWtg/kCo/3RsQVYHDBG0jv2O
	 OrevcYZ1lnXc8gQgYYl0v8ATScoiH7jTVE43vHtIqoUSfjC2zuhhuneGTgM+Dv2G8u
	 mGX1id/iFQ8lOPbgxxu+XKGOOHl9IUbLZD0IQa12LNP6alx+rL6RMoK0uLJBnMF8bo
	 8oNQgkHhaJC8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F48ECA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175511939357.11641.12072243597392349718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2389819cb70dae997e663df0be30b4b348284b40f9b8e9c3a7974eef3e22a75e
Date: Wed, 13 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755119393
