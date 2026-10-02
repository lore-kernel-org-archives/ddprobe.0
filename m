Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5573449482F
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790942434; cv=none; b=fsCoOmLLh95dADCiORSjmBCVhLVlzWrbsqUJuiD92I6bpYQp9TaylmVA1zWlQqy4/1+ejTfB/xydZbEs0iqYO8Zrs/g4MBM79/H0coOeILux9tVz4wR/+n1Kh2+rktEJlF3yB4GkeWfBI5eSo0ci5FyIqEjkjEx4xyHCSHlGOSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790942434; c=relaxed/simple;
	bh=qmfVbnGqls1Xu/ZNe8HhHrcWsN768qKMFZEwvclaSr4=;
	h=To:Subject:From:Message-Id:Date; b=kUONhWh+PaqmzbJ3KxFK0HaRnVBICH6VyQQi/om0vUE6ZJ0KnDIRegPCsaP8R7oknN7SgU+eh+/fBO+BMZw6a3m6zjJJxlUxhwjJAd205IBYSIanX2xOnp5OfOaCCLYsKGWUltAeGPDwIO5foGHleH3VZvQJ/K9eyxNm005Zgzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPqT1AiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPqT1AiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC12C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790942433;
	bh=qmfVbnGqls1Xu/ZNe8HhHrcWsN768qKMFZEwvclaSr4=;
	h=To:Subject:From:Date:From;
	b=VPqT1AiSv6B/9wSgwRKXbjgA9wz9YzA5r5Sh4Z4uCJ/Wtq5f8kakdoweSWeMov+UT
	 yNFSYVORhlMYQatlSy2uAIqGmt3zO869xjr3FjTBeQqYjKl/0TqpXm8J7LGL4N+hV6
	 bgeB10PwBLHJJFgwuleJz8W0qH4JIxW3m1b/AjZsD4rRcnES2BpGTyJzMg4rSVbTj+
	 dGKJONp7xHkALkMdRTaDKfONnnJdMqDdwpyIyhqQYjkP62XeHxV/FEVeIQHEF7I0BF
	 6t/08avurQuw4+8lGRVXz+mkfNVbgwt63JwfwSupJVtWuBfBneeKcbWx7Q+OiBq+Yz
	 v3tKKAQ+HkceA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB01CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179094243368.10421.8360933195596420217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ad12666b01be7ee39b9409fad973acb0943405c85eed83f5091ac03254eda3
Date: Fri, 02 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790942433
