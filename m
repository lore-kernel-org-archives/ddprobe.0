Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5962016FF37
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 04:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741753734; cv=none; b=ZzMMxSsywTmFdBxb/sTk0ztUNS9LSuXRQlO2cJUjgI6WyQN62uMgBtuHbPbCSxLZmHAVoP/34eyctrRoGLTWNxf8xfj1nVjCd0wkHQzUbIeZr2OwecVWNT5dLII/I/0A8n+iZ/BONBwiVpYMJxU18KJB+Hpska5eKA41EbJkOv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741753734; c=relaxed/simple;
	bh=mD3ulZUHwpsdm+6136iu3cjfdW5C3uPrO+O5ej7r1Ls=;
	h=To:Subject:From:Message-Id:Date; b=t2mn3yb+H1JYiggKEnnjycZGqIHFotnkPvNNw3eqTZOxLiWEKASTJm9oX+V6+809VA/Ha3TR8hLoYoPPcQc/jcVB5XKnROPjAYir7LGk2bDNOC9Dk7uW0Jdc8g5QVIpbjuSopGI/oTloQNWJqGbGnr8eSxPc31VCBE1oei+n5m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxwEpNZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxwEpNZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C193EC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 04:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741753733;
	bh=mD3ulZUHwpsdm+6136iu3cjfdW5C3uPrO+O5ej7r1Ls=;
	h=To:Subject:From:Date:From;
	b=kxwEpNZKYzHyWPF54Y3heWhx3LnEURYh5pggZFQeAz3kacAGI9Nt/VUe3TNaITwfq
	 LvgG+Owhm5OnwyrUc1jOIB3EFrT0j5I42bOhS6ilKS3cCrZvBfj+J5o/yKgtVCNxNE
	 x1EClw2PS+Mmtuu1+pCrfUVFdHMjMUmOJpfrzQdg6AETTNklDtWRy+fk95mucwRE08
	 Ge2zBx19uc90/50sNDL+1/rULdBdMg5HnKN4U818DQb+jTjMlv5bjd0nDKqdeYiMoZ
	 hjfd7Mf+H4GborwqQqU+Nup13wTApw1KRVyPD0xDQE0VH5ev2R4d6fd1THShrCnzHu
	 uf0Lto8zHMKzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC043C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 04:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174175373365.26703.14691608616396058607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3082e652a2995e9ec9d9744e0d536c8f87650522f1ec011fe95ffff92b9c7625
Date: Wed, 12 Mar 2025 04:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741753733
