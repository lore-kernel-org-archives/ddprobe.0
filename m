Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389E013A3ED
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764527574; cv=none; b=LojcAQh1dkrHzfLQmjaDtqad2JMzARH4w6N3zJsbVxhtxsJ2i6KIGKk/bb6fg7ZNJvLZ/JQlE3q0caGLsfdKBePasvLEqutGK95x0eQaZdEkooj3XK386eng/13vIX74mjBq39iCNHZ5wqCU+0Benqpr76KptZNY5a9jOD0HW+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764527574; c=relaxed/simple;
	bh=4zNIIqaBCMdzTxGE0uiKes3zf/rp3xyE7YwESJiyQ5U=;
	h=To:Subject:From:Message-Id:Date; b=WSExHX/dYunFn7CQTdgEGMkUrbt2KhC+kpTkzeiVEWDkj3ZCovZexrQiKzjvydwvx9sq+3jl7syBKie0VS19rRMWwYWu49WQMqhnUKYZYlcuCFZCdzuHP+QjlLOcRkBdyda6Q94umbo1t2yOLxvDXilAMaGAWIlgqRX+x8zAqPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vo9LuqOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vo9LuqOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA038C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764527573;
	bh=4zNIIqaBCMdzTxGE0uiKes3zf/rp3xyE7YwESJiyQ5U=;
	h=To:Subject:From:Date:From;
	b=Vo9LuqODJuViGeVsoys2l+/HvFFkk2iY57mw2GiAtKi8j7aBvN3VcefOzHJ+3eQ1+
	 6TepxzVMuz7VmPq9pOvLXi40HpKyg6ySNtg77o44w/i20yyssBvXrlyx7AgrY5l5uE
	 3B72qOnG+2QkpE96wFddDg0VtmI9fk+bpbCIcv0//xWHjy2d5JUiZJCWwQGn3yEK+W
	 1AqMpoH8n2pgmdpebFIf3WZP19zQi50tn1msfBZox9Zt/OajyiPd++12swOQqo36SY
	 4jGFMW3Bx/iw7mx8Rft3eUgVQuZAJ/XGjrE34OypRG5HRZ4m8W8KHypERED32inquC
	 g44NIdzn57A6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A9DCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176452757359.12412.14922305356587981714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8762d7e7ef277e049fdd6a14eebf2fdb7fdea5d55238bae7b9da4b9feb5f76a3
Date: Sun, 30 Nov 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764527573
