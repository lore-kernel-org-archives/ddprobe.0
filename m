Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C6C14F123
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722459954; cv=none; b=FxcsS9ZwNFjPrJiGknlMKCwalKoCmIOZE4X+/O9/kGJbVfB8b3perD/0wdhC0zM0I7200Kyco6VoMaE601rXWpIBzJw0giIfrm2OtnylAFHKcKq6pn8WqeF+NDEPTWdsCJss0pN98JdvtZJANkM8uzbqC3LPXQIWZYeZOZXwy3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722459954; c=relaxed/simple;
	bh=JiypONFvh/u4UewdKdlPVWuicRdgp4xT4Um3LstoMJI=;
	h=To:Subject:From:Message-Id:Date; b=SRLQMTMXsYIcDuPzb5x1KscE1AsCe3hK8eZN2vDAufUNLg05ASJFZUtndn0Q3wK5wSKuLRdV2AWcrVxfxMgwoiFz9lTDul76wzSIys5ahrxHxSjOtPOQ3ULE//I1C7tdB15qrNwvpRxBle6I+YjWvU+u7Hh9VZOuPKENXheDtqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+95+eMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+95+eMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EB0C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722459953;
	bh=JiypONFvh/u4UewdKdlPVWuicRdgp4xT4Um3LstoMJI=;
	h=To:Subject:From:Date:From;
	b=V+95+eMRvndhqxBGTgeQGtEzl5OAlewW6tnnZdIXcFlFWyf9rXg3S8SvLXmGbQvrI
	 Ci9ciI4EAXtLYc6yUiLrURsITNhDPvCj0w7JqqIcBekyL1EdrHVGJ4HMGnhzjQSwBP
	 eFhSEhcjM+mmf4ZShO6Xqy/4guhMS3xvlt7hL6g/f1Q8gTpjf92GB44TawWMBc7DPh
	 auI5mmakF8O5z4EgWCm06cuaWCjZPljokqFm7asoRM0gZIx11LwpaMcAWK2VeofG4J
	 Fgk3SVIop/lHVSHgSh3Zbfx2+xUXgNPjNmZcRx+aCEql0IcZfL7HaHMgpcpxMJYmHO
	 MACikE+8MGjRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6183C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172245995364.5550.12080405609281847512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab8061622a5141ca6e07ef305bc6d15ecbce68f431750bcce9ce68f146ff7ab
Date: Wed, 31 Jul 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722459953
