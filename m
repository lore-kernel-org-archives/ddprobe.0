Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2912E7657
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772334294; cv=none; b=JXVJAKGMRDu4LEB9ZO3544D10oKYWCp5xrDWCGOCHzVffyIKK9nvET7v3PNa1GBIQP/BMb0yoD5/SjsG0ZnnMbyPeycXBpryL8UDtkQu7ww9qML2My6IilGxp42kWKavr7eattxEDR903c6nYyfI8x3noHVt2B2oX4sASDn2XEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772334294; c=relaxed/simple;
	bh=ego6ViSVSfP3NZiUQWQr7JzODzwEw21jUXmZeTSWKEo=;
	h=To:Subject:From:Message-Id:Date; b=OjlkbHAwqF1qTQhH3b//JWBG2EfpKUU3Ns0F9dW+E1CDzUFbiksUsQXaXPjj4L7VOmyKZyZGvz0VSL+Q00LxN7vUefnQotsCpEm5qSNbGwBQUxz7HAmZeSwJTsXV9OKx9/Ltuxr9Il5scgU89cYb8fYQ1jYl5Wfj87jW+m/0QrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkyy3rZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkyy3rZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFBEAC19425
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772334293;
	bh=ego6ViSVSfP3NZiUQWQr7JzODzwEw21jUXmZeTSWKEo=;
	h=To:Subject:From:Date:From;
	b=lkyy3rZR+e2kF/xbny7yZyr1CCr6wdEKCYHUWhB9DkvbAN2GDF/AGkbIy6wqV8DBy
	 4cB3OYPO2W15ifWQTlMrQ5QvPN3aclLflQUlMxj9mswMFmakjrjmA5Q8y/aQPpt9ss
	 ye+CJIzTn7qudHLnbUlLkcKn+92Wddcdjfu6XXhHzJ9vMPxSPLd/7pig2Osp1LonNq
	 CkCq3mmgZHf9swQNlsY3188WIjigIdNPZ0cvKFCbsxDlfHc176wtfSrHzuojntfJRO
	 QSCEcTqSmjbrMX96g7uF7cTeklq3/gLNZkw5jfni1++q+32D2Ugvi9bjfa+NrItgGO
	 MOQPv9YtvXBzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12FBFD0045
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177233429360.22391.6920194909695339049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981a678ede2d2b0f91cbea3420b4b3c5f781239591d7c0c3017e8f2f16a971d3
Date: Sun, 01 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772334293
