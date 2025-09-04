Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186392D6630
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757005194; cv=none; b=TvtABXJF96SAo0a+vcrJFVUjcie9aUyK+JKtYQdI8+Ofv+OMVEAhbZ3tegUExPZUQX/EfginWbpM1skMZktI4WThfpVdZeKDwD+S2uVLNbf7udzf33Dv+vZXLFwmyFvkpxL2w0lGoyqi+34mv8l1dfDYcZnQZ3Q+iHA+hTqj6pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757005194; c=relaxed/simple;
	bh=htRZP06Pe/OZNw3WI4SZCt3cyllsu5J6I42L0kjPrP0=;
	h=To:Subject:From:Message-Id:Date; b=F8af/QoTUBHwL0tKOtH012cwBfrqrfp842PCclKq3XkUj4Bdk7Zs/JtDhA4z6BMC1cr/JTAe0FN4xGC+/gt6r3m3K2pCfytaI5ldV2sAJbNm90iyQGRjRusyZtAUuZqVtEquLU2BH/UITvIgwvAeZHHay5ULUy/oWofCdncDFiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njl98aY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njl98aY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B02C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757005193;
	bh=htRZP06Pe/OZNw3WI4SZCt3cyllsu5J6I42L0kjPrP0=;
	h=To:Subject:From:Date:From;
	b=njl98aY864KoaUSCw4dtsug+Cm/lqwEj9vK8dP5fzL7OCGF0qdeY6OMUDjrnmMDxz
	 2YUuQAPi9w+pmjJq71NeyTN81l9MCtXjL3/lopWgJiiUqQDYSS7E4WOlGkMaNEATc+
	 cwVAyp3hVMt9GgqqJ0hACUvjA4brJz6adl3o6i7T0NrjTwOPvyuFLVxKopuPoXuby7
	 haPgMAcIyV9eUcpxO7NmQizkO+UWlctpsFtQNFBKz+PnVpRCwQfULhonaeze7zXR5I
	 WWNfgRjaA7N5K965w3mRKW7JZvl31xhDih4fqvqQiwvKBXFew3Bfn/aoJd4Jixj9gR
	 C4I3idKmUzuTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97924CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175700519361.32387.8614783863891956196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781b1a3a214bd851a9ab2253ccd21c373e71d5fdd8a77a32ef91796ca958c3b9
Date: Thu, 04 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757005193
