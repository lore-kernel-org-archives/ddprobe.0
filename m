Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B6C15C12D
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723502154; cv=none; b=GZFbgX3i9lHWqYUnFdHCo7sAo4WYfEyD9pLlgwCED5XR8yQKPtXYB4Kl7WwSkpKKxbFNs+yl1ARCQyrg/3L7XWvvMAzA2CBIunGN6yrSlXsZ26GG6DscSgQmIo9jX6E+zI/EXXZTJzZD06I4AXujZbiWq3s6Be+h7w5rYLb2GP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723502154; c=relaxed/simple;
	bh=HBVqjU9hJi5HcDXqQmBc7RP05E/4eR2UOkzwcvDvuaY=;
	h=To:Subject:From:Message-Id:Date; b=LJwKVcWT8vPG8HUPxa2LfGo/3fN90MQXb+VK5eJ/Dl4a7d5iFlharJLWsx5CUTGcSe7u9/bl4uPnDZuTXe48k6+Kko/3tM8eYlJf0CirC6ZN7lr6ljU6RDGJxZrE4dbGMQU81sFzBPgffJDxkw5Ygch0xJ3LgW+lSnqRO4bfJUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwJc8luD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwJc8luD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B944EC4AF0D
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723502153;
	bh=HBVqjU9hJi5HcDXqQmBc7RP05E/4eR2UOkzwcvDvuaY=;
	h=To:Subject:From:Date:From;
	b=WwJc8luDJOfhCDuQFtnxzpjlLc0R3Ep+lQvfRpywXZ3Yxe1k7JbED9oVBbVULX+bZ
	 sujRMXLUw0CFfZXLdW4AMWuYqTkpEJ16slAakP33JebN0A9mOwUZpiW0dgFSBZIvgE
	 5EoOZvxgy8BrowD4TQIsPQUcTB22Dewxkc5FCKplxJYtuyXca4shQJ7zNbJnsjTs8a
	 GX6OjWSucb87BwgRRKaF8o+WsunSYNpQaDK7my0MSSxStmQtGfLCCHMeOQ0972d9FH
	 aPyj2wJcbqUpHTvvujw8JU1VJbwwMXm0EvscMl0mq6YjllTHNOBcaQXGe2FGtX5nCa
	 xqMaN5qqWmEWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A222FC3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172350215360.5049.3945831938958948545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 803789766be3b9debdb4ad7d75f4982d0f5c4bf539f45c3fb2bd1f505284d6d6
Date: Mon, 12 Aug 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723502153
