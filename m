Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B94131196F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757510994; cv=none; b=gsUO3/wAeX6d3Ao9y0MruevifvEGbUE1AB2IOaFB+Q6yoZrOr+rB/iWBQlX1+Umqq+dF8GTPJTpDQslVlsJQEEZtdJT1oJ5CqoRRhswsLAKwepTvJsGd9BLMtFNr1ervREWINs0+IPjjxNRyfRy2Sz46jgr12iNPH+KRnNdH33o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757510994; c=relaxed/simple;
	bh=Pqk1QapplSrXBrqDioZTNx0+D3H2YQxjI44iU/CroaE=;
	h=To:Subject:From:Message-Id:Date; b=fapKvDN8uKYkux0cqH/4u6okTkK0mDCHu4pRztM76GZ5/hvrCiGDCoIC63pCVKnrHBVul0ML3PDkoSYhbV63szQsTel7+yeqkXGWLIt7XLOBGCMqvoqZ63NxsIxxrPlTHWDDwaUTUp9oIYfT21qoPBbPLLimttbBCmtOFf+5ums=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbRALGpc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbRALGpc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23A2C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757510993;
	bh=Pqk1QapplSrXBrqDioZTNx0+D3H2YQxjI44iU/CroaE=;
	h=To:Subject:From:Date:From;
	b=LbRALGpcZVXks3wsQdHwLgzbBL9jOCTe9joKgt6VfFM4hHkU6D6jdrzTLaFM96ZNT
	 XdNZxNJ/hN3WtFkMzxV5CZ7oUF2m5C8o0q8my7EO6fyfRcw45FjzJOB8coj7BR4uTA
	 EtnN9P/Be2lgjablPYf63x8UFoTlUVMz6VSWqgjhYvhkYbRehj1aAzNMNgd5KpK/U7
	 8HIaYlG/PdxLhobyq7MIc2+nyzDoy5s2Lum84vdivNNcv3tqe+/drMI1ptsaiO0JFb
	 hBQ5CTdWMKQ0Cc3f9wimk4HvpqH7ODpK4nVQLQnlj+QCvs6jZpdKffVZMTUH2Jr/v/
	 K0KrVyV+XaerQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF84CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175751099357.31504.1691325896010265013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a749d595b88a68696525865458544e7d2f359ab7d693d3e1337a806396e75c
Date: Wed, 10 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757510993
