Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D47F629
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737596154; cv=none; b=QoT6m8WSAiidAWeBsRxnBYLT0lLJnZWoXTXjg7DgszKcWZaWb6AcxCjtjEu/mqKrzM1BDzpWO8BAnhf9rQyKOipR1LPY+uhPZ9eci7qPw7cqw3Y00LrEep4vPw/HY33KrItgYUiZy7R4gKqM5IzxiZBQGxkw6H2fvgWDR7jQ0+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737596154; c=relaxed/simple;
	bh=rlrkyKfzH8QRxMW9HjgwgYFoF0cSR8WpZKqGqY9PSxw=;
	h=To:Subject:From:Message-Id:Date; b=NXsrxslaS/PnKij9D/4SIwUyeiJMLRVCDtMe6dRbRi/dJSuvGS8vjTWnR+7GeTA7H2FDfulIui8Z4yA+0KfBUAhZpDb3hlqEWxUlpfJrzFMBemVEDvoSS5yd79k2KP7ppjdSale3qH+KQ7l5/iPwGoSSa6fRprJsCX8fU4Fmdts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohXZGWIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohXZGWIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F09C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737596153;
	bh=rlrkyKfzH8QRxMW9HjgwgYFoF0cSR8WpZKqGqY9PSxw=;
	h=To:Subject:From:Date:From;
	b=ohXZGWIwdIawIT7hF9K0e4hYy59myH6dEVjUevS+sABlRzss4g9/fnlbfLMQhLDhe
	 W5vJNv6K3zfmtk4pilfwg/RO1DBn6B/hqcOox+Q5JffX3ZiaSrVOyT8eG4eGJcjFl1
	 ap4J7sO1z4dt6JwxZSMZ/HnLrrL90mJff8kdkrVR0gfIVKHnQ0pJZ3SlZ75Bvwzh86
	 LZvHEZPsNqc19+3ScOLSiycR0edEmO37z5cDxSXdDvhcHwLbgM/D4G88eliYvfNTgk
	 bDENdyP82LFLYrUq+9tZvhasM2uQbuGy3+XgVzoQaNJY0x0AWMd7MGebeiyjVv+4wi
	 YNkqEaEYmmQDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90222C02181
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173759615358.17048.4885953812754084971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f82d60260f169a97f92501a4de01b23c3024b903d24f22b43d4f0475eba1f7
Date: Thu, 23 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737596153
