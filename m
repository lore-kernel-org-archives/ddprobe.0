Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25969272E51
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749638394; cv=none; b=RfT9bK2cUflHTGcfvCjt7oiXsGHTXpWiiIkRWiHGHSFIyOmRZhFlPQeEH9a1SsED5vDZ+lyN48BjRSreydY45lwmvIUDEBKD7r71dxi6X3CTNK1N1V/UDItpg4OBKFDcEyEpLZC2CQ2BLmIE8w1TvUOA8k69X713zAQ+irJuh68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749638394; c=relaxed/simple;
	bh=I57BFrOEpwyROq0OB5TYT9xqRihOpnTPdxlmIPf/RwA=;
	h=To:Subject:From:Message-Id:Date; b=lzjjB0KrnHk4oUKQ/0L0dKUZG4+fwtEqukS7ZN4mwJ7XZOQWpHerQXxmYvqoclQ3b5CYryg2wOQM8q2pludlMLe8U9/LoWQEu/JBngZkIjKkMDn+5+MYiQUvs2e6FNH0BVHZq2dwW8B3EfEozbeffgzd/eHj4ZmsfETxLOm8cQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXMj3cO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXMj3cO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32B8C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749638393;
	bh=I57BFrOEpwyROq0OB5TYT9xqRihOpnTPdxlmIPf/RwA=;
	h=To:Subject:From:Date:From;
	b=IXMj3cO4Jq8VUzo3cfLuE17bfNQdNtgUHjanr9ADrnDowrIFLCFLsV2TFvawN5eZ+
	 PQtSL1mhTmIY2F2Malm9AJuYImsVkTTGw7E3e+m5U4UfIQ7R+oFRYCJbWGAJD6ZsbO
	 EWp0MnQcpJXQuzbOE94xHNZg3X5KPHLZr0zwSzyUHzQW1ctniIZyTHQZ88Vb9MjbyU
	 J75UwWnM+cAVMf611YyE+MDep4cAVZKd7xJteSHfHGbF8xEmLNCck1QVOqC5SPUDXu
	 NkxzN0rsJLNvYQiRoawzLI5WrdGuAuGJ15doGllGseTzbp6wwrCMUEfKKOos2KDpUy
	 CcKPzB7CRNYfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F927C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174963839358.23759.11817308169189202886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ebc7cac6bbf80b85415e2939e472ac9b673058e47fa6637c949db2cf472a7fe
Date: Wed, 11 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749638393
