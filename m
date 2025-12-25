Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4671FC8
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766693034; cv=none; b=CxdjNUDbycKwQmX/vcXyuu/cwAPzVSiE5i9F/Rqri/rfJBOhrCexRGCTXO1eRQYHMv+jROV6CFX8S/zpYl9sHP5pQ3htCIHPHFKsUONRHPx6RIZjAyFi6gpSqC/9PpeWw3UrbrvMXIgGeYuiLL+JkWU0L0/NRs/y7uZaD6K7ma8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766693034; c=relaxed/simple;
	bh=UNUiH7G1ora/a1McdeWfTxXqSG91IpxUK08y8Y1xDKs=;
	h=To:Subject:From:Message-Id:Date; b=EbkdSS5AKMJAi3PxGwSHMsA/q/iLQqR4oKlfrDwN3TOMLSJHIGoiBZ+N344TKsg9Ssk9Zj2svqKGlTHncDrMc33Q/V3EPkwQ5dZQYArWBkLARGAOiKvTfg+c3yOo6w+YJy/S7z+Nd23sqQq40PCeQcYhyUjWK5ANqzkQZiVbuRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YH6FsSOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YH6FsSOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF629C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766693033;
	bh=UNUiH7G1ora/a1McdeWfTxXqSG91IpxUK08y8Y1xDKs=;
	h=To:Subject:From:Date:From;
	b=YH6FsSOYVEhJPR/3Q0z+SlXmOjaVjGIm5nm/NOiVC5+HgcrNfBuvAwcbW50BjBNcs
	 h2G7NTTrcLEoY5jInwaw1T25GVKXO4YepjmHTKv5I65AY9cqcr751pJ6BAtv81ZcCK
	 UkRRnfEywnSsj98BiFAHC50nPtUtW5C8HQjnVDSzKNQ/7nHXlLsKNST+iKJke/5sN8
	 CHsll6zF7wAti0Wo7lZfzoayUYxZnFaDIm+UYi3VkaaItG9pQKrFxXzjnwjsLJ7FRn
	 ICq1ZKhOyQjzgvXk5ZZe1nykM81J6D64amEtiVN0WwwzHFAl+ib3thc5YGVZzAP5rh
	 cbraKLJdytSJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D15EE7AD67
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176669303358.7760.12849765165743850162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11395db7f3f5256679fdc75adcb519979c8e7c5e5c5b70b080d7fa9b8241939
Date: Thu, 25 Dec 2025 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766693033
