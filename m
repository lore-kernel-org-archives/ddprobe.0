Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB87129DB73
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755058193; cv=none; b=UnFz/4vNIwP7MPJRUxWdW6Q/2T6YwaJY5xws6rMe90jbcyTj+AZYsdGNTudg9gZubfzEVU3nEBJw/8prmg17fPP2NUXkqAnaw4geZ6dV0u98BVvjg1tjbbDpJa9g/d6ZgbUdFOxRv7Tyhf2zYJNZT2xeTBFvRfLsIycQYPrDJhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755058193; c=relaxed/simple;
	bh=QKcVYKxATDnBfkRPOVsyZwEwjLj4Ue9wUKRehF1gp5o=;
	h=To:Subject:From:Message-Id:Date; b=dqmWzohBosrP+2YHbwmYtmYNd/KIcqgJKFad32DJ2ZvyOvjO8UfxtF3jHThtWUvtS7Gs09rU5V/Nax23E2bElU5tQHnbpdUfZp2aSEVe4TlC3vyS00vjije+FfggbTOqm+szrznYZ/jMy45Alsgu7uwx8p8a5xuuQ0715Bgo/pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpgGF3LO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpgGF3LO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12F7C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755058193;
	bh=QKcVYKxATDnBfkRPOVsyZwEwjLj4Ue9wUKRehF1gp5o=;
	h=To:Subject:From:Date:From;
	b=dpgGF3LODblcJhDis8d4XxYo4wqT52ZN0EDDvwWQPw0gt6mSNBmpnkFz5/gmJ1wt2
	 0VPXvzxZ4zyYH//L7VdUUEmM6OpVj+fmffH5yYvuuvJtNH9ddAZmPEXCAjmGME5Vd9
	 TgIDsI0cL/dUTgIvPqH3xXbpLV2KqkLPLBYBv/3N9MQn3mu71SwNDo+vcvk9nMrpRA
	 P4NeB5Q3JjCM18ygtrVY//LcT9S1si2iH78Go62T+VqhA5+ZHklyzMWP6RuSqneXA0
	 bbHUE2wO9YFSJAecNqo0XSj4pluyEWSgnQ1oEADpUuDyb6/lx2pPBx47Wgqgzp8uq0
	 NBx/SnlWvXbVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F896CA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175505819357.19556.16030557334904135177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f6677e6c8ab90ba6618f9276003b37f65bf278d2611d8f0b990874fcf10e36c
Date: Wed, 13 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755058193
