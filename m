Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2436225783C
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762893594; cv=none; b=V9DqXKy2FybshgtVeyjQRxz51n1TU7pNOwQAVAxmtOsOGeiYVbpIx4xGC6TDK1XKxULROR77WRlpsgGBbwdXwttXJ1M6Hcy+kGUXOkFi7ledkQMEPchpxEUhSbYUYkuFWnB8EiGW4N1eDXdHH1rNu7AZ8eOzdWAYQrW2d0O7hKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762893594; c=relaxed/simple;
	bh=9l4zwbHV3tQ5gcCh8Z13G0dQzYzeH+E2zn27Txi4Iog=;
	h=To:Subject:From:Message-Id:Date; b=ITYCzB1O7HBS1acCSeDeHGvrsPrbfMRjm9elION0le4mHAfaulGd/WziGdrOTmS+bfPaPuxre22YoFOOK3AbZkVpC3MquxJHtM4tbSg+m0g0/3UeUU3M84aq0+0EPdEoZJxqO3EXSedB2sEPDmFxpOKlad1OsmZnYH++NlcBljY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5p5eAob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5p5eAob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBEEC116B1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762893593;
	bh=9l4zwbHV3tQ5gcCh8Z13G0dQzYzeH+E2zn27Txi4Iog=;
	h=To:Subject:From:Date:From;
	b=U5p5eAobK5QGwm1l3RShUWFa7gOceojNqlnqpNpebPv7MTxsINVNGX3dUJnSS1yW+
	 9yE6FArMcUjL2e5nzmjbC3Ar26IK43YknFsh7uFbWBSBqyTDNH15Ho44BFBgIy7Woh
	 HQZ5pTPn2S6K8vzV8uKGbmv4xLe73XENJ0urcD9rc+ZKRPhFx5/FpBsF3Mk4eHzvds
	 vJDfwms0nwqOsgrHtqYe0JFBrxcWl9nK5wdPjuu8koM9GqBERT3gmk5oaPvOkHAk2g
	 j/F6vsmYOxLZJf9EIumBPcbFuBNAAx1MdEo7/hviveCArXWw8j0LGntM1qba2kB4gt
	 9+AezyxoWbcPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A4CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176289359358.12721.16319285164758558925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cd88d729158e33204f9d4e7f2ba8350cebd79a1c1bd635743af96b7d4286852
Date: Tue, 11 Nov 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762893593
