Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232B426E706
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763985114; cv=none; b=UweoTNDNB5qQU0oNXK3ir3FRqdSwIhXAPhPlVMppkbEfQXbfhLGe1s1lrxyI21fQh+ZDDrrkReTiuK+0Mb8SgUZBecRVD0cJVYpLsiun/mNgX4yKbuPatHLw67Wjr3TCNcuB5pwuFxzVUqBWo5H9VFW+LCugaG51zS4IsKpjPfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763985114; c=relaxed/simple;
	bh=qxIDhbUK1BRaJ1EqIj0BzWW6s04xnx8jiwXN3ovCM5o=;
	h=To:Subject:From:Message-Id:Date; b=qgP2i7k/qctHYy1gNwyTIucvVpM7ibKRV++CcT0XcYEq7cfTnMTEz2V5b4MSPTibYnVP+/MNfab0dBWDssbQC8fPEBOOdmbZJIBZkcOuNGvAPvH40ZAdAM6uamLHLssDR4PRc1RlM7oJ4ibdu9Ncds1MRoTID9bdwz7SW0PaiAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpCm47sF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpCm47sF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F2DC116D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763985113;
	bh=qxIDhbUK1BRaJ1EqIj0BzWW6s04xnx8jiwXN3ovCM5o=;
	h=To:Subject:From:Date:From;
	b=IpCm47sFTyWR18GcyV5xwsLftjCsFiRti2zcSG0bK0qDGu8z+kXCgsM+3jagpKuH3
	 6mGmOizCsrCanDhlQN8+nPhipPJe2ugtfHTdgfRutkG7/lGXIpPtlvHJuN9HDKGc50
	 wH7q08yAt4gpnm966W9Rzj4+q3vpvFjh8Tq2yL0EIU3c8VKjCnZyTe5+n7cTD+zzqd
	 hgnSjJd6MSPr6PP1yfCjyLLfMyDXAZq6zKCzOR74r8M6/US51tny6AZcQUApQmtg7p
	 ifLUaKFpDUZpGvg8Qodkj5OANj8oV7BEqi+C4ykPu+rlm9XEskh8hCupARKqWiSpKy
	 giB6AzcLM16qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98548CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176398511361.7888.9942037196406634062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76df4187db5a57ed97e331176af433021ab800d832d78736e18e5470fc96471f
Date: Mon, 24 Nov 2025 11:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763985113
