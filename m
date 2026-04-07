Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5073B52F1
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775566534; cv=none; b=ss4LTJ4P2ehfALzSL8HTt69RQKzgU7/OgT8r5yUTLu5zJpO715rhshhImyGDFtfzAoRw7d2mtl1hhTFe30j0HZwSGW7fJv8jKFyQV8wU19aH88j5B0C+dnWcyytsO4Mg5FP3XOKDm8ILdPBM8+GXxRrAjXUpigrEjY/phMmPQTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775566534; c=relaxed/simple;
	bh=TXXgiuM0mmXx/rDbY2cUpqNKey0WpXscVJZBaBGgvPs=;
	h=To:Subject:From:Message-Id:Date; b=O9JjVpEgtuXzn4UIFeyrBLhh4+k51Bcd94Uh3/VKfhQmsrzv3cPUdCv6DdlAk+JlYx7OUKlsljU2ZRTPanb+zpZyalBxRuY7vkJBqwZjN25SdW0LPSblcw7i7/qhOLjSVy3uG3g+wb0g31ueV7GN2He953GVbIaVfiU2H3pBuVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trhYVQ/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trhYVQ/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F1EC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775566533;
	bh=TXXgiuM0mmXx/rDbY2cUpqNKey0WpXscVJZBaBGgvPs=;
	h=To:Subject:From:Date:From;
	b=trhYVQ/lYV5NHgbuKbixjaw9nKpKKOGmbmFoWC5KDVb+p7LoES2q5Zzq3AVCHS+DB
	 r3FW3F+qwbJiY1mH2dAhS2UEw/tCBvm9XTqJffINRbpG6QwgGaFTzrX5nw4O7Nzixx
	 cWCw9cDR4njhJy6hQ7H6arBdID6nEvoP4or0IBajjAg+mYvstt07ot+94+HA7c7ajV
	 llBf3EyjVbipqpdJVeYhSq0Z9uGqw94WyCu6t6+T5RU3MGZhymRbTcW5i0AYr2HNBN
	 3ioICJRr/7kjMk4i3P1au+vbxgJFdIpEt7BRn+p7aZZjO/ZJjmUPStrGOQCjdK+CDX
	 vIKLDWm7UblBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C9CFEEF32
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 12:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177556653368.16592.3160440889036524522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b819b3c048b691715bdba5ac051740f1625e6aa3dc5d7ee65529387a4b5a56b1
Date: Tue, 07 Apr 2026 12:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775566533
