Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E6C32470E
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764079974; cv=none; b=CQpkL7TAN8SsnKYDk4ktM2btxj9WJSHCEDXZlR8NNCSojSkYME9jMIw/Bz/114udT8pidrTHLiZrY/UNmbDftjhbSnQjwTCAVp1/EHQUvBwnCTiad6y62m/OYf45HE9ENi8NblNLYseCZVQPyCan1+RQhfpXSE67NDQZUmutWd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764079974; c=relaxed/simple;
	bh=G/2upadeJBUqpNoRfE9J4jqBKv87538WcrnBX7HVuoo=;
	h=To:Subject:From:Message-Id:Date; b=ZVbo+dUcJSQx4fzlNgfc0YZVL8fxe9Kpm4G7CN3hqNeViEmIPb1rK1a5KskYKpEoaKssRMnuPXHpG0ewsbrFTlppZ4oBeea966518fY0TtDPHqc0PJgYpbHznt/qtw+pxx0NydJuoRraacHBwOtFlq0Te3QZXgut2A6hqO5jm7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVLkauTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVLkauTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C07C116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764079973;
	bh=G/2upadeJBUqpNoRfE9J4jqBKv87538WcrnBX7HVuoo=;
	h=To:Subject:From:Date:From;
	b=HVLkauTYEPNNhEERl6Q3WihgBz90DahkiRHjuf+Egv0Is4fp0nfAUg15vvAcdLmzu
	 46OoKvJEjOT1f1ZeJXwOY6IPSGFtCBb3dm41dv8s2SSdcdNUMzQdjQ5hVhSeLO6S/s
	 ipIynkOtcTaC2YuiXc0DZ1fr2pvYqynQHa4dcCEZ78aJRvolgQZgw7Z5NxqLu6aWdj
	 cAa/nVw/jgHKJw1t+EiiUeLIzuqc6myQBZc6QlXpArrsIRs2vKu5PvccYc9g4cSl+w
	 9fM2fuArlx3R95eNM3+W4D41DPxVp6FxlPhdEot8oUXFyveOYs3C7Cbr4Dlyc9tWq5
	 F1y+b9Y/xzueA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93105D0E6E5
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176407997359.2574.7925561504319270583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5de8457d14020014ae0d905d0983489ff3de53c7045ad9f623ee9b27f5c1815d
Date: Tue, 25 Nov 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764079973
