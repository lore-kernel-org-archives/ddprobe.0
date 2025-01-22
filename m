Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C741DFFD
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737531354; cv=none; b=f412LBl/78a5i1a1zI8qNSSIFGmWm2ofvcgGa1RY3QzeviodkZgGaowwbzWCw6NkJIoqTc04qJ3uIGFuDVS8vDX8tvN+8AJqH+AP4m/QSBf/qTHF6ceJWSJNwfArHUojGXS5LG7L+uaP3P8X28boHieLSfSyErIYnaw7ZlQs2YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737531354; c=relaxed/simple;
	bh=LCLPLh3dwc4f7EcXDyGWqmfw3UcvYr8YivYmG1kUtOY=;
	h=To:Subject:From:Message-Id:Date; b=Mcu1h8ylKISkmYB9NgBuHonpTkKvTdmgAkgnRt6ZL0zvitfh3dhezYfOJqHXsBDcP38TeTNpIy3n9Y5bexpLSKSDjNY5+hUlcRj6CLaGNc3w/amkFxt9LeohdlvWg5KZt4YYqXdLvuzhBYUnwGesCS/Map87o1bPYSl/JGVq2Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPrdXgc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPrdXgc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B29C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737531353;
	bh=LCLPLh3dwc4f7EcXDyGWqmfw3UcvYr8YivYmG1kUtOY=;
	h=To:Subject:From:Date:From;
	b=BPrdXgc6ckGEwrPX5TtkaY9HIrhEJ25eNfqaSgB0Vq+A0yBAihXdfP9pVB/u0RRcC
	 QwHrjEGj0r4/PYeeyty2B4ZouCG4/hbDlhKVQUOzcT/mEKHxSdKHXCFINmycQ3lMIv
	 5M/KG/f9v58UC7q1XMirBHoCgWwiFfHo285B4GWK9+BtBv+PST+Lp69VUwU4zd0sLK
	 balGZApOTpOo58jVvt4n/Rnsi1SSFZWZnj/V0YE5bar1JQsoR6vRj05XSOlnbNVL3u
	 cNk9zQ0rKRy4UP0QfaVrGJZnX22Xqkc0lAPeRPWhSdJuqxEcYhw8/Lw3uXw1Cp6A1h
	 UHqz18lmlY2xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9542FC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173753135360.30855.10649590533163188849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02113714c16bce9b22d1b42726d319153a1d2d35663fdf728a85cea60d91cb8e
Date: Wed, 22 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737531353
