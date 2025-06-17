Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A6F1F1315
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750194595; cv=none; b=YFF2S6RLP5fyq/uqvHgXozwG/CzSOZsr6rywjb5AoR3lRPhFlFMKIjjTQkYZrFb+u6cd3/tdu3z/MJdfN3tH186sE5tpL3T864ylAY2HWZpMlQbpf0zaf++02diSB2RDPOqhvxumpR73sWbRBjxvYpZyKYZPhPz36iY4EvPeyMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750194595; c=relaxed/simple;
	bh=ofoB9G/uP3KekfV1MI1uSBLbbH+DWLBCTlIhCzuZ8NI=;
	h=To:Subject:From:Message-Id:Date; b=K98EXcnkjWbPg4relwhHMiqlptPncP1k1TqpAY98dUv8nTnRCVnt02XA1szUk4HKomjXxslIbRho6sJ+MHBoTTsSXKkMzN7bYGHIV5/XDMSpnzHYKHGVl+UKYmwFequG9HCBvn5ZGUfrzq0CNPai5WOOgtvzLWnvofKwY2hT0tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxPc8bUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxPc8bUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8978C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750194593;
	bh=ofoB9G/uP3KekfV1MI1uSBLbbH+DWLBCTlIhCzuZ8NI=;
	h=To:Subject:From:Date:From;
	b=QxPc8bUbrO+9YlO2tCy3/2LXabP9HzCv+suDeNLO+gRcCPPyAz2eSGRJ7d345L2Tg
	 zpX6JB/Kt6c0H2QYMAY0m/hGDlHg7wUvfOM9rY1dLnXk+msyDC5dKBYZs1AVBJ5fet
	 5P5y25F2Y+r7lD4qvz3w/WZsKZfHC7ypRz8a9YKoHl9D0fiLb0/A+eMXZI93zFy+tU
	 GcbFwkUIauBIQ0U04SG5KLxSy1zxKaxEX+/v9kANRumC/J8qUp7q3AHArGx17F+6sh
	 1G22rt5KPqlmqxxaM60TmKGDuu1WgTXW/JZXbnZGLUvohaBwTOwyJliiKUc++g+ZTN
	 no9Ud8f1TzdEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB1C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175019459359.4518.16725122379569739194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da7b6de0cc8031d31155a342aef0e3a3c2e6f9d0fc0721157a23eff82f5152c
Date: Tue, 17 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750194593
