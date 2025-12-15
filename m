Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093572D23A5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765805574; cv=none; b=sGxjPae9OSKq4ivfw0toCiYYqhmPyHhiYO3HwaNQn+SWBTH9jMJY9V9GNS7z7GpfsNEjkJoJRQxUynRL5lIYZjaBiVCx75k5V9A0dmThhxQhXw43a/zWJYvnbqlz7nwGkoeqnoHyg/RmEl+JmFXf0BvB2y7Fug+qhKEIhP+Klss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765805574; c=relaxed/simple;
	bh=4AqWIhJYzn74rza5NCCKlYbWqnQ6N4egoV3tluw+9MY=;
	h=To:Subject:From:Message-Id:Date; b=UxVzE9CKs53QyXih8Ye9kv/0BaAqEpWqdBSIYBgZ0hLdFnWX7M0fXCyKuA0/Orqka1DjCdLHORTRbyUthaVWt4CYmTWTTxUPYa2nHWYDYwFtcW1bRAXOs8zpxpCVQ9UzComHDBeSPCguPK9fdYyTRiCfmzOc6N6E1re/r+EeyUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ze0pudvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ze0pudvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C26C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765805573;
	bh=4AqWIhJYzn74rza5NCCKlYbWqnQ6N4egoV3tluw+9MY=;
	h=To:Subject:From:Date:From;
	b=Ze0pudvJtsXcJkbMOwVsbv9LD35uIM1l1CHX4eGsJ18HByKRxc3V+vBMRSkCM8TYw
	 lhZnpcxrfT/cn+blh/p4ud1AOwIQirJCBv4Qae6HCbmDuMcKu7U43uBsuQ4oFFa5eh
	 yduQ+VZ1f/Ur5q9xkjhezC2FeX97my0mg5oqzbr9ory5taGYzHS0q0sQg5FkD9xEOR
	 gqhT3mLoF0o27NDnNwaT8JntqeCgihWg5f5YmNJSjEs66+KNcquEPFg5nVfYFzUN/l
	 ISjBQbtvrKeSRR3SKAkqmHyzlbdvqZTA+ke8XrWRpMVBpTN6Hy9PTpMfRgbJTm3lrs
	 Q1UxIRjXRJ6XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91638D5B16E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176580557358.31555.14873651308677760176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 293e551d524800a6834729792ca9204f9dbdb07409f365b5665f6daa85303841
Date: Mon, 15 Dec 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765805573
