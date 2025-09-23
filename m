Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2AF38FB9
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758589194; cv=none; b=uoa3ted/j8xlNRvCbEpyUsCB1OeC+yUoOGVVwFHLZ5bkE5qeMMV+9XB89vf95i8ebUbWm/2PR6gUmmuT49rWfOHcuqvXP8dn24vsT89tsyNg5InA95iMVgqmhcOoQb9bR9wGFlk5uws6Xo3pO9mhfFhus53OmX0GZMOvhMYjAFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758589194; c=relaxed/simple;
	bh=pMrh6Ji6vbA3659zfmr8/eEkPw7R5PrRycE7vJmOT7U=;
	h=To:Subject:From:Message-Id:Date; b=ELmvjmoNBWMuA/Ovy5uZRNKMhCoyEdoISDH8WC8ixtEt3qwvyvGV2WpRL3vGrhkSYvU52QYHn7l3ZuBwNKyHJRo8a9UtyQ4oh9WKmJyk6DQDY4CJOsQeTPqMOypfMmjJZgntDJA0dOMFu5CN29bLQdZ7XyEegcAXHO50phAbpxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dy+QaJgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dy+QaJgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D9CC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758589193;
	bh=pMrh6Ji6vbA3659zfmr8/eEkPw7R5PrRycE7vJmOT7U=;
	h=To:Subject:From:Date:From;
	b=dy+QaJgJVxKiSnaMo5S73soGZLUiOy9Vll/ecbFDpuHGFA6211j/JGKJR1sbb8sK/
	 iL+7BaB5LSzX5GbXBDc0PW2qriGEtOcYXYHkfC08UsqF8pkZJNgtI7xIIYzmTwanHi
	 zlDewbcyLJpOy2BEqVZRfUbIUx7M0ez0HQfYunEiRnSEe/FlCoIUAP1MHBF/a9GNiB
	 hD9/3E0R/ljhOTrqCNKbUmQyt67MjAX138wxh6JHhObKS4wwac6Or9cR2ONuZv61qL
	 ubnf5RdC+pO/913O1pN54whT99v0W/Wv/gpjqHtn3k48+Br57o9IJiE4gxMzZha1BQ
	 tAxbMEwL77SOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F90BCAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175858919358.11989.3840308015534784617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75bee4baa70fdf44b37c846a022c3864acf2f4f916c853ac84347bbfe57063fb
Date: Tue, 23 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758589193
