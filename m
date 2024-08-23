Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD60C148
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724445354; cv=none; b=NPVPcMvV+9XrNiHycyknZhLkCxuEMcqnB9rWLGacwZWryeEwz2ANBHr3AwpEBKm0n6l7w6d6F1akKl9NRTTI+lQ7HglgP56M2cz4ADSh7P0zBrLzS4P7L8qJ7WADH4XZKloUz6EvInBq7nodVsvdsJA7bnXPeLVNWqNHKrbgo7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724445354; c=relaxed/simple;
	bh=JqdJLdH7UkpRt4L8WbBdCuxw71VkcYdneRIbPzBBZsI=;
	h=To:Subject:From:Message-Id:Date; b=NVfWHtps0GTskv+as4SSrZiDVikSTzFlHjHLj55sx1WBXXU14+VVeNTIjJQxOUkWUGKU1xlPgUmf4nJaSIQZqklQH9/wKY/reMMj8Kyu3WUjblJxqPqmxs3L49v8Wm9qoXgbPoALhQGtTwlVPPM40yYdX9OfVCx7TYHQMCFBMTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSwl9+mN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSwl9+mN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BE6C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724445353;
	bh=JqdJLdH7UkpRt4L8WbBdCuxw71VkcYdneRIbPzBBZsI=;
	h=To:Subject:From:Date:From;
	b=BSwl9+mNP8jeEuIvNuEK8E9uab6OSzu9QuqOrsaIAn6CC24VxdJ/0xuEu8or2JVWq
	 +4RXpK0W9GRmt6VRDitNdYgH/ATX25CkMwz+lYm8W64/ZluP5vpAsBaajE1yVgtoWr
	 Gs3UwkXhtZZSiccapHz+u6PIsdzLhBUfCR+/342ABliD/ix8Zxx31pX6YsdiXuqnPw
	 X99m060psZ1gvBWhJgXMXqmDTvOdDbYfIZ2FX9iJj1fWoQdEwvZvsZHWVX+E8NQtG9
	 VYmpuQLnNAFc1FYJicrjtCS0m04FIQnf1yhwSlrDx+rJRb/ZQAkqcXyPnf1DsGdDeW
	 RkLVhJGyEu8Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99747C5321D
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172444535362.2475.14638544047263750794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41a91184730632471eb09e722fd73ed4979dbba034ea7d03fe781b66ae08ebd6
Date: Fri, 23 Aug 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724445353
