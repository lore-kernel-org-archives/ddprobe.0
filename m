Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389392BEC3B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751029794; cv=none; b=TSRergWRdCbSt5+vvN+I3JKgBf1qbKqF/S6Sj+Hou81JrE5ZYC/hO1fgjpWrnXcwro2QCYm3zcE99CaVXIqYSduY8NpIwnZyXZiJElrkRkjDShFrvOnyIvfD0LVBT0Bse5akuanK4znKbxNLvduAy0CC3iIgSSocjNDxrl1KCZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751029794; c=relaxed/simple;
	bh=faE0bLO9rCUUEFsPfN+HJlqwX2uz2r7+OrS3GNhfNTQ=;
	h=To:Subject:From:Message-Id:Date; b=NQk1vWB+rsL3O7ukCAS7cZsGtS9BLED3QcYo6GBOltSOEDyjlEfO//jiN7e1LgGUCHaGPY5xsGSYtrxdLQZI6L82FZC3qcEzPybBIHhbamtVKgWHDnwQd+6KgyzgaTXMOVkTer0JSpse7A+zFphV/kCKE7HF5By3B1mN/MxLwt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bz+RdYUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bz+RdYUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B93C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751029793;
	bh=faE0bLO9rCUUEFsPfN+HJlqwX2uz2r7+OrS3GNhfNTQ=;
	h=To:Subject:From:Date:From;
	b=Bz+RdYUdr2wXsImKISjRc8IVS89l+o1Q/4r/Oxu1EFjfzsNCuo4GM8boemNvlJSdQ
	 6BEh8NnMMB3BINWr9sgR65JUEQXblj0Dlo1bpoSwh1s3k+7kWB9MVkmxarSsv3mge2
	 KA813inigOKGbuvm08IyY9nZ7oxhuBRLSywn+dJwvp7Wmv1FkK2v5n9Ln8jGjRphr/
	 mAUZYni78Qg8MheIYgAo5Y5PaiUoduOfLo5dtIpSDY8OV1YFIQeMwgru1j6JGcq1l4
	 SpLKtfc5fxuI57ypZt56XtojTZAe7EDZujNUoM0Gy+i2dR7RSLhTCAj/ZTevjiH1Br
	 Ch9+XCwswz9eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93343C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175102979359.22031.10438318522188397511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6138dc7d8388249fd86fa3b49ca9f9348c2efdb6e16cd7a7f7d54739366aa9
Date: Fri, 27 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751029793
