Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1862036FA
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746063596; cv=none; b=IqQi1u2YZkmYncr6uYiE2YWUcMx2Qnu+FgDXLt/U/6fFcjfVrXFTm0MsFq/4YRE3RdVmK23X/Uw9HhhLk2cgW4xoxqEvdntCSvGBqC9Gt/UjqHg1DYw+vLqm8/WoqOOrcc6ImgA1NpLXPwe9cQSIzvtqPGFWTwe2mhzT2C/1LJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746063596; c=relaxed/simple;
	bh=bbgDqCOrWXl4uh1eanODPpihzudM3ma9jxkXjmPX0c0=;
	h=To:Subject:From:Message-Id:Date; b=oat8bDXVJqB9XNyDu4eZhbqe3ABVT1qEHBJjRDFyHrszoHYIWw+7O3oNVuSViaLKOhB5PPYhTzLiLJCkqIi7GWJrgusaymbQUUysChXLdhFNL2GVRgMll0oETSo4ebZuVxczWwl9C4TBRHCDd+7lW3JF3xoZrNPm+yzsHHWl06M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZVFWiwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZVFWiwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27FCC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746063593;
	bh=bbgDqCOrWXl4uh1eanODPpihzudM3ma9jxkXjmPX0c0=;
	h=To:Subject:From:Date:From;
	b=NZVFWiwaSu5X6h9j/EPEyIgabZAp63zijeZDJaLWX49GW8v2gki8NKMnEX5OmaC1Y
	 Lr2WegEhxIzTEgNrkd6veb9MAjDDmwwWG4Aavd9kiGLDVhFTpCcTU9u2etc9LycTXY
	 paJ2UgT3uIXBoJ59+ApuZDpgfoVgf8w9jbNbjzM7ak0RHAgNkfQG4lYvsvw8ZRCQV8
	 rIuMxhcx2dpT+V929K0V0c3RvNMjn8v037gI69ibEW8hHyY6D5MkVvyg41HeOuAXSx
	 pHLy+TH4hXBSGVf9Rhg2f1c5bCktLuN6OEHDW9ehb3QQOjCXrMZhJ8Trgp7y2OZbaf
	 2VxGd5pj/JULg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED9FC369D9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174606359357.9125.13194185156775057091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261b59437e92a5dab7883048b158691919e73c01867c8593b0e358c1130f1aca
Date: Thu, 01 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746063593
