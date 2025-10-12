Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6A9214807
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760269794; cv=none; b=LdUofIxYCkZXqfHQ1bOoY0j5qn4K74/FbYXP2qdefu8siMXbOSx992xUUUBsn4PqQJjRT5nDFx6pfSA7BUsCNTbFmNZfeK+i4W8JMoh4f/19rEUDgSyJacmdxl5TEetwwT8S9kpwWVIlx054IDRBImhyf4OecxlkSjF+7N8a/pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760269794; c=relaxed/simple;
	bh=r/Vbj6mZ0Fd4L+SsO96aK+DTKHTF3TaPlO6tz1CXPzA=;
	h=To:Subject:From:Message-Id:Date; b=VF0nXLb5Khv5QY4CUGeDLNB4q9/VQaekX14/HnC0ZKqLVPJA4CcQPxkZBjozgeCMbs7K6djSoJE19jkQ3TgN9vUfAw3ZTuB07ITBs/f69dBaKi6nscE8hZXKNyJhHTuGrqQ4GmtQS/QdBav0ttazZs5R/npKksDrvOED3+CUncE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jnx1ahZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jnx1ahZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D4CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760269793;
	bh=r/Vbj6mZ0Fd4L+SsO96aK+DTKHTF3TaPlO6tz1CXPzA=;
	h=To:Subject:From:Date:From;
	b=Jnx1ahZ/Wphj8saZyovpW15UmKBkCLQLUjuuUddiLrU+UIwfI1zl1lynfEHHhr+YN
	 m0sxP3lE+t95ymBqqw6HXeiKSFVDrKiXHXc3AT10+iu11aACGed4NovZFPYhMDrJyB
	 DfTHG4LFO5J5BN6ZSDUtgHt6Yc8MIW+JtS1qn2YcJqYoMmL4rRb9GeEl3f6qkIcFMY
	 cY3E8SAmvepM/CFau1+/KfPuYU0p1Gn/w2IKF6pYmBwOkTgWpqRZMx1WXW6g8DCcIW
	 nxK0luvrNfCXI5kvOkhYza4ydF0qJqxh5HzCsO6nZ/R0cGjRVGdxFxe7lwR4ZhzSS1
	 qLlHotd+baPRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ED1CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176026979357.11922.5600050691618603107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38a3ea152167164e3b50f63130d9e9718608ccb24a941261cf42f29bf765b58
Date: Sun, 12 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760269793
