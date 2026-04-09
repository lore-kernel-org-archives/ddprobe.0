Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F082DB78B
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775717734; cv=none; b=Eizr6+p96XLp0wABilWYV3PtP8gaJAlzgCLXzloErTqwHLkIYHUgDKeSXgo8xfHbxS5MW8szbqKAogCpxGvuvgrebdRUCUMQfJzf5UugTeu65FUYmO6qk1NGHnHzZF5/338T9M8dWBA2WKhrtkeZdaLhFrF8utQ0UaVhSKsqvpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775717734; c=relaxed/simple;
	bh=HH/YqNAVNviOklR18NIiCjcpbriC2tW1TYEzbw6+up4=;
	h=To:Subject:From:Message-Id:Date; b=LyexAaC799M8tfO9J+ko8YI37D/Kl5xiB27sJjPAD4wwY3XGeTq4wKIpHMF6Kjv74xLdeDgkfW5vfELUv8a6oyeJmrizYeOujZHIcxuhydLiSlz5oxtFeI8ebL56WFeDHd3yLdEImzvbcGPaMZINO2+JM0ErnEe/vw5yMMN8TgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ra/YVMZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ra/YVMZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E37C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775717733;
	bh=HH/YqNAVNviOklR18NIiCjcpbriC2tW1TYEzbw6+up4=;
	h=To:Subject:From:Date:From;
	b=Ra/YVMZwSgfVWuGkpLx8AZ6dzNadcHXUa4D1tdhXOSvIC7VogOpVldHSMo9z5+Tjs
	 U/4qvo0nZBvQE4I44LwEx6DDS4vER0S3a40GPdtESbXUsmKd5ThkJugLkcFeUp+qWd
	 fV2rXfsWTqYbohMBxdH8W+EWg5VQSgJcis64RDUGGnjLPynu0fvU2QMQJx4tLNjbZm
	 WuCf6Sc0DYVp+f+1sMmqhRID59U6RXM72axkYecuN0QYiQt7MM9F5mtMudmJMKBh7I
	 bH1eEGyOLeSBJvLrz6eLtMUrvWAvyfm1mCwcox+S4puCmmLwVd7/ILQyW2ZQoY/uQE
	 nl/K8VKTt3Rxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D1CE9DE40
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177571773371.528.14228492612189685455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32b4f814a63eefd341333f5f4f8f0d7bcde636924c786664eee932d80b7474b
Date: Thu, 09 Apr 2026 06:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775717733
