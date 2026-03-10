Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65763B9D85
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773147894; cv=none; b=Ga0d8loCEgVvtMGRF4/9irBRROHixY4n61sgnPEpnvufJnIoSjliUhStjX6xIij1C9KZoPdaEpKT11LoeRqOaXzH//b0lwFibkKpRWTn3h2ET336WE2rsQOvO4Ih+Qsoj5ofcErOiM4Myxz427c+Jy1QM/KJqhUQxIbdknwbrCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773147894; c=relaxed/simple;
	bh=CgYOGVP8cUnv5KknzDvdQU4FI3r9+KQwfUSOKjKo3Zw=;
	h=To:Subject:From:Message-Id:Date; b=X71tfgVU6GotDv5o9AIocQvWXSrdEjy+BHfU0hTcUuroUDxzGifcuI+Ve6XVfd1cottcIXgQkrfuP7H6lDaszv5OXk5tPqVH/L8I9Wr/7ZOEIUcysPhB/GTtIZoAf5Ch+Gvrboj3jXU0cGny6vNuhuQwHDdo030pBS9V2cl9Rz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6z7fHXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6z7fHXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C234C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773147893;
	bh=CgYOGVP8cUnv5KknzDvdQU4FI3r9+KQwfUSOKjKo3Zw=;
	h=To:Subject:From:Date:From;
	b=o6z7fHXrTfP//BCjydLykR2Kl50V+Gt5zHYDTbheqWTmiWOvuQ/viqkI6jgPtbZUi
	 S76Gs2YenYk9EbqZ8NWV9aLEc/3quE1yOHLdg9SxpFt7y5i/pvy769CvhDFkCYVQJK
	 DwxkGH20i6QAE4ykSLpeKw7NpHEEBbYGZnMKKQc0Nx32U+FMeqql6hEL7w0Rdiq38k
	 fz3Rd90Ch2Dj642NYAWEN6jpmc9sh7rSJLuxotEHESLVU6049lOcsXgyfkmuhF2XYg
	 xG9PFy/44E5VuOyjfCEk3nFvfmdCJEp68fx9whjr5t64fi46c05ZV1PaFHXXjgq1EI
	 SxCijPWWSvwNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FCFD2D73
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177314789357.26426.6642420386086111744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36107de4e03b5f62581935746cd7482232e345fbd71f5967af08dc5b173da394
Date: Tue, 10 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773147893
