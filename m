Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249A621348
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760966395; cv=none; b=AfWZOi4l405XLD25vnPKk0TCyqlJDhpfYc5lZxw4Indu3uP4oeSpb/Um8h+iryOAqfHyLxbrfDsqFAqSjQLOdBKYSAgPjlGQhwA13fFxwJ+Tdow0s9DvnTjkuAhwGwS5CRt/3dL5AZbKXFMhBybPRZLTph1Xl1257KEXYzbcBdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760966395; c=relaxed/simple;
	bh=p2+JCdot6pxoaexFJm9MBRIxHn88ebBLeVGpZK/yZ3o=;
	h=To:Subject:From:Message-Id:Date; b=Bs213IVpVTk0k1VCRXnyAV0iZexRU4z1MopW1v8VR2vdOMON4zhlAzbxSf9bp1xhKxuzJKHH5ZBPtapbR/fdsVSQSUMfd4ZytTGni7mMWQGUfaFnd+chAcmm6AbUNcIfPFtVQbFwN3GBENf33ioGRIDorlTjohi2NUp7Pt3wvXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qY3yDeoC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qY3yDeoC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13E2C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760966393;
	bh=p2+JCdot6pxoaexFJm9MBRIxHn88ebBLeVGpZK/yZ3o=;
	h=To:Subject:From:Date:From;
	b=qY3yDeoCVSB8EWYDxYkpQAe94I3y6aGn8MBP00weDVVAxgEtG6iwogqL9sDI5sDgf
	 D786C7gGtRgosrOyu3uvRoWSr4QyQfokiPhXdUPLu3qVe40U1Gm4mHKOQz5snX4Rn5
	 tsFiBFb6ifrYh5gIUEzaybCYTCJa5J6lGyYdZcZdY074JBwsPS76u8TBTDLlMMVnbx
	 xep4wNXpEb30OoXj7FPmIwsQ3Xt+zBcNVjmtYN1Ib9tyDebHke3S7nAtJAD6p2txHL
	 k3N13r1ZMy58QYikv3IoBcGIhnyg5ioj7vdr4AzVBQ+ectXx1/zsPdHc42ymsZLdN3
	 FKOsXG55E5OfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C01CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176096639358.27392.1510358760873015246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b75fbb30f44dd9b3bc7d60c5827e454ac1434b7a024fd34e175852f16f5ed5ac
Date: Mon, 20 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760966393
