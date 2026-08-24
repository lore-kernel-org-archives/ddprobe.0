Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D51B1AAE17
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787604634; cv=none; b=EHykMjojNwXz9DIWfsQB2yaivqz4xWiVzaMzKFsRwm10Si8Mc88EISkbQRJIb96sSRYMPxnxIYrIDDbRkO89Ti/aDZgpOL5IfPG2c07XwjbdUevCozS7/0cawv4bDTdWL/Zv08w+J5c2Om/ZKkOv67GsfF3BPnGX0UnMAuf4yuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787604634; c=relaxed/simple;
	bh=j5mfvhpze5I3ekzsZG0SV4vglEyYKY/Eb7Ax4/9Q62M=;
	h=To:Subject:From:Message-Id:Date; b=qx8kdzttYEQbMioDSsssweXluM8HLhh2xZHq4XbLw8fPt4hd09sgJW+kkqc8ErZF68lW5WXrL/Oo+3IFQpSdK4Gd7/Yj0i/YwmL7Bty9vw9VVqqW1nXRugMYFwYecRETmWVVWmFV2SNKQmv/TsnpqjfF2C5wtHu6HPQF514LSao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfIyFmMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfIyFmMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0F7C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787604633;
	bh=j5mfvhpze5I3ekzsZG0SV4vglEyYKY/Eb7Ax4/9Q62M=;
	h=To:Subject:From:Date:From;
	b=tfIyFmMZS0j7GzpeyzxG6lBFoXVeqPiHU80FW+72kdBaeWEfkhZem+QEiWiOCAbY9
	 DBhtNFdVeaQg4igxhIUibR4BXEwL1V/bGdZJyY72xdc/SfYUkSp18Gling3mN6v8d2
	 5YBtY7mVrsSlDzLrHm71aj/PYAQe7iyQ5DSaQjPUC2uMcojCnDNUTG8b+cGwrcGLO8
	 LwCDLF6GduAf6JstRYdNMKvEm+uC6Cd6NJjYJCR7t+hXH94s6QnViX0MeeKLdzGKlz
	 Zt2pmJPCrQrkYAfZM7E8APg3B8KGI7Avc7onoHBRpw+xX1yFR8oBD97X07jS/YmSFp
	 BeIAnSfq3QU7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF1BC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178760463368.16214.14108701341562534277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bad5b814bddf462223d394c41d8303e159a415b2cbb3dd946536096004beca4
Date: Mon, 24 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787604633
