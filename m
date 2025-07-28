Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150C725178C
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753708794; cv=none; b=EX1F8FtibOR4p94bn991gcb9QHot+Bk/E64m/fmR5iwmLeEptYVfJhed8tGq8qXSMkUI2jK6RLXnvkLgh8Smw7UKFfod4svA+kFy/m5bbYJK6OXH+JDXFm+pIUm3bdaRkKMeMWpTXtM+SgXtEyjlqib2M9z8yj3OZLiZ9wbsiwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753708794; c=relaxed/simple;
	bh=xxBZtIl03xvBIfV4saKlB1jkOnwp+7UPurG6vhZNX/Y=;
	h=To:Subject:From:Message-Id:Date; b=fmblTU4RrNvGnGwnjDLzEXoK6WrzItgCapts0eF8quYCM+WHOHxIKSxYZXZx/ZagwOz4MjgtrpNSHa2IK8QMa5n4uiEiRmF8po2DgWDK6EiLQJgLS6QT3WrLiDippOk62QN//AZGXqBZP9jF6D1EH39y16WDSc1UfNqVH9ZE1IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPNCn/eU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPNCn/eU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F832C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753708793;
	bh=xxBZtIl03xvBIfV4saKlB1jkOnwp+7UPurG6vhZNX/Y=;
	h=To:Subject:From:Date:From;
	b=SPNCn/eUg3zBs/ESRy8dpmQgcvYFSuMCgkMV0Ie4ccPUMVOFlS3gDDiAFEywkApGq
	 ydR4ciJwc59fuoVT13XsVEaNBDHSUQj22quxx7eAJJ6MqEunTMfhukJly+smTxG6pd
	 RciX824naUG8o3w8O+jWB2DPXVgZ0L4WbfSTo5ktBIIvvlrCw3wQKnwuLcsQNJpr+m
	 AvkeOlaNl0cTO0XXCP2OWRufwZ6khl1ip1+OxPsAgP3AD803x1wdbMywakrfZqxaqz
	 1pgnRM0ez5L1qzXjOjQdhuwmPCpXByXw7zEQcJlIB5EgxQC1xQ1tKJr4P1RiqNPxj7
	 qOVtzBzRdlr/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E463C87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175370879357.4816.13402874155099189076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb378c97a7bdf1b160c121fccc8c5974341faa3fb044d9a53247365b481fe62
Date: Mon, 28 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753708793
