Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A83A3AB496
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 09:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781171794; cv=none; b=SEpNXMj35rHSSu6CvHXiB/XHQOP0d6uX2/xTC64dLVvQtQwIAI0L4bY65qX/+IdLy9chovlqUrBu7BlXrd8MklOJqtkSE6/TikpJUw/p43o23a1G11aesNwmFiKF4pZFZPXSbEJmtG+hLXXCr3MtCxVC44yavXfjGDA34uFVQa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781171794; c=relaxed/simple;
	bh=3rsE7pfJJJ1J0QVkY/V/6E2Sq/DHH9o8wskX2d8P2mE=;
	h=To:Subject:From:Message-Id:Date; b=L1GvawP4ejkydvQ3SdhuSHLnHGz6k5BdB5+EkstGuc+teHdsnkLGz/pcapLLQ9LaqO4LC1ZK+aW52LcypIHEeFQe8/x8QlnCXw2U3t3+nQWHOjj75fq3LDbJ/E1qB6/O3+2WUfBseRd6SQGOyPJ0WR1WShxa8ekRCwltxrSdLUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLIA/k9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLIA/k9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2198C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 09:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781171793;
	bh=3rsE7pfJJJ1J0QVkY/V/6E2Sq/DHH9o8wskX2d8P2mE=;
	h=To:Subject:From:Date:From;
	b=BLIA/k9zRX7VmuGWQjbYT2BQVkWDzEZYaOfJGSgFbHxlTEhuw7wWk8G4gHrmvJ+Je
	 6ZxBQDSTAYUDFaGKsgzIrkQ78XFfcczSanjhMZ26NlKZ5jBnb9SLcct4C3AVlbdGKI
	 U3dph7MF5Q22rjLRXPnsuVHeGDwy8Cw+ZsCTQLsEOXtmEIZFR3frRKXja8A6x54MBl
	 dcbhiBt+8TzPTkOnGi+KHlECA94UKdPOBuCySnKnnGzM4OXjIWr2Fs1HzKsq/0rQFD
	 Rio+DI3lwcDyTpiGQFxuC5RGtFAk1Iw70R+zwSbkmN+ir2b10a3fmGOY5ahb+16xI8
	 WlTHh2sqbon+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA239CD98D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 09:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178117179368.30735.13879023414945779713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d1049078a12f1a331741711750c71d44eb9491b0b27b9d408143543e541f2c
Date: Thu, 11 Jun 2026 09:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781171793
