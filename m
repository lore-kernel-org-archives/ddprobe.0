Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4982524F
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780633475; cv=none; b=jC7MeEB8gScCYLzp8ZPDotodJDzohgBP7am0O6wn1fABiDhXBFwkJnlbqys1U3/OOspaygC/MgBJTyV8EkaKLPVGKv98d4HpZ667q9YEtV98Zf8sXX9JNHKAgeflL2mPS/VAWNcZE3KiU9s/Vh+LOWRkdFobKIVTjpSzoeCBKUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780633475; c=relaxed/simple;
	bh=lPA3YVlfY58WU8R9/TOnbaI2qiDU14kGpYaDCq1e3Bk=;
	h=To:Subject:From:Message-Id:Date; b=qbWznDyveFUGL4BBAGUBmK1TkJdWAisEPLg/Y6LlgM58iPnPLc3K+hQlXpiRfqOHRsz1JaScZPDdVua6SwYCTliSdyG1g1EeHLJyp5nSb/+YOsQeuQfSgQ2LmxyTr0gMwldXqEG2UncGyYJU1ZhNvf0pq0HEPgsnZi7Pb8yOr0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtzu4CFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtzu4CFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E3CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780633474;
	bh=lPA3YVlfY58WU8R9/TOnbaI2qiDU14kGpYaDCq1e3Bk=;
	h=To:Subject:From:Date:From;
	b=dtzu4CFnPS+5jSvlBuyJfYu1YxR73oJ78MNJCB8he1KMqKcqdyIs/62YxTV2m3pSu
	 OQWEc9F8wnikS8VjXuQYWqVWNHoBnaaWh85mBZXBE2N+/5qA1ubEHdCSR6rY0LRSPt
	 KBxhPJ6hestBtp2YL9/Dubm4VOPpxrKvVAaUF8LY7VH/x83ebX7xuSu14RoUzuAtUi
	 C/rrsoGXbCFfW/5KFtxwJvNuK/Evh/7GGB4mSO2CXM4EB4JV80pStiSAYZhPebqIpL
	 Z1C0B7yYG8soE4dsrQDPThaEqD79bKW0gbb2JxoRLpe6B+X7Tj/6rrwoxl4ANzl/z0
	 1GF8+2gbQGPkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EE73CD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178063347392.10235.17953565352647243939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a091a623f4348e8e58df353e229924ed69057aca51df5afaf425a42275fa4272
Date: Fri, 05 Jun 2026 04:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780633473
