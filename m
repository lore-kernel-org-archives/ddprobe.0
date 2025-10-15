Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407024438B
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760506194; cv=none; b=F/jvCMCfQLU+0ExEsTLOpU5YXImOjDx9cR3+GIIkhEhx8ToZyC2MoQGWbCUW1uxHLRmKu5568tl354Kk81rt355ZlpEbEXxYg1BSYMDzA27wPmjGSSLrcJSGfK5dApbqYmbHxr+9itYglaEWN5NNCY9l62D4kCcYQ2bKjTuvuFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760506194; c=relaxed/simple;
	bh=iy9o5vLZS+qTbju789TAZdkjaYDxSKVrOeaj4wka68s=;
	h=To:Subject:From:Message-Id:Date; b=jCpEPJtIgCTY6D7ggP40UbO9bv4ml1AHDeHFULjOKeBdraI8VFJNf7hUS4L4p+Yd6C5ZRdDjIiwGSDLaxUHVLxSkDwbqEdK4ptpuBR/3BkGVBLhRzB/RGDZYEZ2A++/lwbYlnC53plcG8Ur3I8IHh3/upLqwujrpgZWVTYsxf8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEsngCdW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEsngCdW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39EDC4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760506193;
	bh=iy9o5vLZS+qTbju789TAZdkjaYDxSKVrOeaj4wka68s=;
	h=To:Subject:From:Date:From;
	b=MEsngCdWrIcgVU+JhFoZFRSwblTQN5H8+eup080n3oG+VymFQGpUCQKmJ8+Z5JOvM
	 bq2wsNdTvnbnDm+FAW/AFpT+5QJhh52bF1itC4G/2kqWKaRUx6IRiAWwRB5vLEwmN1
	 SiG+hLGsfcU7FGFqek/hZGyWy2qqc7/XvIuJDlETc9SJWaekhEvm0BnOuZbh4ig+0u
	 4Yul0q5EDtkS02JtOs6e01N/2LRrbkPCmks1L99qXgV5kaODEqTldSknqwpN0ncG8f
	 NbH7iR1rIYUgxeNZz7MSUdTAxmwtLT0eTCTQb1nEAUEcjLoNVDhHdAvmAFdhhniu9C
	 VgiVBFQqutHrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F9ECCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176050619358.25305.6856366943580907043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab3b7bb3e56b73cbb271b6f2fc6eb9760b90743e6ad8a17e135666639d25719
Date: Wed, 15 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760506193
