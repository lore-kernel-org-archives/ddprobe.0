Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB821DED40
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728336954; cv=none; b=KhmyNvPBPCbZTftvOHtKxL3qqSzORTaBudUyuDB6zlZFrV2pihB2udI1G618IVc6499gzMzoeSvNjU6aCV6q0gwSkCr7vCcuWsaEeqhawzRAtMt6EfAucU/2cSQo3aXTwz6tlL2vGlS5eWGpKUnEWfNVu1oZWgGPclSUfQqrZKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728336954; c=relaxed/simple;
	bh=jrdtYFV6rlskiMQ4P66y8ecdas9UVEHFwVMF/HITkaY=;
	h=To:Subject:From:Message-Id:Date; b=fCK17v2goupvYBQIY0iLI7RpbHCEj+0SUh9hoh3s+w4VGlq1eWr8CWVJDk1/lLU5Y0/M8h3f0OXmbVKTM/14KDyAJxkzYuBdPD4cABMz2UzDzubCmexP2FnwWHMNIqU6BH7HxX4ymesHiPTPR13wmk6cyi266hH5ioVzbpXNM74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHaMhVNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHaMhVNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA273C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728336953;
	bh=jrdtYFV6rlskiMQ4P66y8ecdas9UVEHFwVMF/HITkaY=;
	h=To:Subject:From:Date:From;
	b=IHaMhVNBpQDiJbWlw0rmd6B7OGqjLShREpd+cIV0DBaxFT+DEmSecvtCD7TEyPz+m
	 1hGDdUDn+C6iPIKuEOt59Xke6TGKQE6UXIIYs94haoLtd88TQyYxTn8Bl/tiXNk/vx
	 yJdQkey1cho6RP9BuZf7Y9VIjUHsVQwlXGOdV8IdYUxlnZS+pS1DrV8SZ7VB3I08Cg
	 wTIO38Lphw5t6aq1d8RjlqSWnKQT2gbxpO33VB7gzDhlN+8vIoBJLqr8zCasxwj/qn
	 aNrrI10YHTOjQ9Rg0nMWJGlxQiocv9EtYliT4z39lc8Y9ZYKYNcv3qpmMF/V4EF9/D
	 NmavjP0WiaQ8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC1BCED241
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172833695360.17015.4790944151818885024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035b53b143f07c748159ccfeb2df429627a614074c8a9a7dfa115511cad6e8a4
Date: Mon, 07 Oct 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728336953
