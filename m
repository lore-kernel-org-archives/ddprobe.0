Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC7B75815
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 11:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714993343; cv=none; b=jRpwD1fTZe4gG8egn5TLdD1jGujxUqNeayYvxapAWT/aTXevZauPJtLTLsGYaBzvIkriTMA9l4P3fvrWLoItv8KkCvkZbJAjDkdOp6JodWe3A4SFa3QrfsX0bPivelP8FtEWrRK8DRo9c3QLgebim3BvWiBtGcYPXkfC4zaZcU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714993343; c=relaxed/simple;
	bh=GADPjH3SKxBkYHUNSwxiw+3yW+Wyn1dt/IgNaxNPpTM=;
	h=To:Subject:From:Message-Id:Date; b=Q3yxXb4y7N61H/Jv/P/cv94E6C5Us9Pww936n4if6zwCdCGBsLxCx+BejznEOslGPoqHrK7awXU2TigSkU9s5swVt2ukO1HKHuvRUK4L5ekh8KDasweTtEh2gJd7QwYZ/BD+vnGQETAIW3GG7Jk6CA0Ov0n3Q2OCIH75akS5kcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDdQtHd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDdQtHd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5817C4AF18
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 11:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714993342;
	bh=GADPjH3SKxBkYHUNSwxiw+3yW+Wyn1dt/IgNaxNPpTM=;
	h=To:Subject:From:Date:From;
	b=RDdQtHd6irVFbVCInvs7K5UtVM4Gb466XSubuTlLoYVADD15BujmOiMZ0kyctbhrl
	 C36fC4vgWgKA8xwCFhNcSe3wXgUYZbDZCNwF1dnqepPwIINKPGq89IYSJOYHHMHoGD
	 Y2jGzNUvKX0ML+pPSjxTK1bsSnD8DPQgV8Ft+e79JmDXVOWCUFkj5J4CmLXPY4A2Un
	 3LEcwma8tSVVEBoUjsKvv/USMxOzsSipDuVPbFaLD2eXnGK3D6TV4NX4EJBsf4okNg
	 F1DmBIEc8Vjz9e/HKozBfg6jUQmz+EVP9z1BcuP0pVcGmUJUpGOaRRFrYEvRcceYmc
	 +tQ0kJmvjKMfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF720C25B5C
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 11:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171499334283.19460.15396646278190816094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a781ac31a94be9da71797c3a6be86c1e24d0a3a66af4f12b4f75051c3577e8
Date: Mon, 06 May 2024 11:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714993342
