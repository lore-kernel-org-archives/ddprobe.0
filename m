Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1F3CA6B
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767068634; cv=none; b=eE4zRJ0NWDepLomd8bO1DqqmBJQNi81vRcCTRV04vWn9ZLopMf/+Y5/uVz5MxWXfuXTu2SXFmkBkCE5Dsh9Zapz7HMcr2oUMJOArlOZpJiS6lNOV9bKGtM9ZmE8yIc8I8dNBHyyQ5r2ZBY4DE7puFqXY9ZBKAvHZ49WaS8N/ZEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767068634; c=relaxed/simple;
	bh=/PuSrGwWGhPnrThTHaMcUuDs/TQVT/1ua80dFgorQF0=;
	h=To:Subject:From:Message-Id:Date; b=MRswCEM0hdSOuOeKR2eK9Y0So2Nk18sYEdPCHvfIJhr2n9+kN3t1AFej38zhqU9GaSoKFrEYJaE2UFzqid8tSaSyk4MIY0Vm/xLS8layqSOuwHVsHNti/Zrg36w03U//GgsuuDtsqGlgTXnInVO4Befgz8LeAKpCWCwVHpMRVbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcMTYKl8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcMTYKl8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3535C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767068633;
	bh=/PuSrGwWGhPnrThTHaMcUuDs/TQVT/1ua80dFgorQF0=;
	h=To:Subject:From:Date:From;
	b=XcMTYKl8pW/8gX1efXafpjaNpcRERkEELQ5j7M8IECV/EunWPxaG2qHmR5pKm2yYp
	 a0kqcwg64kKvNdj+MqA2d3uJgjzeHFghlxjIdPZNLAEbUlR0TH0+8npolNS/YAIAgS
	 y4wmNYpmotfOmteW8KcsGLZvD0+8Az5Rh4X6wIXQgb5ORbkQUpRISY4kjeggnYyq5c
	 jy88pOpxoXG9xzoX7rH+lkokF0GRjegHn/Z7fO/NHruhFJsqIcaF30Gt/jR7PKJcJ+
	 vmqcs14hIimiRfkx/WgP37xT8d1aJfF8tUMTUuqQroSQ7lyTKZi6TOceGZvFHA1IvW
	 j6Gnik+4nj5bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9045CE9410E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176706863358.31911.8100276523590362728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d730f121115cb83fae456155fd00086a7fd8740a93e234475ef998940433685
Date: Tue, 30 Dec 2025 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767068633
