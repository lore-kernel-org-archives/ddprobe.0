Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0AB2E1F0E
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762254594; cv=none; b=CcM0U4QWn1x0xuMDYlAc+eCEzzqrqeBZ2jRr4Og79eJGWTIBbCbD7vmsuOXjWEaAnO05ZZlMaHEVAzwkevuiMGxLgT436D44d30SiCT6zwou976l5uI+rKXFS5wPOE2v+Qo4af/pCA6TKDU/TPRaTTJ1eupxpbwF6XHPNYsreWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762254594; c=relaxed/simple;
	bh=7H534uvZUP0hRqHq/MhhVcLyzWdUbJ4kZoM/05Xqfgo=;
	h=To:Subject:From:Message-Id:Date; b=tB3dLn0vMKk7VImxyS84T7LlKFpNXd0YHzPpBHfx4uMzEstsekP/GvO9/o1mRdyqqhNar8u9klEh7HTPonv5S5fyEe6cPjpzs40ukUpUVSKA7YvVzMe4KZxHiDA96s7rSGoLvFVUpNkZqlIiAsmcIb/KK0m097FzzRQmGaZKKts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQyns61u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQyns61u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EABEC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762254593;
	bh=7H534uvZUP0hRqHq/MhhVcLyzWdUbJ4kZoM/05Xqfgo=;
	h=To:Subject:From:Date:From;
	b=MQyns61uTW8qIcXRPbBboaWSGtbk9HCTAl6jQ3QnlLMb2HRyu7m4mZD6vNFo5M0kQ
	 vHaX8jajDJ+eFnLvTswUkXypwLI3DoDwG7L7qkq2g4OWViU8eySvweLkn0R/dqTMdU
	 icuyIofMGJallAcVtKEDgWJkPdUP7NHu6jonSBP8AHUEqmxJZ3ZxknqsnJ1zS+ytDy
	 bo1GPDxKvXLXLuj8SVU67gKrDB7IOUZSJh8gjB1uJgvKrKivLqfpYlbEwvdAInp47W
	 r21Xy26K9SX1AIzot4UXcj7UCPCHClq8vHszLOSzvi42t148YTp9vhwtZOn3Qe4ABO
	 zD2cC+eQ8nJ2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75ACCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176225459357.9424.3733975063440677701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3c33d477f21af81493c69e0046404170485b57706018270c656cc9b53456864
Date: Tue, 04 Nov 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762254593
