Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF793D71
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 02:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714528943; cv=none; b=r4aK9DA0NBGizODhMJKGfrDHsrXubwSiN7vEMJrce0bnMhWB3Fv3XxXs0RwVY0ql7aMSmLs1GtBWBFdKXLzMMb7cDGg59hgrgrgTtpqdr78swchYTUqr9lzaEFj9ru9GcA8okbNp8r2YlwsLLBH5kSl4nbCwwsxuhb/MmkJsD9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714528943; c=relaxed/simple;
	bh=TEiia/8lbW5kzig04M3OKgbHmmj2WQSZ3zf9TkXyucw=;
	h=To:Subject:From:Message-Id:Date; b=oZozd+8D5t9mEn312TUF7b6PcJ1TSnFYTyCmIh5BlXKXfC/YNcjzN156JTuxfqN6ooWrguE0jZxzT+Yv82eBVCKEuu4gIBB/zgziqv9m+VwkakfhCoyulIyksGhS1tDKiFy3FP5ySp0v8lsEnbaXyNnwv0V6mXJD3jwuV8GptJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pc/MgY2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pc/MgY2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E18C2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714528942;
	bh=TEiia/8lbW5kzig04M3OKgbHmmj2WQSZ3zf9TkXyucw=;
	h=To:Subject:From:Date:From;
	b=pc/MgY2uMqJhQS8L5qUfJ2WA0l2/aOHM6/50tcHnLFnrQBrTtvTvNuUN9vbMNJTDU
	 M5BMNHDVBHCJwV3ELNcve9Jeit8x59JKfJ2xRY5qI+JC5MMVemRjYKqCGLzBaFLYO5
	 mQhscO83mqUbk9LQowOZh23Synk6HyFywR9aBHuu4c/nFEfojuTEFsraHrhTNOO4it
	 D+hEDWlLT81n7ZJDPFJoqGJ244f31M6XU20YrEkZ/j39MTcy1TN+HAF8iNv+r3lYMK
	 7uR8dogwjzCBnXayJCxCj3k4ffy0v7X9Ga2LwFIZ/xe5D1pKxdunICkhwZt5Ginaoj
	 1DP3SMoO966bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2795C10F16
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171452894278.26272.3949115018153925678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5463f973a03596c43a8f16642f36fb57fd3bf17acdaa01311bf39410931081af
Date: Wed, 01 May 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714528942
