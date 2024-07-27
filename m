Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D47186A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722050154; cv=none; b=g9ViDJamFQZRQgjwWULWj2F2366gPvRHAWHzln96ffGwH8TKMkTdOEyjr5r44OUJfLDeXPZeKi85F6JdPZt2A7tJEoXAjk4XXp45NwUz6yd7LYX7Id90BKNz/sC1LNLt34U6R1tYVvUcXqoTfpY3T1ovqybJBD4GuT/qTVK6Pzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722050154; c=relaxed/simple;
	bh=YCOa9B75W9hKmLWSuuVfAOxEBDrURjfTEuZ3DoXr+28=;
	h=To:Subject:From:Message-Id:Date; b=QbIEtDpYpPm/yZwUgX7lt5l4BEdhUKeLgfjjeGiYsixGHgv0BvtDrZWfPsQJgqEcWXQCluWRryXxKLvG+QUoi18xpz+XeW1ffRXTcsDyWzibYyxXQJ/F80OnrDKg2hEscIOiwWvpDGEhJ5m6rctRWKEYuOcytZQbuv3ytVWcOFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLmBInOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLmBInOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EEAC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722050153;
	bh=YCOa9B75W9hKmLWSuuVfAOxEBDrURjfTEuZ3DoXr+28=;
	h=To:Subject:From:Date:From;
	b=OLmBInOh4WbuCFWOygojSui+8KQNJACFZpCh3ntsViAjskghu/DRZN0Sghpr+ByrS
	 VKjpm4BK92uz3S6t/7up9rIEzQGmP3L/MRcwM2XSjz7wGDsZ47cyYczNCEZez9ead9
	 +qOdDKEKKWWpeInJ3rMxb7Iz1RXjNZlB+op84KvWq4PyATK6GDwiiYcCp/SEI8wPkp
	 1OOgsVLfkZ+tpxxlbS2LmSHpnq4Ca9RINjR8dBNN5Hy26HZdn9NKpFIpyiYCD9ZR8Z
	 1Z2ZYccEXkT2kEKv3Vj60gRXw0M5WB7sIu3x+9v/dX6pFDfUVPcz0ubB6dcBGipvo1
	 Iq3q9dkYmgQmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92325C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172205015359.16766.9432548300030441891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa0b54544fe025176175b85aa9b0e99c742fbd2e38fd33b92be3c2c9c4b8325
Date: Sat, 27 Jul 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722050153
