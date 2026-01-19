Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298D52773F7
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768852434; cv=none; b=Q1Tco3qYei0BHPQrGvwC80NTXoYPWZkerOHcFRVXlO/W7A0q8VhcvKHB1LnHZjqIIbhwI2Xn2+r0h40vYKEWk9mB4dvyx5pHc+Y0D4EqMRyXKjcPVx39OLu8yZCJ3hHIIfrEhVEzCbpEs65GSmjE1fpjwb+B0Sxan+ZYFtr9RDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768852434; c=relaxed/simple;
	bh=vIsHgr63LXGY21TrvGAIpd8uT7s06vmJDbow9VZ959Y=;
	h=To:Subject:From:Message-Id:Date; b=uzZUOSrpzU9l/+1N62zOOWDWz8mQkH8FKfrV5Mqhu+YfqN+7rjiSwKjhSKpXU9wRLLzBwUKSQjO0wFMP4cTn8159MumkIdW9etKqGyaCjkKnODEfucqoJFlQJVoo1OgcxcZNFn1Ut4bRS644UgKsGV7jxvCXDT3AGQ4WgGIBIZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVQy0351; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVQy0351"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9FCC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768852433;
	bh=vIsHgr63LXGY21TrvGAIpd8uT7s06vmJDbow9VZ959Y=;
	h=To:Subject:From:Date:From;
	b=dVQy0351pJCHsokdKqwulk4cl0YgwymAY6XXIS04JqwA3vngkjmc4Cx0FYwmup6Q8
	 Mc3DYC2yz+YWl5BFiFeijxLisE+rAAPm5L6XxvayKPJzrm+irOERBU9U7OV3M85Aup
	 z2UmMEQjUAx+tHaaG8fhWiK/iwG+Y26p6Kr24x7cyGXQkhNxqV152bDq80tDbSZICV
	 IPPqKIEJ2v6o1roDX7Y6ehJhX5qtqaAObzFMaaGZsJ62h91xyis34kMlC45CvHG9t8
	 85KdQlstsJnC2LnLX1eYjDi4g/1lbhxm8xR3oZCj0EzgoMk5eIoKACaXBbIzmqwDC8
	 hjHI0PkWRRyhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A389CA5FFA
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176885243359.7118.17160347465318612723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ecf3a5677077fb8d30f7aeefddb8a20caaff815d9c9dfe362eb11ca8b33ba05
Date: Mon, 19 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768852433
