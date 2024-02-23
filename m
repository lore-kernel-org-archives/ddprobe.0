Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBFCB670
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708652297; cv=none; b=Ao76uRC0fs8QW3yuP5252Yrfu9CwrW1c4sQWqByuLMO7t+hIMY3oe0qe72TlijYJH8nvgqYwoQXFtJG3PQ/lb1XfVEXqhWFYyEiw4lLZGJ488MOGYT0joeXD1LlrLBOAfhzwq3sr85Wd+kfSq3SvRVwPp0QxVA17EaEduPpiKTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708652297; c=relaxed/simple;
	bh=+OvBcgUEkMbbz+YVojsLb4GKN+PuizyOnKV01mZLYPc=;
	h=To:Subject:From:Message-Id:Date; b=rBf4k1w8IQ7LDps6Pff/52eiOGNdV4NEmkXTSx9tu3rB81FUjFCDtcKkGix5l3Sbe9fBo3XeK4lsPMtGtbgVuXKCfwz8sg2FpNH/nF/W6HJTvd55TJgNnZAHnGpTtBOTvUpvbrzBagT5HKEB6i6hKYFErdtQ4YbVyGqBtm0dRMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jycKVhBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jycKVhBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89D25C433F1
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708652296;
	bh=+OvBcgUEkMbbz+YVojsLb4GKN+PuizyOnKV01mZLYPc=;
	h=To:Subject:From:Date:From;
	b=jycKVhBToZuMX/j5xqCCDe0CzUO4SymCWsccZkFAcbE1G4MjQ9Qmd41nTo40sKvB5
	 EEeplsWY1fddmcY8H4CzufnGtixFUdhGrntCtbGE3dIhQ8b3n7AbriHx4a9OG2a4qy
	 1yIAw7Kd8mHy2LqS7qfMVYKDHD1cZLcmADoVtqOSx/KVpcxCgi6pb3iAa7/ooaB5d7
	 6IAU7wXUgT2gAzVhOekG7lH7tt/9klRW8/zv6mX8T1TxoHptpsZgw3UUqXoZbVMB0i
	 IfZHpNzG81sEiMK2boLLthMGFS4MwP2DLtYwvSl6Yf220s7jTAuljSHg8I3Uy+YXzo
	 sXMglSmg77cXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70927C47DD9
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170865229641.25623.2828051088058067771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cb02eea01a037e0f1b885c81ace04ec66362c04885d3717ad888a38b495ac33
Date: Fri, 23 Feb 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708652296
