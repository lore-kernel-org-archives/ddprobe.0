Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570EC17BB02
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 12:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718108303; cv=none; b=DIWje/cc02VqPCRBKaIo+RkYyCxRIAwX3EhqQz60CTUcKQwjXjnpj6drzwQ0kIlf8ptyuOnj6uMD9gcFut9YgfArR9RckYQNDIZR8+Q8rvqb4RrLILBOvVclv5+hA0gGSaJZCTlUngQjHcknrAn4T9uVAszlkpNGnLTbai7PSzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718108303; c=relaxed/simple;
	bh=6sbhDB4SZeWRqHCJHkNPHDgqXbWvGq9vSFKzURk2lJQ=;
	h=To:Subject:From:Message-Id:Date; b=PLRNanWpKwze9wUAdaGP4zPkjdu59Nh7NV2yMcL619OMhe1sAcwnqAy6rHOwgUZgdJF2z/lhYvTciXZhhJ4fuCs9UozCDKH6QFTvfaLjCaq87A3PP9+YW/HdK7D458bvzltjDguiFenDyNmpJh4dxgY65jiQ3nsHkaAPfMETJ7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPEZyGoi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPEZyGoi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D594FC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 12:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718108302;
	bh=6sbhDB4SZeWRqHCJHkNPHDgqXbWvGq9vSFKzURk2lJQ=;
	h=To:Subject:From:Date:From;
	b=EPEZyGoiVs3opue8JUEtVNJZfyKeRzCzJQsY4MN0dZlQdGR0FNNou8/mVUfokExVD
	 gfvAwjFt1mQmDEzjDDL8+YpleDzMpt/tZvmmFFXIISqTWMNRqkDSJYx1FLMlh+xte5
	 5+0xu8S31aGdAymkSWSNzueA9/1kP0tp+PqrIzwTfSn4PykKeIAGnfCIx8F8wA6vHn
	 pnpldhW1060y6boNfK9lWnI3ZW12EWsi2hkStiiJ3ojDptAd3WTzEG/jTi8cjtsR94
	 qiT4lnSI2YB5OIPQGTqz0VfdS32UkxGc7HUKvR2WeCNparcSif5kZYjF/v71JwKHLK
	 +oaZtFvlEwASA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C552CC27C5E
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 12:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171810830279.28842.17148961604756980104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9ea71ba1e1ef999a88404ff9e8b1d9deaff04d24d2cbc878b0f267337487f4
Date: Tue, 11 Jun 2024 12:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718108302
