Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B68815E8B
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772309094; cv=none; b=M60lnSPqAkRLQ4uCKQaUUwNKqKZvhG8IxdL1MeNhmjg1dvFBDyzwwmR3kVzm6Rtohs1huopXJ0qhm9HSCGncf/pQdOIh+ozw8Rd+hPnD9P8E7BIhD4RgM7TOqqgxtkJRZLeTxPZwbSKxbezAuenuRyou9kYRrhbYUsNTfkdf/ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772309094; c=relaxed/simple;
	bh=kJC1ukfCcYh1gigwMq/sdqhrqNVhQ4SFwf4fmVeeoow=;
	h=To:Subject:From:Message-Id:Date; b=egJTGZQA20tT47DrzU9eHTkZp4L6LD0e9TQsCusNyiI0hg+7MYJG4T77mtN5Kv9qMVu3vyzkg5oy2gq2u5LgTlmOUqd81brIg4kQUaA4UdXbPEaXmoNuvpr5kGvq9r+pitodwkqlNuRRCSE30NZk1Y0bNfxtAItoD9qMFPwTuZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8B02I8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8B02I8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A86C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772309093;
	bh=kJC1ukfCcYh1gigwMq/sdqhrqNVhQ4SFwf4fmVeeoow=;
	h=To:Subject:From:Date:From;
	b=f8B02I8dDD6ICVc+hZN+NYCV1Y2IHKzL1tbd2lGVl/GCsTEgnAfC4pWB5lW7BVssR
	 sC8ILsqc8RrS14wUpbACd9EEf/X9rz9NOVZO59M978IG7HXV/M9jhlsMPXlfkmjEcj
	 DfE5739v9KCpRtIuueGYeK5wGISyJjxxNa5gjGEvSXTdFwhT7jYhh5ZcusFUDqvhq5
	 B2dVj54qXu3M03W+o78tMGUiSalxVNAUh3O8EdinKJkjOubNPIIoLmFFZnfIjVWFyg
	 u/hng8ovSWnkMl3I9fUZgg72Do8F+hLx/WNlDJOMLGLVPgxHGO9JoYX3UaHhTMsYYm
	 q7Wmn8KUeegFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EE8FEE4F8
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177230909357.27342.9794578193610790444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d44c6f8910637d1890907d3b14d25d5b890b66f16cc126b6bb7579293f148ce
Date: Sat, 28 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772309093
