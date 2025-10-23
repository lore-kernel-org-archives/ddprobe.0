Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A512DF71E
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761230393; cv=none; b=I2ERmcMcVVV7gj2WNDbgN6PnUDfOWj3A4zG61lR2gQxJXYTs+TDvS673ghVbjEZuY8Z0J8UGGn+KHW56kqqYF4wF8GK6/sDHeSG1UBJiSfv8qTmhzBksuYz6V3MZIfHWJpNgXWHt1aCaafql9ahjh14OGKAT4Qppvl0Bcvuz8+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761230393; c=relaxed/simple;
	bh=Qz0MvS2v56T4eZKynF7nGAnCwcplA9CTWGKVvf9j0LA=;
	h=To:Subject:From:Message-Id:Date; b=RGjF3P/b9wa1yqWms6p1Csx/rcl15GjGkpsGbFHu1HBdgVfndk5hWHeOFrUJT6q6L+1M1IUwBiuNEloCzDRjPjHUQvh0hFpAa5gqUChoqD20id0R0oX1dsdT3HjjFQNUoqO00kP3Y8UfuSYSd/7rY2ZHxurlQIP2pOb9rk7BhlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAjuhLKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAjuhLKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22E4C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761230393;
	bh=Qz0MvS2v56T4eZKynF7nGAnCwcplA9CTWGKVvf9j0LA=;
	h=To:Subject:From:Date:From;
	b=tAjuhLKCE2X7G8ojuqUWCwu7mfDKz6srlf3McagN2IyUgIx0r8JAJpPhYweWPZdfS
	 1Gd3b+TWiHmY6JpvIav5mKpoXIDOvL3bRZSk6HR0kwJTqfrC/VZOoPXu6GHTCzcpiR
	 jj1uvNr7G3n4Y6ZaF/JQ2WyiZOPkcSYgrqtHEYdWgwJ3q6b4potKcqADeQ9wEclrAQ
	 /pom3fW8pt0iNX+ULBD1jA/lpj9PmiwCpTPBFU3UiAQESczAcUq+Oaq9LV0SUp5x31
	 lYIPynkiDCNkIb/f2wqRfTtofNrzIiGrMlRCnDyBkh1uH3RTu0XqyUgMgtdvvDJzpW
	 aQ/vs9JqLmRaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9277DCCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176123039358.31483.17703411600621082635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bc4428e7832b0538afedf93193c1ce48183931d497db2ab03fd1e1399651d3f
Date: Thu, 23 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761230393
