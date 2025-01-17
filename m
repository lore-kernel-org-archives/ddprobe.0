Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9ED137930
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737098154; cv=none; b=QfkOg6tIljK8KcFUAXUYIfu41qdM6bqCMPBIB+LP+VqYYRb5nbBEcHhvGzjdghxjleIu2kcvjo2DrVa9GVneR7JavT+ra9C9P8sA4BNi4gzHsjEM3qQtEPE6V3UpMFYwWgtqgEpXSnS0pKOyFi97UUiuZjUFDFGlEG11c/9BbxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737098154; c=relaxed/simple;
	bh=+flammWLfrYAHRdzSJ657+HRZY3m/nI2/Aacag0S8WM=;
	h=To:Subject:From:Message-Id:Date; b=Cm75beeSoAQg8MaVIYG0beRv111LUFLZr5REKR1fDJuINT0YiKQpDysmvkTjUg/S6RC27I/5iMbhg5D0rciPKycuIYEeuVQ3e4gNtXUpu9lIABpo/5P6ZOBP9PlLBlZPdyLm9GCrHp2NC9E9ycZrcaLl1f5eaJkJ11/Al5R5cDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjGCkc0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjGCkc0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBC7C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737098153;
	bh=+flammWLfrYAHRdzSJ657+HRZY3m/nI2/Aacag0S8WM=;
	h=To:Subject:From:Date:From;
	b=IjGCkc0RaXrnZhh97tT/ZcSbbmFnFtohd/kTXLUAiN22cOBH4kYq/YV86ZqvJR97X
	 vBMhOYul5JTqJpoY9cDuUNyNI52L+C2V7/0lKhP2g2MjGp6/eiMEBrKBfpVkmHwpGR
	 /2eptnZyDN3NWeRQoKAKHDB7uKKcXRGdugP8AS2xSnqosojgRFa2BeYM93KlN69EiX
	 6wo7+jbDKSvZJIptjpQbQJea39/n+NLRNnbzl3zwJ5fgmSFOo9hCBvfkJF89J94h+1
	 4qRzskyI8Nlevk5ifIdTWbG9maf8W4sdxknWPbqCgKGQptNJw6TdlHtj80oZaJyv7X
	 iDr1LBAX+jIMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99827C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173709815358.9389.11833242740628992756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 137e816cac01fd0a21682ea3cfe0ea979fbcc3190a19b7d371fc84e0e46cebb0
Date: Fri, 17 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737098153
