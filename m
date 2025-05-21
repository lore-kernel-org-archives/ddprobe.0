Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B3679CF
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747825194; cv=none; b=qLQPQ8Nrl/Ls76hAb47WvnMGUyqR3J31ppiogBhT28yh6+m937UFTJ+WXHymU0HWj9gjT8ZLmF49eyTMZxvl0v0ybEm+9RssEs1JXtTyNXgy4/9g5X4YBv9Dm+S6DFffFjsCpc2gcg84Xxk1D7VFSxdBaYeduBD3kH5P+bNRohw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747825194; c=relaxed/simple;
	bh=wsLQtFoIlekRf4eaz620+Roy9Uh+8f5PXH1qSSQ74cU=;
	h=To:Subject:From:Message-Id:Date; b=DFOgqGxmlx88k2uUij5ubhmHOzCEBfEmlBSUgf47vpB4rJCgBlbSrefR1xZJX5qObL4S3xUaD12BE69pErtM8mO5qFc+2PHbkOZhLFyVzH3ZyHGFomZ9o6zba+BJ5MNbIaK+CdsAHPlyEFe1LSqGmrPbroYjdKXlk0T6GFBjmyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaQiaqFN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaQiaqFN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED4EC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747825193;
	bh=wsLQtFoIlekRf4eaz620+Roy9Uh+8f5PXH1qSSQ74cU=;
	h=To:Subject:From:Date:From;
	b=NaQiaqFNL5Oj4uLgcwxhrYS+ycR/R7AvS/+KCw6oenv2rsj3Gk5c/aG/GfiM68E47
	 wRYjjxlV8fxDxVnLItcxosXbuWktbvWw6F/xlvlXj+VKm/GvN748+s3iUUOyqzQTRw
	 k6UYSe/eg1XQpP/b4rh3DZYkqZhG+RCdjghN5T2tPVGGWNN7QcyrfTrdzTeMzoARHo
	 yHchHH71y6pliknsY3FNVeHx4pO+W2yGRDZxkP7IhnpoQKg5+UBAYpsj/VBgfnCkQp
	 cHE16l4VLZJYJ3jiWcNP7r3usn48Oi3sa7ziHcluR2KDXGe7WmD6FKN44hR8MQIREA
	 c2WvuCzFdGgJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E655C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174782519357.28115.6791895466581753517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce10b2924dea61eefa311a6f62946d9488d365f81d862ac7c517f2420228a2a
Date: Wed, 21 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747825193
