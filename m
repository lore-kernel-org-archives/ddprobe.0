Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168807082D
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756590595; cv=none; b=gHV1El/n2PO/BpjnCn454yWJN2AtVKBS5VWBAoow2pxZBoZhdxAvBQkrNeqj8R9lIIkxK+E7XHD+m4iS6Gnu1n3237e6GRkEBTqiEnZPT6TbaFAkwBfvdEbutYT4ATFuYJwDHllDyYeIcYi8JOIHXkkYCy56cXqp8Py7NKwnpjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756590595; c=relaxed/simple;
	bh=W1MSVG5tVIs/THxaQXYBKY9axO1JkPo8HMvmMrWPWvY=;
	h=To:Subject:From:Message-Id:Date; b=QLKJrUjjErTlhO9zbpbJVh4iR1mZnbLArDU0h5Ds2ift3hLfideyyXoKM7D+IMryX9FyKmKv+gedqDhWW0vPLpP898d4I9nNBTy5oytO8uyDLSpF2qpEbUdO4ROa5CZq0RLwowEniwrjtai3VWAGMBqwZNhZGrWt1aHoGDSvbw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qe51jUaS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qe51jUaS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCEFC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756590593;
	bh=W1MSVG5tVIs/THxaQXYBKY9axO1JkPo8HMvmMrWPWvY=;
	h=To:Subject:From:Date:From;
	b=qe51jUaSyPSJdLSnNYrFBmYQUW/51j2FlPjelsyaYQ9axzZ/57v1dTa1DsbasaVgy
	 Z3pMxUHEknuXkLbzr1UHXyVmXaDdHfHdBewdpiZKuouWwE4/C9Amam5NqmzLNriIR8
	 gJwA+XZQ64Lzrax9IcB7tkV6LpZIMA84FKf1PGmE7mWrz/5VwzY7YHw3hIjJcq/Q2F
	 IraxmV7VY0Mrw/+QjNdpNsLnzi0OnEsxrWc5w7iT6x9s+ekbyh48eVyGSqmAHpJ5Jw
	 nhaUH34MKr5cBDDNp3NGaPQHw6UjDiG1hNOTGXC3lu9OEww4tHkvgrScZT7yx0wBho
	 PdCSd2QdjtRSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E180CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175659059357.7210.17862355067998598234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a515c7c127c2f9ad916f9d7f4bb852a121fdab1c37eeab44ca7d41883b670d1
Date: Sat, 30 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756590593
