Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C198E219A9B
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745272193; cv=none; b=jPrLm7Oe6SUJPUuY61fA1HDaPrebbGpwtEEnZ8XIO4AaOgzZx6T3Ic3r+Ew+rVCHgjrqr5d7gZAMiyrcQ75irrGmjkB1Ow2+wRDWU5EXAEKg9tso5s1MI4bD0bA8jnReJO3+MGnAIR5STr39E4wFv4m7qZ+bhNlU/4y4Np9fxB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745272193; c=relaxed/simple;
	bh=nxbnPkZTYsB347w3lrNxMC5hc1+vaztwcN0p31ssQ50=;
	h=To:Subject:From:Message-Id:Date; b=E6A9EEJsWZGFWlnqJuo2xeFJ6qCC+YV0zVtHzB5GVLiU9oNkwjdb7AWzNZKnxLogqCzaCRvYlghZMj1gVYycSJ9PELu1giH/L5k7whSV0R4nxSdEVmUptzevGJngJ2zdhvWlkA589xe3s7VO+ekdBUPshF1l8QDM6PGkpMpisE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyMx59nT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyMx59nT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4059C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745272193;
	bh=nxbnPkZTYsB347w3lrNxMC5hc1+vaztwcN0p31ssQ50=;
	h=To:Subject:From:Date:From;
	b=hyMx59nTMtbLauKv9tfyz9fO1Vb8rZ3y8ZCxhtBoQx5PtKW8OLPhAG3Ie8OxrvDuy
	 +DdQLC5XzS4oEAQNwPRJcHRPBJapIxkfA0ZJotQJJXL/4L4KvVCTeE/dyESl/CjJy3
	 BZhRZ1bsdlYpjuBz/2I8SoFgj55hEqzJ+EpXgkA6f/rCxPzM99cr/yU+vMVnKiKIBS
	 5p4HMEOXS30MANVsPbZpEB40aGpwyOk30LrhW+wfu++HBmseB+kC3FZJyS9GQDsvs7
	 dmtmoQnociyvbUuBgumRkiNEbU9OG8GEPdsfopHDYJHLhpepu6qjlvTY47fRMmwlSl
	 2TXtsfJmx+cgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FBEC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174527219358.22339.12947120589750941402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd80c53a25cd9e783fe32be7e4e10d48fca9f5f325a40586ab39e5fd5a82e16d
Date: Mon, 21 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745272193
