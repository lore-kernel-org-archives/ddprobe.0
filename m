Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3572A22DF87
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748609394; cv=none; b=V1JAyNzyKr+9bXD+NJQnqEdsiMxRi8KJmtAyv/v9lKNLK+KlvgQ5EQN8VK+a9zYmp8P+L9IIqKw7fiNsbhG+FJK2jVSzQPTAu3L/3L9v7FQCHGeEjB0CT3ipyVENgtDq+BHmva+ltCVgBNaR7iH1Z7HQwucp/S9EaVTJQJXujeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748609394; c=relaxed/simple;
	bh=I5fYYsxg3M3mI+9mc3KuYWJKKZJq1fd21gYUlTLx184=;
	h=To:Subject:From:Message-Id:Date; b=OFiGIg3WXepKBeQ1GnC4A1IOKoSE4gKv1BEeo4TuDYbsYSBmEj8qj7wxVQOdLBy9DEJKJkpVDfYYF8wPH0POHEF5jebclbdXiwAk5rP+tWAvDclK9O+kBgS1DMJe/kLlrnNq3HQaJTqIozc5r4VobQHD+AB7Ryn8/2/dMLzOilc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOtQPvDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOtQPvDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FBCC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748609393;
	bh=I5fYYsxg3M3mI+9mc3KuYWJKKZJq1fd21gYUlTLx184=;
	h=To:Subject:From:Date:From;
	b=VOtQPvDdxOjt1dMkNioeTKP/tEzCRb5a6C6jvXQjjwOGkdyo6bcqb1E4JCHeai+Zz
	 fW7dxI4+tihogjulpxNtBzdfcQayF8EU+TdAhvfO0MhUAmpXeIAWwOYf8VIyTuGH3B
	 kgEkqkVIWR3F7ORwwEIXAHwX5cjxlT6+GMAjqvfWLU8GXFUUraeOptDwQLLsRYqe8j
	 wqHMQzG/+bjS8hKvapSuU0XqPhEX9Zu2Onbk/G/f8B1TKmK3JEPfx1usHW00M4rmf5
	 fpCkWQBghg+bOj19ysBXd8T8kovnwSeEjga7MiLlgE1Vo8kWFqxd06TKklG2TKhX5C
	 CmDtu/Mj85t4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CAFC5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174860939357.1029.4996669728478527245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ada625bc00e44aa55aed23975b4ef8027716d41ed82d7d08d1202efafd3435df
Date: Fri, 30 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748609393
