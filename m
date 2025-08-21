Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE81F3277AC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755782393; cv=none; b=BqZMy6OGNnzyMdVdea0EmB9JmV1pIYSka8UokiOIK9YB4PNQSZ1gaOZyUSLmLwbhlyCP6Hsq415Id/pOIKr4XyKCAgoBI5Y3Lh3ujmzs2JW8Yby/cNvpyKsAdH+gSSN0PPhom5bUBpw6Mb/tLZIwxA1fF8ISK1KG90jNJVqxlzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755782393; c=relaxed/simple;
	bh=xozt/a3ZqXetZlBUgvwb2OTl59tlYOswaEbV84e4vWY=;
	h=To:Subject:From:Message-Id:Date; b=Ocs5L2tsG0ZBqRuXn4joow3AGaBPTFdFm7ZCGh0ogxYpHskvCJbGihvuWb0h6GTziIOmRzrWQoXxL4P0glu28tC7ezOD7ySwx7JO4686anYmbR7GpD7ws1KC45WVYoe8wIMwbYVuqF6i/dpUa03LttTB7IwgYnCay7urpCPjW7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLNhN5Nk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLNhN5Nk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED3BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755782393;
	bh=xozt/a3ZqXetZlBUgvwb2OTl59tlYOswaEbV84e4vWY=;
	h=To:Subject:From:Date:From;
	b=JLNhN5NkUEgfnDBkHWWzYXSXK3hYfDg9I1FlRjgnstH3Y2ZjK1bldPz9zxKysHYos
	 D9NDCwTiz3/zyEA/qR52coI/l7d0Qdckw8TvoLLAQEsr/8Ek52kCzoOzUkd9onjE+s
	 T84Plh8G96qk/lCfbUJxdhg5y8wbZbM1JpsKInIIcZCa/zkOw6UCzakjN6K62UwNyQ
	 9rxN/rO6PrBX0gF9Wx96LhLAG8xden52LTppdnrxMOlmzUySxhSN9x+xkgzQ7nMXGf
	 J0VnoJBClSN4tq20ttsJa56DVQMRcHLMpr6Dwqs3sAhqVtugass3ZKQ3jMTjDz7WiD
	 zbADuaeKDURXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900D8CA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175578239358.29654.2965685082303599411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b752d3f3bcfa73c1cfe8afc94c7882620198fcc33261cb24861092b597f3ec
Date: Thu, 21 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755782393
