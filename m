Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FE033DF
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717194863; cv=none; b=eXHciY0W7R+esRRiDbpHWg6jxeGAFP6I48zb5zVv7gyN0subrt0Ob5ALx0InOGuSUuXigf+iTk/rOk1IGY373dlXoOzbPRtrsySalwOsEPGqnxJmJxPFlFmPTP/6ntg0zLj4lxjEjKZR97Nt+Y3GdOg0ghbDOetVQ4wJZRR0Gz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717194863; c=relaxed/simple;
	bh=6oBv3uZNF62LRCzjLU8tn1Mkm+MUUP07aaSt6w2vkfY=;
	h=To:Subject:From:Message-Id:Date; b=E2Tj5gHomrwdm9p0DDWAOWdKf5VbkpHLLh3THWaUpn0YRk9os51hK8seHd2wDaxuFB8YiuB5vfQuVDhVe+EDs6xaixUflNnbMznR3KOXD4HDCfgvNZI9Ftz7TKXSfcdcloFk3vAf6DM1rs852nm8RyN/7R+MdJMm0eHSOozMHvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSAuTobc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSAuTobc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AF6C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717194862;
	bh=6oBv3uZNF62LRCzjLU8tn1Mkm+MUUP07aaSt6w2vkfY=;
	h=To:Subject:From:Date:From;
	b=JSAuTobcF8vXFsGF0LA4Ue1VySfCZ0K6toLUfHD5Tw+DJqYdTq4gJPzY7xLB7DLO4
	 RtUiJFd0dRxHvxFbKp6B6xedBRqBVrrqaU/Mi7dHK23lIIEsBhmh+rNY35UTt5MvRt
	 On71qsANy8a8FjSLZJEGwWTSdjTinBsfreZHGnMj9YGTRe91/fgNv4tjhnHvciKoWa
	 qAqLdhX0OK322+xX9LeIzyDylFZQKNwTFcL/igUS6+qkNjvZ66V25ysyB4hH+19xoI
	 pgafejfBZUFt+8J83qXDDZCg2Q+TN+vt+yFkJYWCuvc6tWfrIq4keGlDga7b5QClJP
	 SVlBAN/7xmFDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40D5C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 22:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171719486279.5460.1926592493575832909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 490acad17f1097e212b491aab89df7e14bce712458448b7e117db0f0f57a624c
Date: Fri, 31 May 2024 22:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717194862
