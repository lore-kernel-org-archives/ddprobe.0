Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E6D4B5AE
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735146354; cv=none; b=qtQC94+JHA/KsMI4gOIeFppt51gRg9sUsbVuVSurLtpwrgqnQN//nj8uxSJfXqgMHOd1qxjCMwqeWPncwsKxftOA4mL/xwr8g9LFt23yrTLbjNikbpSl2baFLdmV/JgXe/crx0cEzH+xQOQB6evZ5/v/xrEbfRygIlaJOitXwxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735146354; c=relaxed/simple;
	bh=QFQByeY8hgWec8j3VEjXsO99huh5iF+vdZbnmjjnVh8=;
	h=To:Subject:From:Message-Id:Date; b=HPOautGrRekKHQfKszj8mpmN+8dUtvH8pnf5euWNSDASDFKUjbXmvvED1mRZCGnTO4NFuc6EB5TJq4JMJYcYjQwieKf7TIrlNcM1aBDGvduCrNfk/awwSR+yQZ6AmUY6J1XZdtUIYj6t0kJzbGfBuJdDDwrNhRAdMJXioG4h+XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ya+ijr0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ya+ijr0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF41C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735146353;
	bh=QFQByeY8hgWec8j3VEjXsO99huh5iF+vdZbnmjjnVh8=;
	h=To:Subject:From:Date:From;
	b=Ya+ijr0MeGoSUa1ljRCfCRLLNcH9gjYRlqe6HkcPBLK+K2ytbdVVQ4kVm0PSBWgFq
	 gg2ZnjX/hTcmVUYgpBEkgqWY4iXplQzlDV0d/eZKJO3H+XnQCvDVuqjvy7vA0Lz/Dr
	 snMZyFBwSLTlxYDSDfmx6XZNt2ka6J9G6facuCwgDwSGSyVDrUF4xdEhmVhxizD/jN
	 SobhXpKQ0oTYQ0KCUrN6JqJ7jxwUT+X6OQaweeEQvpRNBdI4bwtM/YC8ZOlhb7i7zj
	 oWUVgStEASNctiHAH349X6bB/lccCQCjrslrb5MRXFH52GWL/riDDE/gT1bZonVaQr
	 juLtGRqCBpEhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E71E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173514635358.30515.13092619269362489477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e318106c7ba33d85d5a1dfdff3015b64774dc1c77253c9c7b3353b327e6e1e0f
Date: Wed, 25 Dec 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735146353
