Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3834528EB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749958194; cv=none; b=Z917sQdp/u3ohfVETj0pNDEWIMR4qc76tz0IEyeL24IDga5wuOOvO6Snt3r11PLuFJ+857SmaGD4q2mjG22oD6XPJt0U+pNkADmqmxtQEqlcxdtUwy6WydcN2WH3E78GKFCumkQZHQKeX+oHRxQ3N2ALNZpTxhDq5o9srzEKhjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749958194; c=relaxed/simple;
	bh=iVMiqfPkwVDLpwa+XItg8cy7MKBw3yfOHXdAtjuAybY=;
	h=To:Subject:From:Message-Id:Date; b=cNS/0PyBQinCE+htBzAXvjkKlEfDH9Ut7G5kjXqbgG6GGZ2TM9whqU0wfYXIREfuo8X6VVRBv6RN56GxcqYqL9YRPl0zvOw0ueiHPUl3ODq4vHGw7HoRj514bdgvc92cGS745uF4+AdVFvNf7js2BRyYKrUF/72jIjOmH+djUCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMkRb7a1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMkRb7a1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA957C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749958193;
	bh=iVMiqfPkwVDLpwa+XItg8cy7MKBw3yfOHXdAtjuAybY=;
	h=To:Subject:From:Date:From;
	b=LMkRb7a1cB6XWjqg1xR5KXKaTX3BDXVjY1e4Fa3zSg6r9kV7FABD7ZAhkGQhD4kl/
	 vMnyIiTb3JEb/1ViabaqcZ9crY+FPgUxo9HK9z83OFdDHJ2R30pnWhJHSY5XJGi613
	 AEXPyflvLnXSJTqzWGYNzmIRr10yVo1q2OX+DOo3Um7XSt5ND+4lsyOKacxDdBT05x
	 PJEmJsqHRLgocp5zvA5URlPxKqgnNgaJLMpKDQ1i62+yxXvYLGO+1+s/JbTSpidYJ8
	 hEJ+WEVNqqbeTEua0fg3WWipL2iCVnNPrm7m1Gz18gyvxLFxiljtO9mc/BSGsCg10J
	 AXEEmrYW050jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9592DC71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174995819357.6033.7710856035122713908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c70e602f57e3057a90a134c2ab4541e02f563e4bde211bd8fcb7416157b07b
Date: Sun, 15 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749958193
