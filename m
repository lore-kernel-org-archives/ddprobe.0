Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74F13D6CAF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773231294; cv=none; b=lQQNBT3bNvgc36p/FXxzcDLx4khZlz9dWznrKxbegwrzNNlrNDMY6P8EjbmMMMamvjErlBvwj2O13m0iZmABfMeFXl1J8HyUXQa/LhcQmS0I67jlw8nuaVhJbWaCb6xaeCAs1oGTibbZKKIkDLWwQNIp8giIGTPcScZoLYqmOcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773231294; c=relaxed/simple;
	bh=F4TkGaRJiVvOyo5brS/nlYrAWMV/fJ/f7cvKfgLatJ8=;
	h=To:Subject:From:Message-Id:Date; b=sF7HXvbrgUaO8I7l77sZjPjDfxqDLO8feJjqgn8uKF3EljkWCAH+pqKXQ7Gr3TJmASI9CKMmwOxJcchVdfWh9g8f2d+agAPaHyhPVXrSerJoG9ZsHcN+Xns2fYTySrTS/Km/HC2/yyrt3L9fW99DAsZDJLs6WdsEEFaXAbsuJAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3wyMhD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3wyMhD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB43C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773231293;
	bh=F4TkGaRJiVvOyo5brS/nlYrAWMV/fJ/f7cvKfgLatJ8=;
	h=To:Subject:From:Date:From;
	b=H3wyMhD4AJtHwcYqiaNUcndHve6zl7yzN+Z4oeq/e0b6qqsea5LyNoB6WikT5LG7F
	 GJUV4SyfcTV7WbNySsTh/j9CgvzFRYqE2CBubXUU93uUOTy9SqOQh5fnekr+O4yhxF
	 Dv6ZHqO64Xm7nfTyW7yPT8Zra/ZIpnBNzexv6ZwSL9Tou9zwbGAtA2CKwd9Vjzpfqq
	 4G/0KImvIHEIyA351prOzJPuD9MrWCyblLY9wDzh6P8wq+3PWaZD+/6e1UeJX1GTfz
	 XG6WuLZAP8irBwaUVdVI1UA4nsa+HXxuLXeg2PL3Xm4koLhXKyxBwPj8JBYtI6egov
	 7Hw8p+qwLgarA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906F21062878
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177323129358.19582.17677899947398710135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf693df21dcdbcb32574ab1d66907cc3bbb74664ca7c2a10391039641fbf1af
Date: Wed, 11 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773231293
