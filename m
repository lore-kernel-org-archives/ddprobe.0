Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF33A224AF3
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762302593; cv=none; b=NpYdHGUpTfsI9bQc9A1cYbcwUdalocwbncgn+jHBrmgxXHtYj+X3uzsL8X34DhUyI/h+BaS07rC16N7KG6RW4fMpkGKYppDiCU719okDijNgVxCDaEt/uiMIzOVjQ3fJTwiomu6ojeeLNPSn9R7Y3mvStb0J8OiWmv6Z0MyoIG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762302593; c=relaxed/simple;
	bh=hHAcme3+EUzqoxH8z/EZpE18Nqxk0ScatqHCT7z7FjM=;
	h=To:Subject:From:Message-Id:Date; b=Fwo5GEg+oEo3LuKuS6fcwu/QNi2OT7kXEAaR66UzSFKK098XHjRs2G9hiVcykfevIi43naPDmpImZNoISTQIiwiidlMhO6ZHCYRpTawmVNTGhk5EUQZpj7aRgI5vlChCTHXyK04gmy5lgvzKlkbnlKbo9by1nYz6l5ni2pT6SA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEJ4RF8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEJ4RF8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC0AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762302593;
	bh=hHAcme3+EUzqoxH8z/EZpE18Nqxk0ScatqHCT7z7FjM=;
	h=To:Subject:From:Date:From;
	b=TEJ4RF8D/hlVpw4E4AjEGtiOXmrwYG1zBUfd3ZNgtoDV5ZsY/ce4wdsU5rzoK3Dgd
	 XRB0FuYpKNpxCwqf7TRSbgpq/gQRZB5TCytJd2ggc1ytnZKg5oWHiM7XfkrfxRUkVE
	 uVGQYaqhOwk1H/RjtF1uGetzkPzZEMBWgUzFfC8FexaT8LpBvLuH10pFGOdaQB1PI+
	 TvaXwB3RZ8yD83mnOaIVhBFfjpc8B8wkQvS8+Errg24M+aemqpNfnUhK7Nzl4pcYfu
	 0S6nSCScd7ftl9Qea0zXk3xze7S3IFXqbhu07tnDpA0BtYMKgL7RszPsAhBVIlQFEk
	 BgobNlUuLKS8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90022CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176230259358.25462.13968188756525039134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 435d9f51be4c706a73a9ebfa48e31b4c57349c2035286ea93e18f7a8de0ea68b
Date: Wed, 05 Nov 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762302593
