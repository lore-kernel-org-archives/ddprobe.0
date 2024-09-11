Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2558513A884
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726049154; cv=none; b=mFO2K/PEoFmStCHdXC/6PVBCSklHU9S61wGUjWjDEQRSsxV2aOD608TH2tVzrrf1VQ1O/zl/rD1LrgI6t+aqjCgcYjRDvivZOJixQUbRr6vbB/n/HWOOodnV0HZLydLY5tnG7n/nzE8LUnG35EHUj6emUdiYVfP6MAPP1DopK3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726049154; c=relaxed/simple;
	bh=IT6LMvdJTp5ivAdKdLh3XmbSGJ/XYFiEb9U0Ar80ehU=;
	h=To:Subject:From:Message-Id:Date; b=dN+9KGL+uundpqeTcTyMiOzm0S3PwUOowJJUV107BLcRaiQ4P96LxY/yOjMQ6JypB3gNuATuvN8m6zFBfezKOafj/oVQwyD8ECAsPxoNRxF+SMzkocWyW1WPOQibZDJk8e3dGv8JSf4uoa1P18d0aA4rypEwuxsjVB0n5wou0W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOM2PlnS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOM2PlnS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5949C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726049153;
	bh=IT6LMvdJTp5ivAdKdLh3XmbSGJ/XYFiEb9U0Ar80ehU=;
	h=To:Subject:From:Date:From;
	b=KOM2PlnSC6PZ9Oy9s3ECaLYEAs+lCETBbBKZKkGDwHbnwejV2B3N4zWBWGyF9rHc8
	 NP85nGMJQ8rCXiL4K5T/jkudnc3/0bZB8G1C/2oisvaB7FvhpP6LFyHsy3g6/YnABd
	 znrXTWk34V+nmkrJTLNfMyHvAjpsGQ8CjO9phfDM0dDEjf49gzk7r3t9zSXW0TCjdy
	 PAuaQHVeG21FSKl9RCMyEBgnseolDAiufGvAbBndr5Ar6HINI2ZZxbr1CjeBMxrwEL
	 Tb9vTNO2HbCmr4trf1r36OKME4mVCK8WFd7o0B6+sarvqm3upMMFIdW7Kj/2BBlTqV
	 zmh3+UUFFeNrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929CDEE4987
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172604915359.31992.9172122827975603827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a03a1f7d0e755d8a82ce396ce013da6f8d280d20214136721d3a384216f2a86
Date: Wed, 11 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726049153
