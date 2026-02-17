Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23EA1E7C38
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771334093; cv=none; b=etR9K+apofflENvctNNxrPmkCq+E+1OrLeIemMROpihjrZr9wzdLrF+22274mDqNKsDNhboh+WjW9Z5GstY4BGAXPIypQMZegJFrtgtghGYocHM070rXoFhQPhNxIxFN9jzzO71y9NCZkzlFo+b+FzSvdAVvhKdPu91Dg8+IhFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771334093; c=relaxed/simple;
	bh=JHfUnBMJke8SGH0YDnG0KZTCPogXNdUyGCALXo0ctnE=;
	h=To:Subject:From:Message-Id:Date; b=dK8hAMzWx/cPI7CVToitJYlleng8AGUEAP4khetJ/Ra7wUivfJ7DQMqVbs9IOzeEklNsaYNJOpbeQG/zl9u0aJ15sR2nofrOLC/jI9lgaNILehz27KYOETfzILAe2r82UjYdprC3l4bpnuhWIXMcWa+soXIz9xJeW3JFF/Ma608=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceQHd5dB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceQHd5dB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC157C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771334093;
	bh=JHfUnBMJke8SGH0YDnG0KZTCPogXNdUyGCALXo0ctnE=;
	h=To:Subject:From:Date:From;
	b=ceQHd5dB0FIFR0komBrKOCmUi0W7BFNc9M8J05ImH+dSlCISihRKUOqcfPqKYDOHw
	 44EduOpXJ4T6xdv/AuPKmzo/lwbA4FnWyObHz+eLdju6uxE4HhOJX/38y560MWgc+F
	 RvIeW1VtF3ZsEQ9ZbUYW6q8/nMosl/D3zfTBsOv8fGGEfouLP09oWDuMoDCuLu3fs7
	 MZbMCLL3SXU++KCR/SxirkURGZ5ukXyWLSpoA+/qKyk3E6Vwj8mDjRjp4LsecSyD9a
	 eI7evQV8lcm+OJVBU1N1F3AvobvqbhZmexQUW6wion/j2wpLUGb6pjKAht8M2wvGgd
	 t2EJCsewxRRog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94474E83844
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177133409359.27138.9145108651938056095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 960ad24645ef9f8da2784a3c9d397efc3c2592b1c5c63102a979b4a4930ad2f2
Date: Tue, 17 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771334093
