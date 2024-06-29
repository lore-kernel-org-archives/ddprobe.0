Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DCEB538A
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719622463; cv=none; b=nbAZtgKUIwH3SKBsY7PLw1JuGx6pKMzHXN+sjOcorOmGHVE6Ua6wKrnDZ7DtK5zkgkK2k4HDZYOelLmmfQowTH+lIIxaOA273r0KHWRnFbdb7SsfPnvgnedp/NRrcx01O5nCl7yGVAlJC1W/ph28I3ka1WctWW38gz0LRbJckG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719622463; c=relaxed/simple;
	bh=5037TgfvkWfl/FVNvopNM+HlsHNS1DdVlEBmQLLIH0k=;
	h=To:Subject:From:Message-Id:Date; b=X5nKgE/cGiSCa7WxUyfXkqNM8RVaeHOjyIFiH75D5ZR4qiEuXUvOnfK+5oD7PNAMVQZXLHNa7FM5ppdvdbw2ZO69/QdtkE16lebq0hIy1vaAnx9cboBpuYFGRmgnpdDlIDUniFk7AKV5ezI40q3BiWkzNPTwOfpXfnHBz8IGQTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwDwPsy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwDwPsy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1BB9C32781
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719622462;
	bh=5037TgfvkWfl/FVNvopNM+HlsHNS1DdVlEBmQLLIH0k=;
	h=To:Subject:From:Date:From;
	b=cwDwPsy/POTFtaS7tdsgQVv1HyLj7d5acelY6kM+b19c94VrdBowKWIHbJcCIJr9h
	 sPfowoa3K/4EmWCKt736AqeWL0sHyTQkppsn70dyvP5NM896qTTScO7d5NfVzGxDR1
	 om06eCyyXZX6LODRONK+uIwo5zJfl/bZRqNRcf2LGJ9bWyUyfX6G9rblkitr8mYIca
	 PcmiCFLI0JmIDhFxCWO3x71wdUuxKyYY570KUQTCjg9OG3sGn7HPFbo0CrOKMaCyOS
	 dBw232S8LNCWXFelqcVgO0OVum568gBM+KgOXqoGwoH5WUstt3wYECVNG3ce7zRfRK
	 HXAWfnws6mQxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE791C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171962246283.14829.6320056168395229069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f5537bc9524791a32453b14b4a56cc5dfc1342b10d8f43cc4193a27d59cf3b
Date: Sat, 29 Jun 2024 00:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719622462
