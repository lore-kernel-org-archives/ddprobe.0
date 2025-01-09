Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F26214A7C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736408754; cv=none; b=R7IUtUyVy+3cZa17OB1bPuDjFnHCfF6pFSaBDbL+nChz6GDhJrpPTPRzrXPfEf7Wn9yhE4/OO8fv6GpJGlUJEGZdiJHFIUZUNuoleEJULl9oSeKQntzFNVVIz3pVKKMQrnHF/fV7Fsxo4b+NkDDevb237k/owSvlDw5++I3fi1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736408754; c=relaxed/simple;
	bh=bvw5VgT7RBtgwCt3NmmlcI1twF15cGD2I/nSWt61XR8=;
	h=To:Subject:From:Message-Id:Date; b=mziuY+i5Xp27SBRmsy4xwV9RIpP9eapu7X0hTFzR9CGlfXw5uaplrt7HXkxKWLTRi2whCMdN3BT1zRmoEQvfrqb9fA008BERdfJMhrvRgRIcVmtKf2vYjokJfmLIYq9M85PHEDMmjZqvl+CQCs40rzTUaWMyzDO1rEQO9G9gLeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnUNrWxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnUNrWxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27E1C4CEE1
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736408753;
	bh=bvw5VgT7RBtgwCt3NmmlcI1twF15cGD2I/nSWt61XR8=;
	h=To:Subject:From:Date:From;
	b=gnUNrWxNuqO23l7ZU21pAuB9SsF0dmxMM94HJDfBB6RqZkaYgxxUU5IH0MbmdOa+f
	 IL8fX1mxyYP9qFlspDPDefJUsM34HkO9GUzJi6ZeNugQXIxDDecUyw9eTuur84MVZj
	 XOn+5GBmFUYF+K74UXQhOHmDNTGU+G2i5VxumhVnRpdR9Wp8ma8nG+6PAb0/nhtqlB
	 YkdsBjwBchT4wapRpYaf6xigRPbas9+PGjEeH5m5KXypNCSGFWt5jMHE1DPGUJ3in1
	 nWz5Upee3LjBKHgpiMsFx4WsuzADE+FQuXfE+wPIhHe8BGCoVltkr07bYH+7r3vTwt
	 ypXbQML8amF/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB49E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173640875363.20156.6610577723817064826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37f9b5d0d0e44d7870e57c402eb0486c13d35d45cc494f9eaf00356c0552d440
Date: Thu, 09 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736408753
