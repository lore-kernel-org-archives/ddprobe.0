Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C0F8F4C
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739076954; cv=none; b=PZmVuj/nCmwx278Yq+3Zz0AC/Kwt3XjFi8bM9vaSNkbU1EgMAdHWX4l+6OLSTOh5zqfUREMUMNKUB4ZZ06Y2B8VqrH949ot8YfSWWW5agmNz7RncQhw634LrF1InF7wXxlzW5i7qyJLEeiE5yieK0d5Wbvv1IpxXHSuqHRNnLZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739076954; c=relaxed/simple;
	bh=6BpLYj0LOUHRjlYLM3uf4FQAOD2A9PJS1UCBePYLmg4=;
	h=To:Subject:From:Message-Id:Date; b=sFEqHje+tIGnwa+eRgbOp4luIjTEPbux0HjUvs5/B2TVL6Nl++5UQeJ/q8tqYqXsbiQ0g32UN/xhKZ460wJnRaXKoFYw0DIykdszVQsI5xo4+BC4Z2b13y4JfoL7YHcuLqNkCJGRLSO8kQy5p3YGDjpxQ69KbBB78Wlrbdwkd5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WiColq4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WiColq4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F14C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739076953;
	bh=6BpLYj0LOUHRjlYLM3uf4FQAOD2A9PJS1UCBePYLmg4=;
	h=To:Subject:From:Date:From;
	b=WiColq4zuat4GPIFZKzhqYnGKWHo3MeBTMjIRb9o+vq0zo5MDYxhjbU+LeDk54+JP
	 Uz4ADX70U6KgFpKZcxvsV/5JLOpbLinhh0U/PJUHDp2Z4AbFL6DR/JmmK2nPNai/Bl
	 UoJvQR/X/VFrWyhOfcA0rbj9LBlrbDhQ4O92qj/ql3USj30S0X76J9R54gCE1Jsvtv
	 6vn1BlqytQovsdwb3kht1AtshRmugSDLbuRNl1XALceygNNYX3ztrb5VHVrCiREhjt
	 0/xKCYhX57X4gQBm3E6zbqDNXlLPbSPCChIw5VNAb1js+ImL6avxyliwAhRP3cQIKT
	 Ic2lMHgliAWqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FB6C02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173907695359.1023.17396920488838056324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc7cf490ac28a8b29315d6ed4fbda2d0c521de396f93024974ab6e9d5932f66
Date: Sun, 09 Feb 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739076953
