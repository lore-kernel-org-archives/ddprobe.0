Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DFB26C383
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753391994; cv=none; b=G44vHN4ob1x1N+Y1PLXaGsVfMfTYaq4zI53vefLa2zr3gkdK4EFZpd6I24fT3qv4IViYCj2rNbRqbd8KMZ6jiLfKfrFwf65knQxKKBREozJGOtfKkjLOgIiQF/Qzv5iVpUke9lD4orsAyt4s/ltfAQvBvuT7r89UwbnRmlkzZXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753391994; c=relaxed/simple;
	bh=+W8FRnV7zXVmUqGKxeUeRLkDAwb9aZfCWzalvyPfRL0=;
	h=To:Subject:From:Message-Id:Date; b=fKA7ZzEp9tJ5vVduzcMdyFRAIRagQadvVQ4hYP6gYQQPgV9kBJffS3xm9IMATaHvVG6S9+6bX+ULVdLtAGsILpSDccVgjxyAzKTe0g418FjlkcZiuPMz44dw7oul4fFQoWhmYrXyTrYf5P0HcMMfKA5c/aKGATeS9wuuDZqE83s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9WlJC2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9WlJC2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A210DC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753391993;
	bh=+W8FRnV7zXVmUqGKxeUeRLkDAwb9aZfCWzalvyPfRL0=;
	h=To:Subject:From:Date:From;
	b=a9WlJC2+4hFli8VlU+Gc84buxissg+B3YI485AxlhaD4ZTwOjS24yk51mz++s5A5k
	 zto2d0yemP9ciqzZ0Uz0PJAHf2Mu+wHkpqa8nTmPY6TwFs7v/luhiJLLrycayEHzj4
	 2rxRSj4Vc64YCorTM6HQCwmfs774WNENaBvyTiOMGdxxqKlSRFv02fwCWEbEK8op13
	 b9uFPwNVpvb0Cwg4ICfqMVkEozWZsOEhzoaEXMsHet06AgeyO6OAECvIHNJIv0tKZG
	 OvoNqfjYEmtAz8XEMGG4Kytv6Wy4j3NGqBro1/jwxGcAAZiACaqvdZqYTQCb3JxBoB
	 lTZQhwPszzkcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A2CC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175339199358.26594.5392720767914495880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c8f8d1298d1d6e5ba89b2072b2992eff66fdfbd1f5ad39654f2173c197e19a
Date: Thu, 24 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753391993
