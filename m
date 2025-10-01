Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233AE18A6CF
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759342794; cv=none; b=TVLEohr7CSF/XQSoyy6o219UvvDj3+pfZSlzbAmpJOMMVNcSxyhsynxtRg1CT/IpGTzzKAZSdBfv4Z7KPIXacWTSxKFjbNUPRmmy7JFt5HMnqS3P8Ci8vrDGYouDj682ivWR1SBz9tiZ1bgXRjj8csvASLD6WK7vhdWYi/t9F/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759342794; c=relaxed/simple;
	bh=rcmx3HrOXtxHZJRrHu2USx8jRDPgpBxIod6q++6/5G8=;
	h=To:Subject:From:Message-Id:Date; b=CplmLeY1Ly+0ar1xkbPJmlikt6RZg5z2J5lTKglcXEKaZnJLpnUrzJJikW6spvYssfHqtmxh001RHAEUlxyXQ6VVdjdbWyB0BhJiCJe6v5zwsIusu1EWTLnAL602o/64ibftm/26ud8MfdfBycc7oLM4xEpah0YZLbucjTe+Pt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvXW3mcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvXW3mcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09A9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759342793;
	bh=rcmx3HrOXtxHZJRrHu2USx8jRDPgpBxIod6q++6/5G8=;
	h=To:Subject:From:Date:From;
	b=YvXW3mcYrLgwIxOBD9SJ9gsNbKVaWW1oYxbedjDr/x08H2gKvQUcOp+5/sktqquiA
	 1vvP7w2j7VK1y2n0Deyn4YK8T16dy4Im7WFMWEk8srcx9V+cgvy1hS4YfPTRWWNEpr
	 Z2kvcjhB5XmM7fovFi30BB12CoSzoCyAqezz148awV2zHGkwFYNMKFnyheszo3m+mM
	 ++NvSIHEcNPnPcOzBHwrTCVPURrjA82MIq2x7eZeie6SJqoLWVsH87/rCDwEjzY+Ru
	 NS7AtpsdzQmIMeQSAMZ53fiQOwlKgMH12q8a851NETqRTzCjgTbKEirWxf9sz+4Tj7
	 vTwBrd669cjDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F968CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175934279358.24711.9425610485669195504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 194a321eb369ba0b0a01566a5911250f7b2546110bfffb6741954c96c60557f0
Date: Wed, 01 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759342793
