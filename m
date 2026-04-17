Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362E4371876
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776434254; cv=none; b=rDN60/AGAsbgVpbb2tmdw+5F1XnOLuxtZ4M+MJDbDvrnJD7VHD1OF+HnISgdBZn9p3AvV1+hsF0z+KLshxHIyJHMzrYRVtuC/V/K97882xVZ+SrPEBHQ75mY1s6X7YFGwPCVpgNNw2PtxfO7w60dODOiqJ/AA8R7NNCOnbsyvEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776434254; c=relaxed/simple;
	bh=k9TIxN9iAL6I+LRKHLGRvmB3qtPUe1IZw8V7RtYMW6Y=;
	h=To:Subject:From:Message-Id:Date; b=AOHJoyhF0paK/9bqNwCx48sjLQgnyZpCrLuW4nPRf7cuon6rQwW79Ku0ZvdOqjJWh1D3HbhydDr9INnoCn1SF+uGETcZHup36IpV4A93Gd8BLGE6pTz/VeVIx22ZW48AiEF5jLVYG8zyDXY4+wc9yvkrvnrp0fr1C/x610G+mnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPIRRYS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPIRRYS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7073C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776434253;
	bh=k9TIxN9iAL6I+LRKHLGRvmB3qtPUe1IZw8V7RtYMW6Y=;
	h=To:Subject:From:Date:From;
	b=iPIRRYS7e7XtfGyPVfIbx2BKldl0FLOzZ47/wpDVYHfijDJPVwO/GWcm5hB62fwpY
	 RyV9AwZ9ttiquF1QBLl954OdVVxF42qMLazL/GPjTLafHpJU0LBvxezs7fIYG7+KQP
	 qrW5YHBlQDKtla6OXk0BD14nr+Anl/MSXs9M8KpcBG4NYvn+EyDM+dVL35qS5htS+l
	 sxfpufsGPjWS+T0XPTBCJhmYyazSWANC8X/rpR7tagjUT17JRpXiaBA+Tr6Q/LlhAe
	 tOD/oUAO75kn5I1m3de1ycFLSF93nuPg29F+Cwir08ESPpNko8ueDcbS6lqRIgUJYJ
	 cSjBd5/Eg0ciQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A936CF436A8
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177643425368.10906.16874178532713385465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da68b57c5e536dd1241350f53d797432aea4ce0c5bdca6cc703b87a6a8d08049
Date: Fri, 17 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776434253
