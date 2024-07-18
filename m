Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C2F433BD
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 04:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721276723; cv=none; b=rBBGnQIT1t+t7K9cKQP2VPzUoLOUiqTV3mz0Qxv+/XHe6RkYg020pGPkNKRhxYE8KCXd2P4bdgdFR6KRseCEaXpBzxq8/10INHYvvh7uFOsSYtNgmB6ploabwKxYqjXMiGqVfI47hTj6tGwVYBHHzEEMYEEjn6k59V+ZHOOobb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721276723; c=relaxed/simple;
	bh=eGNupBPaRQDJ90TOhKqj0y0dQHDTKvxyoTix/7ZAAEA=;
	h=To:Subject:From:Message-Id:Date; b=g/llno7QAIgm+6DUqSyyBMI48nU35IMJ4VDrk0HYby8+lOySi766q4oU8sHc0NoLVF+1BmrEPmFQC8ckyZfITpX9XeYvMlTm3p2fJkY4vnZ3nPrNUT1bB7f9E7qP2BczhCr+8E6G56DLyO9peeQxBvf0AwV87JVJQtR2iavlKgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvXuhwBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvXuhwBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0DDC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 04:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721276722;
	bh=eGNupBPaRQDJ90TOhKqj0y0dQHDTKvxyoTix/7ZAAEA=;
	h=To:Subject:From:Date:From;
	b=CvXuhwBuV3RCkn2RAjO8QK/2+hro75fNXSsNqtJX3XCRDcNL6ztaO1qYaSAtbx0jX
	 pv0SeRonh3EnOJ+bnS/XnyT7FiZndBR6hx56qvQU5yyauWgKwS87rxJiP3MqTs6fmb
	 ARzplswtaPPOfY5BjPdm0oe4IEhIo7mhIGpw8tyY/PPUogTN8fxB16pJ/vwYcLk+zA
	 lNu5oQoHAvQ6MCKTUoiS8q7LYlMEtulEF4Blkfw5MwZ1NsWckdBX9xRCC8fpq4neqc
	 AdDNbD+CVcfTpkYYr/Vn7FTDVlN1HqFv3sMaB9WPTnyRJG+KqyoP++h4UuxDq58IO4
	 ihOpxQ1O2SHYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C468CC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 04:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172127672278.14596.5262203922321346138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c148916baa5e65e5e2692ed7293f7b30926e66bef3d1df380109c57917057e94
Date: Thu, 18 Jul 2024 04:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721276722
