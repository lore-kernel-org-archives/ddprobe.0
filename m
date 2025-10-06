Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C51A221543
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759770594; cv=none; b=WcBHkHIEZwXN/hbwxnfshBGZglPkMWK3e3GSjg0AIEPspy2P4uyX33v/YRakMutYJx+38U/YLDyuy/nSRnNJBPpg6absQWCruhfKg5tglH5JUkbbQ3yljbTbFPnUkFyyGT9sBOUcVFgn6APjS3I7t5Y66nnaAwybU7uBjysVRlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759770594; c=relaxed/simple;
	bh=Lx9PiSDj3mVejnZgeZkYi69TzBIfzP8umF0QZzTL+7Q=;
	h=To:Subject:From:Message-Id:Date; b=YyC60TFzglV/5wfiUbsWuWUTPnt5isKwp1c5K9TuL0gdCrt9Gx04V9jJd9wr/WsrbuGmZG2X/p3/6aVdMEMXk7RbWp8YlYUY+di/3EIAd5MCPlNOb/UwexhbivfHjNBtzDfkm3fj/b0s/2mX8bg1MKCdE8vVo0tMMq7j29qL62g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DR1L8B2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DR1L8B2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE71C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759770593;
	bh=Lx9PiSDj3mVejnZgeZkYi69TzBIfzP8umF0QZzTL+7Q=;
	h=To:Subject:From:Date:From;
	b=DR1L8B2stIhZVbud7WoaXPaHVsILR8ssYU1vyF0bAE4mQO39pCMGeUctuYPlJTYQ3
	 FdAVC029Z1aWJRN7GisH+Voh/Ls2MCqpmRUQKpwT8YWo4wgiz9sSjjqSkIZCxFuzsW
	 YIXALGmFuV9rHN++8nsC7UCk8r2n1lwGGtRh+wJsXxjNFstNB2vkUFY9vZ0xH99uB9
	 I7/jgBV7Hcqv9+GxA26uQnZxQk4mu3MzQMNABZUesiDGxnNvozObymLhAV35ZhJwNK
	 VyaykYEajXPK4yzn+fUd+z0K8vTQSZJNQFJ8tj92ncZFTnV+EEzDiu4CzSXVM5WH9d
	 9wgHP4uGG2s/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ED0CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175977059359.29731.15295673991084889335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b869b10cb22c5aa9327e237c70d66172003d9d9308bc2a30da2f9604aa8c5b4
Date: Mon, 06 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759770593
