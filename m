Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F167387372
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777631254; cv=none; b=VUoRkgE6VVkdD8M3cJ16bEjkP3Q6jNCvZ/jBnGWqBMjkvXbPgw7Qbo5n9xNYUhSPrQoGpZazi/y8nSqjCbhzOy4DiuYqN3HzCVepiMcLdlBhwG0p+lkuXg3f2R8iaSXQGFGVYmSu3knLKKGSHVwMc0e7XNnZnkhN3lSKUe+cuOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777631254; c=relaxed/simple;
	bh=HCzry5hlTzRiX+LZxsr1hwmin+shN4mfol7lYfA1uGc=;
	h=To:Subject:From:Message-Id:Date; b=Xdl7NPHAg41pzEa7JpMVrW1dqAqRDErYrWUn6mqwM3D46AM2ihR6v0kzQb3N7I+ogb9VAg/COQHiGjo1PUgVQD6GX5PQZH5IP63tCszqQjaWbqiA2y6tN8vAyEBmmERTl+uGp86Rbb/vTkOsujUPR+4zw8/m5/WYpWje10KA7Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdqIDqs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdqIDqs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A76C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777631253;
	bh=HCzry5hlTzRiX+LZxsr1hwmin+shN4mfol7lYfA1uGc=;
	h=To:Subject:From:Date:From;
	b=fdqIDqs2c8R943x2QTOspgU/+jDnWH6ukhYjhRIlJgeibizGkgl30UoFKX4Ph9ojl
	 a4ZVRFEmo3gP6IULQqaWdU2uHudfyCYHDs7qUPkrcVtbosVEVJf7UjFPKG+g3VHus4
	 gLFvlGdFlNJwEk3uQ83pH5y55Gf6EMdf9NJrk23uhkTYL61vPI/FaXBQQWUn9jHYr5
	 Ie79+ysLKwlgM2cU038T21ash1noitCFfQfeLXWStR7QHw28AH/XFHu3ZJDjUUA0KQ
	 R3PYN2XvwF/syIbl/ZbKQDf+J4GZdHz4hHdubt2PndWhIi26JilM1xF017uJNH6DTe
	 Mmr7xdPcCg5Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC4BCD3424
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177763125369.920.5030516953128277522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d84e647fb9eda25d794c28461a827658d6d114fc21ff62397a1d96eea9e0d3bd
Date: Fri, 01 May 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777631253
