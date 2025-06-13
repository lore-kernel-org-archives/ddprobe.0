Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA3F3BB48
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749831594; cv=none; b=blsLgwMvCpgC9/eD5JX0+l9LdrOuEm/TIPV80AM47E2Npt8vcAAbWJWvfaplOvzSRVOp4G+X7VsRxTo10GY5cgg5K38Qrb/CfHgraQU8r3tZ+RflbHroXZE/9zoUZjWgFVjNGLGQbZh1uq7aiEEsmN17jIBKkhw393EXocJycD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749831594; c=relaxed/simple;
	bh=BvHBFfDZbQXsgKeP5pxA8QOCF9KuSvGVkAucpfnvLME=;
	h=To:Subject:From:Message-Id:Date; b=Mk2FYeKGWSYEsJGX7SZec2ANqpmHibkERRyFPQPBz5hX3P8ks56shXHzqEXDh0lXSXMyrXJxcXhT5zFEEGsc1IpJs19M5EMJDVOm+W0mTOyJKe1pvhpGtYCa8kGqpB1fpCeIpbKaVxo7mQIUD1+UtQMZ6/+0bGrMnv3up61cNeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9QtyD6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9QtyD6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8441C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749831593;
	bh=BvHBFfDZbQXsgKeP5pxA8QOCF9KuSvGVkAucpfnvLME=;
	h=To:Subject:From:Date:From;
	b=A9QtyD6s+wSFG98XitNW3VX+xzJCTg8ImXegcaalpIze5RYIYFhbqA9+DlqJpxV33
	 YiHyEosz3t4kRkjM7yoBL5V4lwHmJUnG2PlQRSl/SpzT38mkee5BI6EBCkRQZ+x0Tu
	 FgOP61OX6RjWlUHs7BsQ05zg4BN6F7HmX+3xSb0PVmyTGvS80FVLaRon8wfEXW7V6y
	 2kF9DPxyrTMxYDGTtOs0NNtm5q4hUn4B7Xv0gBiOU8jwMGFauqS6OBwT/Lj/hmPIxI
	 sUhqLIfPV27rUE/9hDGq3dnoXmROREQt4UA2yEuTTimCHYeVdx5qPurQZf1ZIPSNgq
	 2o7tZpaJWu1UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92879C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174983159358.22409.2167448965407882820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5288d48ecc245abb0009ce2abdeffe767fe675dc651cfe2b5e3f78e7a888042b
Date: Fri, 13 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749831593
