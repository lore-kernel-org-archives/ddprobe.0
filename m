Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0903D37F8A5
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773435294; cv=none; b=RckfSYGlT6Ctwxs/gc8W4ui1RNi1OCI1ABpdasWUrnCyiDg75iz4aK1O+ZTugJ7BW5Hpe4THEhMqhheI5Jg2H845eDMm/60cnbpMLGYGgzdyQE9ff6d5D9RtrRY+fLSzHOkE/8c7nvtvHu38JWztYzFvcaBljVNqsBB6y7ghDPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773435294; c=relaxed/simple;
	bh=/Gh2d+c6xPesS5dI1/86ATFAIDNaypyVsd84wqc65RM=;
	h=To:Subject:From:Message-Id:Date; b=K9fymRbiHS+r6cF2s441dsDVFbd8JGmbyfUXCdoRYFKhxS+uzjbb+QJnGpSLMJNffr+ZrqmRPgy5sM3kMt07zTCPJJXfEiKptWNoyCJcG3O+8VnqoxLGH9TbBkMLVE7cCeG5Kxk0kVgf/BaHtklUHAxTe3TVi/gryVwgmKoysjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uz45cgUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uz45cgUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FFEC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773435293;
	bh=/Gh2d+c6xPesS5dI1/86ATFAIDNaypyVsd84wqc65RM=;
	h=To:Subject:From:Date:From;
	b=Uz45cgUOW/SA5IpPV1eIWcr8wmIuVv71/RdX92sR9jjKwb0Ekm+JvqONafGWBfpon
	 4wmBNdOX12KtiyycIJbgtwvu+bdW+n5LXM4C0Ck4bAvWPjFN+hWmt/OjTCDKsPru0Z
	 VdestUuIFO3Oq2HMzbG80SO/Po8Orzj6Q0uedWdIC5zD5liNRdZi+NobnjNy1nPe7q
	 ndrcJRvgHry6zTzeh8OBAooCv2lesVMbDOD2TMeysmND3tr2VV4QdXUhfcPiaej7E5
	 qqsNhYeGPpWx8ezJ9Nuvcx96GkqM8w4xa2wClZX4pfpkEHSPOHSXyf1sJd3GHTRuGK
	 R9cO8cUvgaxtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F422107BCE2
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177343529357.2147.8965656230457246388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c353f55dbe7276acd0ff88b0eef85abf33e4f2ec339dfdf32fec5f3d96d6d348
Date: Fri, 13 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773435293
