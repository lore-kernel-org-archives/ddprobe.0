Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDEA54652
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750997994; cv=none; b=VCQS2R6nKdz+ae/u30qxTvEgDCHkFSXcSL5b3+IudDXPmd/3cXV8gOA8FaorSqBCZ54408en9MIDIZjfi2lu2v2N5rXy7WjUhVHBHUoncksViCrAh1Yum2B3REPSxsapLHiTcUpWJGPGqcJYhFVXXhbFBi/9IafHBLQBKEbFcwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750997994; c=relaxed/simple;
	bh=s4G3rbbgVu4dPh0w96TgRpZ4jUHcUpFcNYeG195HYqI=;
	h=To:Subject:From:Message-Id:Date; b=muRa+sAPfRTumBBKH+sG19wCbufKP4eIAOOmJ0QSpqINBMVRlZUpQDcRLsbugeLnMR30/+WISP3xstCS61F+7/mPPrWx4mQKDKsr9gbcIor5uThlMUR0VbQwFuwqB7nK+f1dCo6ai1tktIo6Fmb1ElOjL7UwXaikCAirODxlqfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YB2kMNtQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YB2kMNtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADED2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750997993;
	bh=s4G3rbbgVu4dPh0w96TgRpZ4jUHcUpFcNYeG195HYqI=;
	h=To:Subject:From:Date:From;
	b=YB2kMNtQmlVJ9Zr94CalnV7gXbXIumaB0SsLGWNZeG+P/nTUpAQUPPMU2cf47KzxA
	 cZhxpwSeEu/Qs5ttR2waUOzAePVfbyxnUrJ7SiXBwV3/Ep8K9gB+nUfnm/m8k/UCNl
	 jzyDBjfE1HOeU+uL7dwm7N5CvSSxzoinqRcbriMnVVHmvtOPb/LMTnEr1v2F/+5Pa5
	 d3tOWF9KszMGqrbRvK0rXH0TNCHa4B6NmYII10hk6JFImFgarW/fjm4WkwbSxaGML4
	 giNm4p2vaS8VTYwlYBO40ZITaXpTxv+50G56C+eWTNFJkikRQP8TorNrXxwz30Vd1Y
	 IO8CBJh/S/1ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9910DC7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175099799359.13038.1554454088699753303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e25cdd1a3cc38d0b9333ff7e8600b3ed3217068619bbf00165a1bdcac21bc2a5
Date: Fri, 27 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750997993
