Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACC4221FB6
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779555154; cv=none; b=Cy2FZtoouuCvku73a/vZfVHpy2u2SxMqnb7X9lWu4BpbVENXLEugTQM6SV4rNPewBouklOLnbzNMxxDicdgmOT0YMOBqTfrQV/M1mWBYfJ+Es82PvX6024MnGynfq4mi35lKwfjXVfvm1GV1Tcz9jXRQNZQy+ADJA3Wj9ck2yEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779555154; c=relaxed/simple;
	bh=U2y3NU5fwAuPNLqYQTsHjPTDfM3/uWgKv6/mVsIshu4=;
	h=To:Subject:From:Message-Id:Date; b=Z1XZaZeIlXvTwNyiga8gKh5hEDzQkUccZNwpA4LIDEHlxLiyv/xJU4+4y9ovbZWtGK12xTV8k2oyn9sGHBDb5qPB8pPc78VgkvWaBk8ntzin1PESogveLM5FgxMLjcD297PJ486O7+8UzsaPBtSpC4qN1cIlvioqyvHVKGItfPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLUC9akX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLUC9akX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C799FC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779555153;
	bh=U2y3NU5fwAuPNLqYQTsHjPTDfM3/uWgKv6/mVsIshu4=;
	h=To:Subject:From:Date:From;
	b=PLUC9akXmJxH4TnJfFit787hljyL6h4LNQw/W01cw9WPruHMJ4lafRYoVVqxovNSp
	 ujFK1N6y4+4NOZ3yHQ+uDBVBRm7k/L//KEGXsVffGaC2a6k1cpFi8r/Gi4TBTrEhrH
	 8PSVl6m9hQ9cpOYIP1UZO+HYaC1j6HXfTAlcZ6+AJ3duCvjfeLgorpL84uIVdMGH64
	 8AZO6dMDWGpABZDooJN3TJKKPsFV/pB4GjOYj9jY0QWQbQt/aCze3E2IhVutd+1Rmy
	 ildTfR3u7wHX3zPlRC7t+zBHiQaWMWFI6Hw2uQT40RGpqMSs7aVMFd+Zox0/OahoSD
	 HW11PzgYizlzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2C6CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177955515368.3394.17544037280185247676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8442becfb1c4bcf3ae95969e4deb5c9d68185cb9d57d9a364f190bfd205cc7f8
Date: Sat, 23 May 2026 16:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779555153
