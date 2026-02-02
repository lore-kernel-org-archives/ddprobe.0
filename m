Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42222389E18
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770074034; cv=none; b=ti/+groZxT8eFS8OvwXMqMTZqANnLZjS8rXHTODPDiDXLP4RkL/HDaZjLoZ4dzlqNWVpWxdfQoFMTkCJ6+IhrmysWZxnXHVEpLRznkgiTpa4dcW4IyucwvRqG3RLJAigs9HCB3QXwNz5wpsw0Xu2CDkAwvTlI5pa2Kw9MlNkG7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770074034; c=relaxed/simple;
	bh=pH7fXOwHP/QUqUpTqNTB4NXOPMWr9eseS9UkP6tBtbQ=;
	h=To:Subject:From:Message-Id:Date; b=ijXESu/Xf6nTAVjAqBDMWt0alSoJ1BlCCC9Bc3zNl+gdg72tJxfbBTBWrpBXV5ZrI2rnUOcgHkQzCl8rS5HaU/uDomFS2EMG5a5t3yQXxJQPvLOXj2hymHfjbh5AumqyNP+MjCycoIevWHEZAooZ0z503uovzG/qqp/uMLLfXcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Emjwcn66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Emjwcn66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEADC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770074033;
	bh=pH7fXOwHP/QUqUpTqNTB4NXOPMWr9eseS9UkP6tBtbQ=;
	h=To:Subject:From:Date:From;
	b=Emjwcn66xz76nFHjgD6RuO4zeVlrNrst6x9rqzTyqjU5wWRlOzgYbpuXQn0ub6DON
	 xh7mFPbYmsv+dwVtX/yH0Wk3KowvPppmVXOQuOHs/v8mnxaa+tG0+FE9vbPmtvbx5I
	 KCli1QFcZbKb5nl6l5HDJ7I68JZhNwj1EV9SunftfYr1+91FsEM13kBqG3JBq4Vk1+
	 JXvlJxDsAiTHPp63YMyyG1axc+jn2BRKxAOgRE8lrNQ4kZKjF6D4nGl8GQXGQxR5Cm
	 c7+mes6Rq9ZTRygePYypC56g1CUuzuaSrXj6OVdg/w8zs/pRbiD/RHPpQ2Jaxa281I
	 IlQwpP49iwjHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3F6E7FDF8
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177007403366.7498.14311225225172497218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 666a9e605550ffc3ee1646abb2210a80d47ccb06a8688f09621cb33a1d0c3380
Date: Mon, 02 Feb 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770074033
