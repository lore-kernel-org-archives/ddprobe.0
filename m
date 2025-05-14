Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35150274FEB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747223394; cv=none; b=heOWHhsHURfL+JLzZ0p/ztochEvBo9qon4JoG1Bvj+6Mp7HyCeSAdsVKnB5bX925jh4Tw9/Yow2FnNRx6lj28vYKynU6szk0mS+izXeB8v43FgUHraaAQpqAxQRHvpUCcvuV4175dRQMrRjgfolzyqrtLbLN7PdpFWQSNk7xY6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747223394; c=relaxed/simple;
	bh=MaqL6hlg3AambyzCsPSGz9/SJbkiadlhgQU11FkObo4=;
	h=To:Subject:From:Message-Id:Date; b=N7yGbJQ+9b5/Tqy4uCgHg12iJWI4xQKwI8CLpAaaC68kD714K2Ll1w0p8R/6R0cxYlxNgu/loUU74i8pqmn6SYSBynGrGi1OODbtbtiNKS84NmkOLDOeD8XsMxFtQ2JlLbrNZETbIErhBZDv4W1pO8Rhy8v8/4LAzgxboPCGIUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYOzPzjd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYOzPzjd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC6FC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747223393;
	bh=MaqL6hlg3AambyzCsPSGz9/SJbkiadlhgQU11FkObo4=;
	h=To:Subject:From:Date:From;
	b=MYOzPzjdnwYhLcHy8yFj/L6v1WTC1nuBBSvJH4wjg4vRdLxF1cSDL4AA6QAU6pRAL
	 cWXSdlydZSPG39F9XjQ4mCJsBp9TYInuqd1vL8Av+ShX2S4p1sBuWIzwhBpNWCSGDI
	 XhNUWac26XwMR6ijtrh08GJgWh8hh+C/p14uXWmtP7gOxXo2dohTY/Wnvcc3VuhFNq
	 pcLb3oVwAagBsBBkB73XHOIcjRZlsSCNmE8CnQX7lNL5cDKkLjD0BVZw1VzDrGyRO5
	 W13VtwVYh8LC8OTrhvzh4OOC0WCuv3WSD95QdQKeFXvHcuwMdEohT/p1k19tfqgJHK
	 86UuQtTvjCSpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE39C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174722339357.15779.12699473365530145548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e1369fcca9932c4942aecc744eca8bc40924edb5929ab78c2af778bdb0a01de
Date: Wed, 14 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747223393
