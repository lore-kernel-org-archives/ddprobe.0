Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5775661FF4
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 16:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716827663; cv=none; b=PG3q/rJ6QnU6wJB+eyyhFja/zdNJVVXqZgo6ofC2wDwtONrL2/T2GkgOoMrLl9Pq+CV29vtsjGmfyHxZ7k6yJR6WJMUP7YJvrxsRG9NkFrecFVkOm7E9JYTWKcAvRfKCc8XMrcAtWJhTzgAIiB/zrS2uyTW3yuUsLKwD8XMtkfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716827663; c=relaxed/simple;
	bh=BGHDZignF7OpH+lBzcaZ3Suz+ErBzfEnpi8gOKf5ldY=;
	h=To:Subject:From:Message-Id:Date; b=WrN+I+65WV39k0xsocCyN2lk4/mA1Hf+vJSQmHlz9+jtwYyB0DqPH9W/U+HWF1e3RCz5XbJe89uvpSYVA4/dlFBGJ9jEEeKQEycnl0dI0o/+Ft41iPHYx++hZn22AKQqKUZ+szuPLLObCVCXA3GAlrW9E9C9Y+TVWsKp8urSTKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6YcsmxV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6YcsmxV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA8EC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 16:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716827662;
	bh=BGHDZignF7OpH+lBzcaZ3Suz+ErBzfEnpi8gOKf5ldY=;
	h=To:Subject:From:Date:From;
	b=n6YcsmxV/a+d9ep8hOASLBZ2aqG54b0SqteBD+9Yq2TqVjCSaJHbgY5AxtGq4FdET
	 1OkWKnDCJjGfO9Wqo3XkXjoudBQgEYV3pnlNRqpVeCVPCcnw3AC+q8s5pM+he3QRFs
	 mh1/AMlerQNDjyp0ZzZVnItyVi1PGw7JfFPAytxdZLZdM3SR2eRrJNxaBhqDS33WYj
	 DzSiBftGysWYwoaPI7fHvbfKxAowZR06uUHJwP+BeiEz3PvCEn6NAYhBtso3b3CSHs
	 J5g/g1bJfnkcdbcgoa8zTAGFeNKN6Kk7rruGW4K9wpIqR64jLoDOVLhWC4hmnzbPpg
	 Sup/Zyk1DcHgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8D4C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 16:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171682766276.22413.13368563739058637496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0cf8930979f65acf2355c177ec23bb285c93eccbe531a46d5de67207b87b7c3
Date: Mon, 27 May 2024 16:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716827662
