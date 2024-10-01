Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47CC18DF98
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727754953; cv=none; b=R/dUTt8pT/lDoObujsgQcM088rFlLzBt9m0iQ0Sx+I7u27pr4UHj+byAAaz2avgpCdZYCPBvOQc5X5csELPPewLtZUUXcl6GjYdw7fPKUw+cNnyDN5jEG5M0mQ8VlC9q8NhTDIam2hzmQ05jAQZdgX6Ac6Eo4WbESK2cRmhcF68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727754953; c=relaxed/simple;
	bh=x1TsGqANd+VbSxiw+KDRd/R679Pi5u0l7iX7onubhPs=;
	h=To:Subject:From:Message-Id:Date; b=uWaIb81VD9wQwJxwgjxDObtlPNG/0HePjl4UBjLq7DSOLgzK6uTH+pDSAJHOZvCmXFSBZhSfJynDApbyQN9S2fdG5FJ4P+CFGr4cP6Dk9xLhLYlPTZdQ5hCLp3N5yp8kmS6J8nWQ4arcAEvLpYTQRUCW40mBbLJH0B9NxiXCYUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9dIbIyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9dIbIyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D92C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727754953;
	bh=x1TsGqANd+VbSxiw+KDRd/R679Pi5u0l7iX7onubhPs=;
	h=To:Subject:From:Date:From;
	b=B9dIbIyY5dKeMDVhsczNch+dXAB7yETscvVAU4M/JvFTKusXLMrILdmsyrGpkVPMW
	 5KzcNvnqjhy5eRqyBaOgxM+PHW1uh3+d9bs2A5kWr0YyzCHTA15poaMAned7jfXB06
	 1rcyUsiV/VTAUauxZ0hYzMQ8ZC2GVjeEbzTPN/aOS9RQbJfSKT9inXeNj/9MdyL2u8
	 ZDbmoQs4HUFQafeC8IZgUuPGA9UqmePanvY3PFBtaBuq8OIPSfL7RgnPwPT8DEItkO
	 1s6R84AWQflGbER1YP8Q4HG+18AZjsriECKA8oAk+dPfT7GIVEXGoKlq2Yilc39889
	 TExesoMdmctzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B84BCEB2E4
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172775495362.14543.17385862292064084116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d4a9e5508b1a37c266928125e8ae13a3381886cfe2c9a57a714173e91f91f63
Date: Tue, 01 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727754953
