Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BA11DFE1
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 08:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714033883; cv=none; b=J2wzogTNPe+jWXplTAh/Qv7nfUOWrKyIC7zlQ9UV8SYUDQ5PWU3OA19p2bZ/HR9zeQ4Hz65uC2CwXQzEfMlCQbNbJOVpXbQdxJDL8gVI4b9W+ZbZqSyJuwGlYc1aDnAAWAHAwkmKFtxt0b9NXTI1SG+in9kc0qJ8LvSmH9MKtLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714033883; c=relaxed/simple;
	bh=JgaDUE6mjT2zhTODeiZdybVx+mr5auOhht3W672B/hA=;
	h=To:Subject:From:Message-Id:Date; b=EWBkcIRhu99ss9Xuz8NT2BL+t0jP35UAfuFfdQc2wffAvg7V38c/PBazyB9zrnWe2zyuDGYIlLHtoi2TjEU95UBXdFScwlV5TD7tW4vBNpEntJAqIwntP9yYxW7pF9TEi86ZYZ6bUt8S8VkGqNuyDINzCan6NIGT4klYXpFvM+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfgBNQI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfgBNQI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0407C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 08:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714033882;
	bh=JgaDUE6mjT2zhTODeiZdybVx+mr5auOhht3W672B/hA=;
	h=To:Subject:From:Date:From;
	b=jfgBNQI4/o0bBsGVN/kPA6CxR5WI/EehmXNfkkAM9bzfHmyndHybyYeqgJAvbJwf2
	 qEkdWGiEZifx8/Q81msN+tda1n0a6olz/OZj7sqpryv/d51D5MogpCf+TbV83W67Q6
	 ETtAmxqfkb6+Vfgb7VQ0m+zuXj0GSAD4UyfP8FeKCbJT9zwd5SHLpDNM50BFZ566ua
	 SeiXjPPp97H1Z+dlH5S7YIAlTyLKl2A5Jlb/SL1bWE6Wtf3TAD9RdL8MHuZIE49rQ2
	 2rSBsJNFBc0KatQGE4QJvxMv/c25jCsFn5rxbo8ntmXCjAaFZBYqk5CUgzrrmogCbg
	 ZjkfqLfB23cGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2E6C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 08:31:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171403388276.14767.673380942373672348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e263501a49027392abe9f12592c7c02840ba7b14638d7f0a231963eab35644b3
Date: Thu, 25 Apr 2024 08:31:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714033882
