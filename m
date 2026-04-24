Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3015A17736
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776989254; cv=none; b=P61DeD96VTDIdKtVkmjy1Juj/cHbDsm1NcuGpCAFPp3znUoFpUPq7vLWbiNeYc3F+4cfzzRA73N26Z12gb0xJxZUAUBBX7arrHFTW3fPsP3dzhNl+ARnGHk/8h09tdabewyiNVnOj2FCu/3aetV6ISia+QKl0xPg5HYBp+WlstQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776989254; c=relaxed/simple;
	bh=aAYOwyDGAitDBXb0NugC8UjLZux4h/lwDvVkqHG0ciE=;
	h=To:Subject:From:Message-Id:Date; b=P9hV8gjm5JRvwXzBTvU2aVVpFZl4jSGS5vAFetj9w9gz7ApVnWKng5D3wULzukzJfid7/GQrf6L63DpXJI4ydQVcY85JvnqB4mqUE+VDzkBjlKByc59RgAZuLZF6lIWWxABcwBS1FCzfTvNQ/77o99CWCTIFlEJHb5oSx9+dffA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMyIv8xu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMyIv8xu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB469C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776989253;
	bh=aAYOwyDGAitDBXb0NugC8UjLZux4h/lwDvVkqHG0ciE=;
	h=To:Subject:From:Date:From;
	b=hMyIv8xurinaOvxtSxeB+5YMAS9aJKYZsfZmLq/olbN8jiO297bZwM8B10t+oIyLH
	 ZsDYGFIW7V8pkHzMocTLGKCgm2PJ5ct8toivVGkq82WPyRqc7//TX2TVacD7EVfDzo
	 ENkgmvoWMJCoUvWPIy5Teahx9PeocTu87hYN9N7Ma5p5N5n51hm+Dzt+PcQHQLQdNK
	 RFBTwNDgsxiJlT7cL44TaePkvGCe+DPr9yA4zkjQ0yrTItvhkM086F078OklyQCKKw
	 rlDil2p4N1dZRzDY8sK3V71CTflQoFuahZKcXmQNjf3u7o+26BgimukWKt8akzi8zD
	 fhUJrGVJFO5sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DD7FDEE28
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177698925368.6321.9559815552212218239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a27f82e408de9021e2660a74237fe60889393b3f62f19bc22ce62e2ac000484
Date: Fri, 24 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776989253
