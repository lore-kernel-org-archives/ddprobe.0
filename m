Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BE631AA9B
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769069633; cv=none; b=pqX5iNOqM0xBhkw6HKPjtRBOOUJ3SHyPb4oTQs/13evfNOcj+xXjvxtSjL9iGbA7jRpbxYLlV1kzjHmw9N3DEXanMo3NgTm19qGjzfF9N2yLus1F/JdhJL9Y+bdwZQGegEhWL6ow4TTD1IBcoXun6YMDaFiJPscjqt2bH2Hl0XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769069633; c=relaxed/simple;
	bh=mRtO/umZ/A+5pH7eNhfNSRESK2untpassakb5cifZ3c=;
	h=To:Subject:From:Message-Id:Date; b=Yj9QOSuJ9uYvc0XzKKHx0nnaF0YJ5BzC5iBJHmsoWF2Ybz2VW+vUSt2Xufmr+slf/3b3NayJeiVvyWZhiuOwuex+vLTFpPgNjO77STX1qLoZTFu2M4v0zuZfYlpVNL5bl2M6P+tuNTsUVwhmPRP3M3/aYHQosYn7mdDe42OwJd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDO/kw+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDO/kw+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FA4C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769069633;
	bh=mRtO/umZ/A+5pH7eNhfNSRESK2untpassakb5cifZ3c=;
	h=To:Subject:From:Date:From;
	b=lDO/kw+iiVTm9OgTONF7LJISt0VEpBJCwV2azvkySnS/G95XdUcnadXCSHhypNld9
	 7vM1h1PnJDJmpFJFIr5DYJzSMzxZE4IS5WCFrm+RVUWxe47kf1NFf6BVRr3zhnTTvN
	 jJsKJR9YCX6shYwXTcgsYKpTojjJASxzzUjCix0pYS4ErYwbV1/G1wKonkzQDHXMry
	 rLzH3yFZ9H7mmuHu6cFxHsYV4Jys+dr23S+UeByZ4tcD8ntUwsqefvdfB1su0gBYGb
	 s+E/gwD1MHfreeXqlEgQBdBlnkId6K1CYcH+/4d+Tm0fmCzTaIrCFH2G35EiMPlQuy
	 eUJTK0WQBjRIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D42C44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176906963359.31984.13677187294153435109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9382b5902c60a634526700982dc4dd3083cc01a96f0fb94b2be7e04ac7d780ca
Date: Thu, 22 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769069633
