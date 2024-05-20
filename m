Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82473647
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 00:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716163343; cv=none; b=R9G5dDWbYdetc+ioFLU38wTEzzOcg1QL5kKxZBHTLnSzWslBVOFpk2y/+ogn4/DHxOkK+bB0CwhRIzEZl4b5KqSPshIRW8Xi48Da77RvONpatKdUhDiZozlobVbq62Pu/pIOmExkq+FHuSCEGrQE5WtjNb3iHEq6Qm/ZjmdPLww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716163343; c=relaxed/simple;
	bh=chNVFOOjYldxDSvYBYYvEgfU68LbEUIVrbKwy01m9QM=;
	h=To:Subject:From:Message-Id:Date; b=q+XIj0fa02RImDR1AZT1G5dWLtlikS0ct/V3JNrLnahjPlLQ/fYoetFZfNt5B9ScMi2GWQUn0+2mcrBIYma7GodQWjy//KJ9XX3kHDYCQL78kideeVQDjdTli0ZWmqNDFhxqZWmAEblttR4kW5jSe0A3NAXKOofNgA+o5A+8pwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CK9xH8Vd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CK9xH8Vd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 122B9C32781
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 00:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716163343;
	bh=chNVFOOjYldxDSvYBYYvEgfU68LbEUIVrbKwy01m9QM=;
	h=To:Subject:From:Date:From;
	b=CK9xH8VdkmL/mCgDNHiLj5xu63s7AikJeF7bCXgA0glIsYfAHeIvBerFfisoNWqpl
	 Qq/9tyFxh0r6hh5F+5aVQ7BsV5M275jbh2ar71MgobfNVXhyjI3R/g5YqgdloIDaix
	 5G49tOwyhv+LbIjjGyFIh2lP0V5AdL/0siOzRN4XPlo/bfm6pevIhMj3kxDoaPxZVs
	 x7g//xPD23JJvfsSilQJx7agXS+yKsgyco2MuaqtGrstMsAGjuJGTV68aht3QdVKf1
	 H+L7ZcWc1tkA7dwd+FK7+r9VVWn8LXZT/WC9/NnYZ5u+5+qqiRAJGOe2zkeM8obmJc
	 w8oLFQ9H6Jdjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC063C25B77
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 00:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171616334288.16479.4981460494255742673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672b83fc1a364f5e46291db1f5cf237baa44d50ef8df117235ddd935d03e724a
Date: Mon, 20 May 2024 00:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716163342
