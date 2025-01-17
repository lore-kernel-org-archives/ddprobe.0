Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D097E10E4
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737074753; cv=none; b=I0y/ubvgTq4N9jcWBpoQDddVCBj0L4D7zMXR8B/RhDmR8dpS7u3d93cUp0GLTWSnN1yMBmgTqcjzp6te54HfBR7h3v+MhvbduQL2Ts592ENML7gVW1Nd62JoswnQjEczcLsU/qZS0jx0NuQBZRyReexAW9jmK+T0wU2n4P5On1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737074753; c=relaxed/simple;
	bh=WZcuyyOsVk++i6stK2oNWhQ3zUg/s75ftG+G19h68BE=;
	h=To:Subject:From:Message-Id:Date; b=e91n6iW6oyaCZYDqpdb90+A5nxwwABIkUC0+EpzaqvROJoLrpUjBceBOgc3+DY4/dhuJiBvkQHZibd9/b9vSNc5lhgjgHuhthI8tHFPDjqbbzqKFLgc6EN0yrZfYfZr1WOvJvGHW+ZPYisWGE6lZeo8fEt/a5GJ5nQWcttXv9/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpgHix3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpgHix3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5221C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737074753;
	bh=WZcuyyOsVk++i6stK2oNWhQ3zUg/s75ftG+G19h68BE=;
	h=To:Subject:From:Date:From;
	b=cpgHix3/dY4i6oBFnezKjUrpf0m1dIZz3HnJ+TVsxo5fb9rXljCnD8q0m1tJtOOQX
	 RH9ZnS3AtH+eON27LmoDAC+QC30m3OawYG+TBCxvjavXfhnguyVHT3OgoJO+s27RGu
	 tJZiMfXkLTemzXJSh4PmB74qG7xMkCieNlVNfX5jXPPyh/z5IJETxnlxotI65udkMJ
	 HPTZ9+InSP5pZlQEfZMx6DscyFOLN4R/7QRxwB0UxRnUPkdUm55gR8qzBgxgkRxkVm
	 OsnQf0mLr1HpVlibUs+d4veglZ9JAFS11gRaFJ3m+Gm103DwPfQZYWBn+g67rU/74O
	 +Uf6osTByMjWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AECC02187
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173707475358.10251.6688749701975944816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8942670b2508c4d32a3a23a891f63a5097a2a2b0e662d86b9d58266932b8d22a
Date: Fri, 17 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737074753
