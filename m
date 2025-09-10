Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1F624BBF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757477994; cv=none; b=juo67bEqtBtDGp8/XwKsNd9kIbjv1nBqI/WmdGD35OmVKMbkkVKnbqNocz8897n6vucUNszOqifIeSw0V3O9Py2UziZCCVYiJZ5hJhqupKpoLOnT4fLBVUSDexKRc1s8XvypHYNo0rm9CPH6tN8291ela8zFDfib1xgtZcKGfMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757477994; c=relaxed/simple;
	bh=qhW+xNoXKPBVjpGYHw8emWb1cUnl/jpmFJinmmbi+gs=;
	h=To:Subject:From:Message-Id:Date; b=kC0I5CQYjXTD+EXTP5aQW8EVlekQuL2ogpFyfZRP9MfpjlA+bCIJAtkcYpChtDaAtIHgZmxKcdRQyVu7r+xTaFWGVVtGZgPJ0SmqqWI8NR+m5I/UUop68OdK0U5QiKbnx1aGqy02j/UJ5eQVAqsFyIwZAYWP6xdW5bK4eHPrrHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HA5C8RVZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HA5C8RVZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F76C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757477993;
	bh=qhW+xNoXKPBVjpGYHw8emWb1cUnl/jpmFJinmmbi+gs=;
	h=To:Subject:From:Date:From;
	b=HA5C8RVZepbkFv/jTuxVS0vU4IrViuE/VTeNRYq94gEZBdVF1bDGC+WVT84xm8z0z
	 WzZo7vRUnJzHxAGhph4nvcqiCYUM3K+hx3UEiPe7sR3TnTnUiSXXe55X6CZZEezmcb
	 pk24cUU2Dk5x5GQNMRz/8C/7EpJzCm5kXEFWiCWsPFAEuPVBUSyAaPZz1JuBKg+TEw
	 5eVgJNr0swgxAP2ye/VBetyxz9DzOU/51zdkes8BTItNGTwstKkO39d1JzqWVmXkiK
	 UP/mmFhil9R0ynVViPBBtks4wPV/SNj1vfuZMStrjWScDjsSV7uf1Yqnj1GavGTLOa
	 YhYUu8X6C0nCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9150CCA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175747799358.28780.13396538844165826413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177c37cbd6754f53442e7baa8c92fd9e7f6a15f62e6d3cf55e1638c59c9662b3
Date: Wed, 10 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757477993
