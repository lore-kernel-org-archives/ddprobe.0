Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606543F39ED
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790245234; cv=none; b=kinbdGKrLMd3X2JRYv/2jxWdueQpWx4plywNQK1QavGN9bCu1AKSq8hGHmt9kzpy9eYWk+NfZUWlrw/6tXUAdHVEflh9D67QjIgB4Kr+0ljW/WhrXrXK/9Ync6jFL1TUVv48J6o6OodqdPv4rsFtt0lqTcXFom3AZJSzYZHJ1eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790245234; c=relaxed/simple;
	bh=voM0KIMHemnD0D5cPjJ1lYrDy5YR6kjX4sI3AwzWens=;
	h=To:Subject:From:Message-Id:Date; b=lix+wgX4oa1YOA/5tLcFzDYAfcIJy97G9JAjscKK+jLR48Lr4nMXGwIlSVA14AeZ3QHwaUnSUhTzXvXdzTBw1/lv63jalqUbHyK2CQBcnv0j8tpSHs6zzB/eTh7gcz5BUltp8J/0rMO7d7sRztjzFED/ptGLR/CbB5Xu8h0K9v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mx8dsPZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mx8dsPZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3335C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790245233;
	bh=voM0KIMHemnD0D5cPjJ1lYrDy5YR6kjX4sI3AwzWens=;
	h=To:Subject:From:Date:From;
	b=mx8dsPZfLWfXE9/gAeOf4Qaq1zUrdbruKk1vbp/ctUC/44Z+tPlE9rbcag5RPyVC6
	 m1bRDK0HWjdEzWneLb4vCCzQgEpkND988khlnrrJ9Y4vqbXihTYeSzHr1FiklCxahI
	 YyDSx9KZigzFNAMRcShy+f4Rp+UEJMYdYVuvzcwLrzU7rwKnzvpUxiFcfIoATmTQGr
	 TAhmC1HJP29iFGOicPAQO8Hv+ovIn5jZ0xM/ihBWwQng4AZcYNdGPUUI+ZtUceQudu
	 sEx6MpZgRrRh6jPiVdfhIGatOy8bWUZu3RnBZzuqv5o6iRGy4airoIsvkhLdb7UNK1
	 0qZEPRsnUIS/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA50C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179024523371.20068.8991142145355340890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1de44de9026045aa8a94ef443e1a79a52f2eb5b150cd46307dd28f939592b07
Date: Thu, 24 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790245233
