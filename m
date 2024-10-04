Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD821E3789
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728060354; cv=none; b=srjvjhjazzUnw1+1zDvUMvz44Dtp+7QpbCiUI5nqyTKBtKvXLtbS67gRoX++885p5SzMSURuZju15La4kUMQqyK8e1hL/pdeyy1Y0VWZzjUuzhcWbpiLyzu3PItkfurdw58OXLlreyfvAI22jAw2j5bJviMc9HZwL9pnAjRfo90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728060354; c=relaxed/simple;
	bh=ypkBejN5hRc9Bdz7/dPYpCTfzrXPAVfFe2KP3VwdeX8=;
	h=To:Subject:From:Message-Id:Date; b=qSgtPO316f8ojoH0XoFerdUKt+sA0aVOVsSWAUsSs1KBRysvRwoDn6iuPXQzF32dOvHHIpvY8nXXgAq0Aa2mndSahD1y/cos0jfWGHO03gYl/lh85B7rvEc6B3XPnbg9wauTdXgJUbhYg6CTe+PaLYhzFJ7CUzikZK7rsa0N4DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtdkJQS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtdkJQS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9AAC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728060353;
	bh=ypkBejN5hRc9Bdz7/dPYpCTfzrXPAVfFe2KP3VwdeX8=;
	h=To:Subject:From:Date:From;
	b=DtdkJQS7TzpJVJmyL7wPOptOXzfZOG6tEr/R5V0r3v4OWkSv/BRic6B9HmfNzh2Ox
	 jjfSEI9nfUHGr9SMaC2EG1spV16+XSYU2c2wCtzKYhXII7bqQDhrDOb8b1noUgkNuU
	 DhfSLJ0rob2EonLG28RswOZYxSb45wHx6YBEVn6CFBgjesCanuteIpCn9FlMSKy7Y9
	 Mr2rjQDGWxiM3NqIE2DJjk47i6lDu4OW1kIfCeMt8Gp85NwI9yjG4lyf8b9XSxsHUR
	 unXP4huJv/aUnuXJOvq2Cbaip8p4srYh40BBqvB3IqeMUQ3WnJhGIz/aUaewyWSXpA
	 kNcOUa4/XyUfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC971CF8840
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172806035369.23035.17922500739869598849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de8782a1f3aaae16025e5a541617847edea9223b6faf26e95d23d26d51e724a1
Date: Fri, 04 Oct 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728060353
