Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377D913174B
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727006754; cv=none; b=Xsjwt7RW+XAEStCSRLZIt6iaNWI6xzRckTDThdPEB3kHi5AQ09JGXZ/Bhyqa2X5yghel75ROIrX1E9ns5wfSMDopZ4ch3+kFA/qbTtMRzwRyAUt77AExbARIki71XkMM0zhLSIq8o7e1eDNqwDxjQ3+qvKrJNyGUgy4m8lMf1y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727006754; c=relaxed/simple;
	bh=QW1kPw4PzHp2x+vmq2Icc+gTlCcuZZ4pjDGUoV5kKzo=;
	h=To:Subject:From:Message-Id:Date; b=m5RqDesnJeJaD6OQwpL8MAk4KGeT2dW7urMTfZ9nzfXtGZb1ndqjdDvH6IiRuKk3HOFi7AwN2j5+YwaCP7YYvbCrkShdU5zRu/kNsTintDhMVJgrRfBbCKxLwYJYHqQgU3eRJOr0ASiTpLnTlgSyzkFgTWMZ2BcTMMNFqiQq5fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzke7BeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzke7BeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C30C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727006753;
	bh=QW1kPw4PzHp2x+vmq2Icc+gTlCcuZZ4pjDGUoV5kKzo=;
	h=To:Subject:From:Date:From;
	b=kzke7BeAAe1A3ftES0zOTJCc84O9I9kVUXGoIybbVXcnw2rU4Y8fDqoLWmbB1rOTP
	 pyjkv1ecteKptUw82HxJrX5hSGdVuVxEZPYT6LRQfsxFhKSOWj9LDDiFMw22QqCF6c
	 oU5ARp+DyVUhfSN3DmkhSLv/57SDN9aRO3Ow3XzkYsxTR0oMbNQ8ZrzONXD4DRuj2g
	 ZwCLr3qHXPQfIG1NmHvD55VUnTwnNB0y38oRoU7/XPrm2Guc/HggqeTzskCzgvXpPN
	 HNRKlPkEfMpxkwhggvOwF/vEM9+/BmHB6alNeoQSAwyKP9dVYPuxccVYoCCDoJDYza
	 41qcA/TGER8Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959D4CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172700675359.26782.4602414391770691013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fde31e433155d6ea6ef0a03fb28a6b11c7fb7c8ab9a8cf24970d65d57453534d
Date: Sun, 22 Sep 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727006753
