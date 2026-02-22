Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FDE1E5702
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771794894; cv=none; b=SiOI7kThWrznnWqfVumfn9ZUX+YmYx5s3ziIyAQ/35ikwupV10RUnBOZx5PAKM3rMZtz71lvy94By0xa2l7EFWkVaM6cXuqgDSmVULt+S1IKH5uLT32pxXsgYtWOQryVs4xPmzJtS5m5Mu2Fk3ni8CgUxX+mbQQBwG16iTPPKus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771794894; c=relaxed/simple;
	bh=1KfTMeK7x+jr62pLsu+E15z5NVPOa8zHD7KMzON8n48=;
	h=To:Subject:From:Message-Id:Date; b=Kl4opi6PavHUmCAeKrfBZkcdXJKQI3LHNYyq/c3bB+WfmVmDG9Ad/GaUw2W2/s4x/uCa5Dy+M4w/BRjtvwJhOsdGNuGMPlK5j6+5KBYZh6wRcnyqk2UUn1RmjXoh0vCfgIML/dCFl/Mmt6WHvk6GKg7gRLV4ZSs6MGzlMPfd9gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCzLIKd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCzLIKd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67BBC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771794893;
	bh=1KfTMeK7x+jr62pLsu+E15z5NVPOa8zHD7KMzON8n48=;
	h=To:Subject:From:Date:From;
	b=eCzLIKd+lAZfrCQEJGl0EwBzq9LMgqJCDcpcw3VLqa9V2JKwmjqFAFRAhHXVp9spM
	 B1cQXD4ycrkldoiqp+Sj7h+QsAkXH9O0U1sku/jJ3fyfIbz13YiPr/mA4p7Mpn55pr
	 jyMBC4kMeWhjMqu/WBs9X4VMqnXX4sA5cq8blTxmfE9t9qXReIi8hV8Lv7tb/5/ELW
	 64DtlzdSA5VBEcJGsLv8+frx0jruWLlKkU/2etERqoqE1nDVA/crAohRjRaIpADQvu
	 dzTkHajfFjkAye7LLbnXgJXTy6cfqjeyy9xgAb/JbiuDsKkNTNrGoUFvTkhkLLtITk
	 QVIIgNFz3g24Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92404C636BA
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177179489357.18152.4705020011051788103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84aed43ee113f71bc3e544dde6a9627da596ece9a5c6d192985c1bcbd06b0ed1
Date: Sun, 22 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771794893
