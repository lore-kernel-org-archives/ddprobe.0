Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3A12940B
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758194994; cv=none; b=NIUYodvU40XOamlAN2tfix+J+fCZwAeD74fJgqk2LyOJzoK9XGp12lzRvcz7qlevgX7YWPQ+RH59BSt3Nx7zWWOEkAtjCE8gJ3CIuDDCTLCakyjmi7ZL3iuYpqExN/VVe0X2V4ado+HW55d0seh6/8qT8lyWzUiri056hOckTkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758194994; c=relaxed/simple;
	bh=XEY47EKeEQjzS81CALi70Kj4Vl3zd9ntn9kXgt9aBoE=;
	h=To:Subject:From:Message-Id:Date; b=bxXIBHCq9jltqcHwZ/D91NX6k9EgFVx9ESQCbdl261RCY6mJeicNgVjqpoM5k9Qb71zcRXMVoPU1cuq2Zq5F93YsoAYDv8J2bMv5n+jSWthawcdB7h9KY2DpUHhHNFdbdOeX2EJmiqd+DoM7sucEmfX05IRF+1V2ED3sUEQ/Ry4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpNR1W7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpNR1W7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E2CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758194993;
	bh=XEY47EKeEQjzS81CALi70Kj4Vl3zd9ntn9kXgt9aBoE=;
	h=To:Subject:From:Date:From;
	b=XpNR1W7qeFNSwipX2I4Oc10xjO6Nq9yv/14/YBhvLZ8wJvXYL4p5YDhEXYiXniPCU
	 oAEVt5H9PVS0EHOId71f+DzZwLTV/GciIowkhD4eCaSYrau1SHlLfpPGEMhelY710e
	 I+yIMIqjlKM5F44WVcGabGqQNNrNESgP4ZgTMzii+OFIHSpw92ZHez8wWhqBv0KbFD
	 AfEMPkHvHq2QqzOF4yeSzhRtYFFFNqSd3EbCs1V4bS6Xxm1kWMl+gySPm6Ojb24EbL
	 +IlMlESkbld36qurr+Tm0jZ7xHMGOJ7mDDuMy66ucS2zOA0SHsz/OkSW3FCkmjULOd
	 l1AJO0X9zhtIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FD1CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175819499361.1824.8913753636734936767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee977a3699fe38d63a793fa0971cac7ec0a40cac49b6d07b3901b76a3f406f4
Date: Thu, 18 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758194993
