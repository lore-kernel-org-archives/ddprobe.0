Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC705660
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719686663; cv=none; b=rjYSRJ/2mhwIUJ1Ov8gOweapVEZwZsduiQIE98bqQhO6j5pfCqWfS3QeSCwCOBlAT6stZd/48KGyZld42RmG89ybyVnDnJ3l52Yr/4L3YttJcVMyAf98eE/DLFH4XT3PcnvJ6632CzUTuIRX11IBKtQUQNfaUDtMiHsgVeOedlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719686663; c=relaxed/simple;
	bh=eYDatyVi3ASlKzw/8CMtiKkjxH5PM6Bwb4vGv6s5xZ0=;
	h=To:Subject:From:Message-Id:Date; b=LrkC5LZhS1r4SBy7wWpyiDg51R3GUaii02qzANOZPnNAIZ4scuktU8prauRkzV00yzQMQxUVGrBe9o9VQ7g13Ahw/Xc/2I4mA9C/kX8yL49O7b6asMQlKJijNA4eR9tn7dPhRoUH/+V9K90EYzGp6XGXhs9ZPG9I4qkpPllvwNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jl7OSi/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jl7OSi/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6133C32786
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719686662;
	bh=eYDatyVi3ASlKzw/8CMtiKkjxH5PM6Bwb4vGv6s5xZ0=;
	h=To:Subject:From:Date:From;
	b=jl7OSi/bJmo26rWmlQfUdFZ/1ApTnO/KKoTH+LKQQ0uy1nhBUJ676GvW9r1hffRV4
	 hKC2IGV/HfF/fzGbJ9zJ6tFBDuVbxFvNJqLKdYJHwlfEnYbdhJ0dsven9XM/yED9g8
	 8xJJOhwAUTEXy/VsE8P/0jGpwD2Jmi17HfDca8RIAOYfBIngARa70q+PWMfv+H+BE1
	 27NdbD2fjVlvr7T9aUsZJV3SKwrDJZMCTmwcmHVmEAWIG8ZXA6oVksPMkM4Ar4DvsI
	 pj/mkEiW99vietFxs+teyhqxSomh5SMRigz4zqVSef0zkyrpJEzsJWhxKrJK+bOOSm
	 K4WqUbfxFxzfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C52C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171968666276.21100.13149787017757635169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd2d371bd4011f727da7557fcb25b96481714bbd9b651ff9613c1bfea7221f5
Date: Sat, 29 Jun 2024 18:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719686662
