Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646BD13C3D6
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 13:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716471803; cv=none; b=FUCKIbutBmARGBU9P34R/A5QN/QpJ8aXuB78V+RHu0HnM3kDh+ICSrEV2ZOd11s6M8+vdpbt50tnnVq9eAJg/HL2ISZLfJPI+zlQXHmxb/fCAJm3oAvUG7okXvRbcWNXTqlqvQ/tCsGtqYhvU8jfianU5HnJctAlqusOpjY+3Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716471803; c=relaxed/simple;
	bh=AKJFpyLOtUmR76wUbSFwOdoXGqRHzwmk/xukubPrNNE=;
	h=To:Subject:From:Message-Id:Date; b=pmxDA0YDoUrhpcQtY1mfbvYCxnKwHN0//UpObtfXQd6eKZOjUIPrWsoyvBh3Quo57UTUWNld+wC2R210P9ZNN1nwrKken31SxkU9Goq3w5dyHKDW7jaiqRiQNd42+UrTLdOdiJhxLfgTIRHsiQqwTYoO4XtFF1hd2lFtl2EQd8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYIIeY6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYIIeY6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5E9C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 13:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716471802;
	bh=AKJFpyLOtUmR76wUbSFwOdoXGqRHzwmk/xukubPrNNE=;
	h=To:Subject:From:Date:From;
	b=LYIIeY6xyUqb6vMR4OH8UqlWYrZUQBWKM4+ZwDixV52KfCskgrXcV50tGDRrdIivX
	 7AMlMasQe0OV0MclTlyZOd+7D2JMZLtViVrKS4cipWIMP1mWQoPZOBoomlqEDRirO4
	 W+vPVti5RYQFtITMJnnz86NwOi6LFchjejxqWXL2vpL6MPCUOaTgEIx2+IYx6SrjiS
	 q3PbPjQmtkm5r00ihdU9Emn0lp0Br5699CKYc/ybOcqrNNHFdZCOK2fG/S3Gc1RDwS
	 jpBcWHrBF8gpVH6dSN/KDzUrMaBz9gEvluRTSNCNdfW7k+or/DHr9cdtZrqftMQx6Y
	 A8fWrlZ2rS8eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F4BC25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 13:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171647180278.30567.9781186487363520967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ffcc418f0b7d02d95c1499a02acb5bfbdfdeb04279ed31b4967a8ea1b7f5079
Date: Thu, 23 May 2024 13:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716471802
