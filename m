Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B48C926299
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769456033; cv=none; b=XkKTwc2QZAb6k2DtkRrIjOwNCcM93IdXgyQ2c3z3FEBnJkOXDBwJ35oV5TY5tnLV7QuCdm1PUYwpB/LpouAoVfeK+lCncV8nGHEA6RRKYcw18GDCplrtJCdaFP5o4R6JR54AoR/V4Ig/1rE2GrbCAber35rD0tVZpr6szNyJs0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769456033; c=relaxed/simple;
	bh=Wp9RRjbvDnZQFx00afQDaWgLiVBp32VBcJSOcfBTNEI=;
	h=To:Subject:From:Message-Id:Date; b=oLEb/6z0Hnf22rtbphIuH5ToWi5n/a3C1M8kAJ7v4SM22tpHG+VxoJXwennCvwhgBMDgvKUXQ5SFnw0Ubqnwp2NpIRrf4hAp5kewbSCZv5THtuU0+EOBVssGyv7udngeE9ZJRo5ZjRQs1xNCsTSBoXefSsbBq/QPwflom9crUVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYlbCgcm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYlbCgcm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99563C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769456033;
	bh=Wp9RRjbvDnZQFx00afQDaWgLiVBp32VBcJSOcfBTNEI=;
	h=To:Subject:From:Date:From;
	b=oYlbCgcmtMqU8rJqlHOf9Cw1u5CjnFuc+WTg5+A70Aj1zl78fA7JJRD4EPmNhgEx6
	 Fq9+4InrT/vkavoAWpGK0GA2J+BZNJCXtYiBNRmzQ7CrUeymSjgkj7ug12ZfH6/eUw
	 zs8c87vSpPBN+YTxRCrsrOV7w1YvB5yZS6RApAERkZcu5bTks3Ap0MwL/eLTM4Oh7r
	 N7HTH8sE4U6GU8iiQwg5X1aMhlZIPeOlIrdFTi6mGP7fyr4/ewGrIdpabt0zFRTQT4
	 ejIy/fu1yobS0iUHiZf90ykoGkuE9aURzXkOzqQPg5lMJ20zscC9HtvMFB9quORvUs
	 2a3X5+vB7tR1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D26D19517
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176945603358.9569.2662199231672628054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c503049ea978985429d0085b06b21d47b5be3ce9b306bbbe7c98bb7f50e40f
Date: Mon, 26 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769456033
