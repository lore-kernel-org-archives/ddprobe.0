Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365332874FE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769577834; cv=none; b=OG6R6cIeZsJLO+wX2zarh093Q3/dumGFGrdX6W+T7QjMEjq5JCtyqkdyKjh4o+1VkJHy5pMhG/j94oodbFKHGcoRK3YrnhS/eaaymdandMNqUA6k5PzvipMDh2hbZpBb+ayioMtjZDvOOxddLAlEEByO3s6SH95oGIGPtlzDxcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769577834; c=relaxed/simple;
	bh=whTZ0rn3tOOLyV1LtKziTSUZ9QCpfoycbR5f1bLKEGg=;
	h=To:Subject:From:Message-Id:Date; b=XfCjTlDFZgGtl3lI6S53uCUSBZe/6AbQ0u8pbtGALL4HyfYT9guWv+Eoa0fuCb+dlHgIgxR3Z3USrBArGulx0LTE60qKNR1pD0rpNQxcjYL/hW3FIG3KNXS4pm3O0HlKWsbmhkZ34etNJB8sfUT16TtTwmZ2kuDI4mQtTkYGGl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cX0SeXrR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cX0SeXrR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE101C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769577833;
	bh=whTZ0rn3tOOLyV1LtKziTSUZ9QCpfoycbR5f1bLKEGg=;
	h=To:Subject:From:Date:From;
	b=cX0SeXrR0QOz8Sn76tnerIzxs2HgXC8Ya4TpM2C0+dXcgxVykBzD1SEjJGAJ6nfY9
	 j8N0lLJxSc/m3UAuTeZ+9Q3VNttnSEeyZT8uafhiu2lFJt1+Kdk3F/EiAlWbrB1Z5L
	 NQTAwLJp7srigASxHjxalfbc4mQTpjDfpnT2LOHg0hRsyz4PyG3wLMRVRys7SfqvTO
	 Di1qt8vUGOs8HMrn/q0u2xSZjK2w3J3USLpkJEoGz4X+7bm6pDj4mgI6LqoEyCKRu0
	 NU8zDT72bIJ7vpWxnkvdrOISAxgBzHJfelZjqK1+dFuX/+REspIracqKGoOXBdbLwL
	 sODb2CK2AUevQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD84D35673
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176957783359.30823.5538929028588342581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f08c95f6996cc535757fba48a88ea048ef17949e70adc4df747586befb18b5
Date: Wed, 28 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769577833
