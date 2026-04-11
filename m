Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F16817A303
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775940454; cv=none; b=iJN5y+ylWQjiTfhQqCLM1foHftkbFYWOeA7NGNBH/QfhAbHk1OT/Zol19nnMwjNRU9uAkL7d6d0sWWkyeL6tsz+0lc/RSuv1aDN+Mwk9cQpTwlqfl+gkEvP0rto30zyyWlR0LnTScmQVX7n6BfUik0B2PB6w+qFCHEz3Ey0OngE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775940454; c=relaxed/simple;
	bh=oVsOOlT/Vu33jfVqMhEA+STYNoZtRPjt8aQeVPWkWYE=;
	h=To:Subject:From:Message-Id:Date; b=gqN65empm6Y4b6bvELiyvi5qU+g2tYFtFTkOciwttmLNN+pCLT3pZQFg/aB9LVjYKDwFydLHiUYYWZwyZQqLntOtNNni7Y8wOCvC45y4DbCtXnLCx/5POs7KkkpmLmLf24taSGjtavfyRB4oHYckOUmi6UIbSFl9zR+NFjzgSbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXhOsquw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXhOsquw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEEECC116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775940453;
	bh=oVsOOlT/Vu33jfVqMhEA+STYNoZtRPjt8aQeVPWkWYE=;
	h=To:Subject:From:Date:From;
	b=GXhOsquwnKgLcHNhMqwlXo1y35dtWdNrd4QJUwWDUuBq3i8EgF7GwmdOZ/MZInGDP
	 StC3BH+5MXEH514VMoM/CuE8XnEIRoSu0/JOEhX5wNfAmoZcx+oY7vO+yHxs+1m6fH
	 vbsj+3W3NR2fuz4OeCWcvPc94BRaAY15qkYBrxJyhov7r6MVlmfnerVXcpyY/zZqmr
	 T06m5zTun5HVkOQJ/HmkADUPIsBleLs7DzTpOXH22KkjWV8R+BKP+BW2QNQh0E1Xbz
	 nRVlI/FmUxP8pOGa2UJ/Fc7Wz78Zv8kRHJjUlIxCW4MN90w8W0DDWwbCmk4TUXwsiy
	 mG+zwnSjSwPGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE61F3ED67
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177594045368.9617.13003385337786979788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 116e6a8a77b6e1d64f681e83504ccab17e3897d74d9ccff04fffe34e6ab1e2f9
Date: Sat, 11 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775940453
