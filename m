Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4728B198A08
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738958754; cv=none; b=o+yUoUuoqKNI47v8I14DnSVLvWOEnryg+NRLUhjgQlXzQR2TLjv+4sj2m/1YiVuhJkw1UPnalnH1yJ/Xo2QVnRk/YXpizsF+FgaaiQsiqxcAPRweW1zXayTnHLpz/dS26+8h83wDWdbYSpRW1TtYBpYjZXG9gMtyrj7Kr3soWMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738958754; c=relaxed/simple;
	bh=LXzvwNwJvTSkBloRZbfOoRNprxn00N2pupcYmrSBFGc=;
	h=To:Subject:From:Message-Id:Date; b=K/3gNC4CvLovbV281eZyATk2jmGzWQ0pShnNY239ASAKxzuytA1Vby7iGW/CF84QNRUnVXatEQYmPHIOuQrt6nurkyMt6RsXvghmU9bI3L+Rp9Rh/XEwCPrPXRN0wyXJ0aahx4/u2hF9Ul3B9mYzw+whpc9D6M3GWXp6GpqDDRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYZObRpf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYZObRpf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B875DC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738958753;
	bh=LXzvwNwJvTSkBloRZbfOoRNprxn00N2pupcYmrSBFGc=;
	h=To:Subject:From:Date:From;
	b=WYZObRpfSwhPU+KytF+WbY0+AnOyHkCfPtYsOl16SG86AhWALfzEOx4Jpbsh/Sfjq
	 B9vgcBLYwL0A5qInWIu2HJJulYfpR91BR7SEkOLI2Zonru49ECLvuwcnvhBAkBHCsi
	 ZO4Zej/29WMzLxZ4vLbzsCgnuvEHbAs+eDGSDnJDQJtBDrISWzxrux3UOLAZJcAiqg
	 CF8yX6qTcrmfTjunvcJiQHQ1xfsEtAyBQ+QyI+Fy7aEAqcuGcNMGtCTw5tDaC6y2TP
	 Fm14QRE6Ms+RtFdfGgtTUeL6ng1bwfe+r92xYY14vIcDDtNmB6TtHBUvuAkXn21F9x
	 OgHgVYBxaKc9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A215FC02196
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173895875363.18531.11273198335532347198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee07c09004237087ca9947871dd90c158c813dd0be4017593cfcf6133f550981
Date: Fri, 07 Feb 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738958753
