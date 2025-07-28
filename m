Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C266283C93
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753735794; cv=none; b=p377XQcdzix+D4ts31u7hFU0BOz4t/BFCrZ6gJmsbx6twv46NEwUb9v3NybPYwNK2/uufWr9UlUA1MXFlfp0L/Qb50QNcMSVRq/oEIgV8vXbxz6XsIUAAP7gxpAr0YnKuYRIuW7QAj1UqagJpg7uS9F95hqi6zAxAAIs5VjoacM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753735794; c=relaxed/simple;
	bh=RxYlSBSx4754hNsiSHgLHZ9b9RHbma3i4dQX715smBE=;
	h=To:Subject:From:Message-Id:Date; b=GoM/35FgJg4xz1ZGHVbxaDb5ZU12SKmtXPYgcaU2k+H0ahYwZ1F9HTPJlq6oFG34z/yMUKmsuAO5vv+PXS2U5fUwt1XTVRBCr19f+oAuLj7WlVyMAu595EA/0dHRkG8GVabJLp9U99w1UTmtV9tFJD+Q9XNki648gUr8WPvTpdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBODo2X7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBODo2X7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF6BC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753735793;
	bh=RxYlSBSx4754hNsiSHgLHZ9b9RHbma3i4dQX715smBE=;
	h=To:Subject:From:Date:From;
	b=tBODo2X7IodFztx47QbFhnrbKAA3IcvN99xuGLJGtlZZyLY0gKuoy6BA1EtrKjZLA
	 gu5zuWo6Wg0nSaYliiGp6/f+KMb5HXP4w5XiR1HBCjWJxTD6hP+GU9WZS3jftYWxaE
	 cJOPAtr9d/qJplZq3Qhf7TmTuYHuwWv5K/XoWvCCKl+HvG4lZKEpkiFa9TQT4V/c1c
	 /faiY8/JStEoLUokyj4AYylBLV/SfikJjH/UVG0pWPSyzqHNawdM3fMO7rPs1xztFE
	 /+b7wWGrR3kXfk/UFeemt7NdfxTKyDCQyFWG0Q8Kn5LGANk+suzytwPQ1wpj3A2exG
	 MUq0fULJW63og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A96DC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175373579359.17378.9923172018687329408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42a34675f55d1b80b27f03d5396ff17b3225135002a661395af68dfe7e270a11
Date: Mon, 28 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753735793
