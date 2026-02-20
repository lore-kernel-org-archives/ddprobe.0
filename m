Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36892189B84
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771629294; cv=none; b=AEhM9V9ocxPuiMjV7croylrXsePwTdmMpD0OQO3kp0OELaZq9QbkkwLxbhuwzGj31PapvvUhxB7HvcqA+EPiS+C1/gP3meCEAnNPinljCtI8LVxvtUPNGUOWMyoySwNO04//aMkJpJq9cgxXSfiS49IeUnpHt3QBKKPQtjeqgh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771629294; c=relaxed/simple;
	bh=0NnoqAld+MO3Z5kktW3N1F5MpoXlfGoNUkCvyd8slqA=;
	h=To:Subject:From:Message-Id:Date; b=YCw8x8Z5zt6JuTRcLubRhfzHt7uuBN4ysosO4nh6IjXQQQtbcM3/uRz/c0kEdcy9qWCLUUL/5KSKHj/m9nBFXw8EQrFebuZMQeWJuCDfKULnvErbmJmraas0I5l7suYAiwdCMSpSgPY6DGT1CmnIifN30c8cmTSuUvCT8AMCWPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAWmhUJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAWmhUJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1058C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771629293;
	bh=0NnoqAld+MO3Z5kktW3N1F5MpoXlfGoNUkCvyd8slqA=;
	h=To:Subject:From:Date:From;
	b=GAWmhUJGkm4D0eLcw3yc0q5uEMzTBhdb6z+u2NXufPsQ0ik8yoIqUoefBZDjVD5yC
	 03jCwevKbYc5va+BxE/jtTfu61XxudqIDuYpt1ZUNBOA7rZItaG2afjS3etJkyFKXa
	 FqffzY1+kSRYmkntbKzsBVr55F0q6m24p3YaNxDXiSrJO5aa+5C3Ummp01VUAIHC97
	 /Zfy7ZaSmq0Ox7lIG24iA2tEu8AQHlt28cLL6eKDM9P56eyqHMYps5FcJEZWif/Wic
	 VZL0WN+bcv109Xgy5aI7u6aQYkFhfJgsnTrnP+2qb8F4nCxDf/bCVJSrrufzkGGqoM
	 bT1vIsj0uKEsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3646C5CFEB
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177162929364.8519.5597480866833198612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fba59be0ce69571acc8ed51a1ad011f413b6549164e4cf395d2dec8085b59fe
Date: Fri, 20 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771629293
