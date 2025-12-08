Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED8D25B311
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765213974; cv=none; b=swOyE8qvJYFHiqMlz2XQb7nMkpTh88sXoW0c05eB5hrw5dUbcHLUtfCSH/aAgVwb4OZkc5BlR9Pm3239KsKPXbRkXbqy83J2GdgMwyJ6+HrNOHBVNuQeZG7yxboIf0kyQkds5ofHg3yX0Ke02mbrrB35DqpGNlymIVCdKTssrSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765213974; c=relaxed/simple;
	bh=gKb5M9s7KPdyX9zIxI8PgVfV+L+tFgTh2dbgbIxMRvc=;
	h=To:Subject:From:Message-Id:Date; b=P3rn0sW/cENuYe/Oo4Tot7S6XERnijXTKWERUT+P8NdONrrFcdMadiySCn+Aiu9Qasy4B2x5nH/79hJYy5IXAZDjyCZxxzd/tJfnZXbWhsnbizSz3qmNiYUtsxIJDNQ3lYGydQDS5B2Xa6r0/hFDJjeOzWmgsnMfPAjG7+8aRac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r98aQaPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r98aQaPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFD5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765213973;
	bh=gKb5M9s7KPdyX9zIxI8PgVfV+L+tFgTh2dbgbIxMRvc=;
	h=To:Subject:From:Date:From;
	b=r98aQaPjYtTVw1MpJ3NIvaiCUllOoYBkIlTkubyBx89JP2Y+am9soVqMwqmu0Wf/n
	 iELKC6bhiUkrMqz/3pzG4JRIhBPZgZMBZV+SFbEC6p0UH3odIi62CJLbrBJF87Jv46
	 cc7Ath1zLZVkpkmVVGIWDt/4yvHKFzb2yIpIKEkdB/KyQfZgktx3LP7XiU459an0Il
	 77wd8mrEAJ8ZMn6l/SSdN8B+BA80f7D/Tu1rMSKBaEvgS1xlmJ47ftA6pOfn6l9bob
	 OInJwchYmAgnziQP7qM+689XnUk+souHLv2pD0ICEa7NdhhGkXu16iJjgYd0oZrXxD
	 HD/r+BVNPH/PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94F9D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176521397367.26379.14861561344742254239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65fff113e5c354184107f90d66f0673c21871527b4e72b6801422db6381ab429
Date: Mon, 08 Dec 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765213973
