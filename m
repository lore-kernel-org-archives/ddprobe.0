Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4DE1DA4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735077354; cv=none; b=MEgwdqfcKxflctDkd/vR9Tllu6H5vCKU+uXS+b/K43ArE7e+dfMDy/3fHnaTC1PhN9VXl8yJ7aA3wj4DY4QPXTIaj1vYkGS1GPcXb/uTpd7hV/wPy5d5RrvboAezeshsHDDcY5rpnYQkPrw50EooWwukSx3kZMeNzHobQqwoPFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735077354; c=relaxed/simple;
	bh=SNZVu5K252o01WAVQBBGh4asB8UvgvIjQjJcbOz/p34=;
	h=To:Subject:From:Message-Id:Date; b=aLjXcIYF1nV8ZVlIbGP+mgzTloIVLvV8UW3N/2rH+HbzcObrpUAhKLjkZmuIjcHw1ByS8UArxHzjVq5Lf4uStGYrfcI0jM0rTaLBLQ/toJRsjvea24/yIuP1WYnaDodu0PmyxcxUlRHjGjOn8lCO1/1Xq98gICTJsXUfFjDyL4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuyYIY/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuyYIY/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD95C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735077353;
	bh=SNZVu5K252o01WAVQBBGh4asB8UvgvIjQjJcbOz/p34=;
	h=To:Subject:From:Date:From;
	b=PuyYIY/K5ivFE9lsPcKNIhBdtEl22OL0dBVQNYOYv/KoWvz6944Qb7hD9MIicaN4Q
	 llJXRBPFHiK16i5t2ZJuqLrunrQ1sDNdTwdA7gZaoaChDJfb53v6z4HwHvcEzRB0ur
	 dOK31QpnNFSu48wevvAFdUyzOBDhmbbCm6+64laaLMWCnd7AeE0ye1bL9to3yOHIPf
	 cRxBR++98qONj0zT8R4XtYghA8iqiJGn64uqHU4P/bZRjSlmBInhvGpT4o8ZxNwaOE
	 dYRE0NuW0/GfyESS7HytvHvbdXsXp9tTvrkIaRi3t7vBAI8vhaaKNw0nQbed6Y/5UL
	 2zfop4FNIpwxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981B6E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173507735359.9754.16060209187685339711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 810c1820f47b496053450aa9fb9ac39fb8b2d3577dc65272374c14520d009b4e
Date: Tue, 24 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735077353
