Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215D32749D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768000434; cv=none; b=XfDEpr7E4lKKGFVz34X5sWAdGcjipWPQ2ienBmdihQhRHmz0HjBEkovus93p/as5GMiQRT1gSJ+C60R4bD+s7K7LRs5go2gxbsr3cso/zpKE7URX1V1qBvnm3Mk4On7/QvWjARBG7eBnMkvB3fOc7JEz2DN5ZKkgpbPPyWqYOns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768000434; c=relaxed/simple;
	bh=Y/YcYGqvUqljvJglg50PcnrXI0Z0BxmNtoECgIOtUx0=;
	h=To:Subject:From:Message-Id:Date; b=SslYgXY4F1hCpzD1qGG2CEXGb12Rxeged8RjEwpkEXxHlwsJ/8dhf0FSe6mNvuOKYvWZxCTwDWw76a652Rd+zk+PhmknZ+NuEB6/DOAAhfoq9xWl+WWjIr8LImRGADSQHIUni/9IGnBOebG5E9RbPxPzHPFMKPKHbQd3t8bQdXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwH1RNwf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwH1RNwf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E9DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768000433;
	bh=Y/YcYGqvUqljvJglg50PcnrXI0Z0BxmNtoECgIOtUx0=;
	h=To:Subject:From:Date:From;
	b=gwH1RNwf6LBW+TOK6i1Qx1vYSIsFSGCo9+RsburdOFScq9Zmd7v4bHLgsMmoYATAL
	 c98EOtRVg0kW/GeZ/C28P5DTEaFrbf8fSQKFlK/s/+nn9MJjQmn7F+7QgHU0F24O4I
	 DTzDgzpp6Df0ql5OMCS46CHMwKKgzuSBsorDVNPyqY/zzkVVBSAV8vMh7ItB/4dp9S
	 yHAf+8YEj2qZjq0/twvNCkn0ObpFnkVrXqfm+suCnEbKBm0bqTuw5p9e+MqfVPKrKw
	 eTH8MMIJskqW6QYYJCaheKZw+kzxesCbmILEBY+eVt44ljV4eXiLm5T0+kONymXPyU
	 2LacmklAZ7urw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD6D277C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176800043357.2643.17607209507686663897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a389cebd3647f5d2f3d1a704584fbc1b473e7c529c28b94cc0cef5792b7c798d
Date: Fri, 09 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768000433
