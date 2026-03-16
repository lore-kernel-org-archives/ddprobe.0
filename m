Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1607D223708
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773689094; cv=none; b=ZqOZfuKp6WLN48BpgNYoCV9PRvugrfDr1AiwcEyjgOSoaLndcGkk2rwvbhKWjZrdtznLN4nABHi8KxIwHWB/46e6763WvxeS6H2HtYsypqtuCAjqWg7cGeqJX4uqn5mNzifReEh8eC0hV0RCRQik5Kj2+Oy83G3NFhaB34kDcxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773689094; c=relaxed/simple;
	bh=bE0hIwpUc0tOWeFa3Kpfi6LvR8wrHUNkLKQfi9kEdBI=;
	h=To:Subject:From:Message-Id:Date; b=PoFmwIXbZJCqpcpCWZgZCZ03AUYnO5nGxlvrgGJs1yQ1KQAVJAFCxi3imBFZouyP6TgogZAENSDFVzTFJGXuXmmtRVmrcX8dYj3n922HXLbnAHrfNn75i8MPZnCJC2WdbqzIfkm6e2DJ3dgz0uSPdCzYlli9G0YyQoVgxdm8B+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzCDpafH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzCDpafH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A180BC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773689093;
	bh=bE0hIwpUc0tOWeFa3Kpfi6LvR8wrHUNkLKQfi9kEdBI=;
	h=To:Subject:From:Date:From;
	b=WzCDpafHJHkmGSZvUvNbgyFKVeetuEdlo2p7QqgFTfvOzbehI9jS73E48/aMpsK+W
	 p+WOG+zND9tpSP75vDAuy6BYh3fq8TVNmkfuACmVoj9TPp8uy430i4j/wOIgLgJCEg
	 1ObYeFZ/Dg2+5jSAcsVb0nqFpbamhbKiAPMdb9TvFh30CiRzevaL25G1uGpiwxwHQb
	 qBjRFZl5er+Lh7epN+g+W+9+3w4pRpzB9yN3mOjbLw0JXfKyJgsAvbFA3Ia+EovgDg
	 LhaUeF59r7aSDwUkCmYT1W4u6NYT+vhcSxQABM+OKXucA4MbOKvOj2jT4OHnOP3/zx
	 BQRL0iYsfCMWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAD4F53D90
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177368909357.10205.11004086088960275267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c5d1a8deb09f598903cd7103ee05ee561019815103f78b45f5287e283444f0b
Date: Mon, 16 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773689093
