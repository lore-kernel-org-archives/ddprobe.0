Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DBE10E9
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750583994; cv=none; b=b4ARXdNJd3vUBbTX8mVrVt9vPJ35fcQpzJ1N+2jbq5cVPxLKiirbaSRb0+JDBAVgZqb1CgWZ+06C0FeEITwdmzLkMgRTLsIRpdvA0G1b7T37068IJx2klHk8RqMOWx2r0PWWk0jPaK3dnxSLML3YHZ1HB9HnXngzeffAxqOlbkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750583994; c=relaxed/simple;
	bh=0H7QTQqIRZhykwhYiELMAlrhpk7jRlr4oRcV53ImMk8=;
	h=To:Subject:From:Message-Id:Date; b=RAGS+FF0SnDjrgIaeaEQT7Ywy9z4JEHc4hpd/226oEz3oiTCvuT6rfNKjrw7H/kzoIWLufAmzWDzID6C4a1B1CDNbUzLiTggQMghwkmwr7Esml4V+DX3omIkm6ABcAVkt+sP3MEcQqvskWGn2gRocA6dWfJxdJgVLdaXIl/wAzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIVZ98TY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIVZ98TY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05AEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750583993;
	bh=0H7QTQqIRZhykwhYiELMAlrhpk7jRlr4oRcV53ImMk8=;
	h=To:Subject:From:Date:From;
	b=cIVZ98TYd46jK1auMJdBD/rc4uqvokZJIvCbXQNZBFfZc46D1Xe6k35U9PBGIspnb
	 s5CcUCw0JZpXNk39Um4SSx26J9HkqZzFR3PBIYqCJ+4r2Pno5LL6VqwYaA1WMZrfN9
	 kD1r48eDjDo4nB9HtETVmztagvPJSVsc6rWrF4YdKitUadv2Q+wgTU8J6pkXZxe24S
	 HXk4R1ckgKz+88wWTXebutsTWKKFfxQ3T58aAmpLSoaWZxlKfdXoYO6MpuAf3yyxJ7
	 /mQP0wbSNb0rJ5Jz3kYGFjt05lKLk9zo8fD/M1mp/oWo2pyVFAoRuZ0n+FzpPO5Vqm
	 E5gxl2MwwY6Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9081BC7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175058399358.10186.8099859860915430646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 732a338026e93b51363d7b777cff9b8c18b1b6bf197e051533f5740ec9b58d1f
Date: Sun, 22 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750583993
