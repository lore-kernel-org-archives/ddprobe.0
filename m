Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C23A2F7AD6
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761566395; cv=none; b=pU3fASZCYR38LL5dNHs5y/L7itCg2/KZ97bCmbTzMuUZZBDX31xzpfZcr6EfW4wb6woY8PGVc9dFl9Y19vCxA+WtkpcNQTX9mFSNNbnjZFEAM6ZfFT2PCzxtIwC0bYgGBCYT3r7F7IWiuUjPfz8a9h+C3pMGFhRIykxYVYEm/Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761566395; c=relaxed/simple;
	bh=Uhi8c8o48NQQNA/8expriNUHmppyf2NukhVbACIH40A=;
	h=To:Subject:From:Message-Id:Date; b=MkO9WLfULS4E4f6GdDic77besDLDE9/vA9MIE5sdfdZmUyi4xiq3ZwYIK16ikCEGrO6/NsjfoCU84XzIozCtpSJEoNWzlop0NnHbubdw7V95mcGWOfztUzjC9GDW9D3yPfk1PPtejEKoCXRTdeFyvdRUlOzYsU9s3tYYazBnYg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0onGEKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0onGEKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC294C4CEFF
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761566393;
	bh=Uhi8c8o48NQQNA/8expriNUHmppyf2NukhVbACIH40A=;
	h=To:Subject:From:Date:From;
	b=i0onGEKSl+wmLFFQwJ4O/VGW+blYKkR0e8gJFH0m005Lg7/SyECS6xPMWQhk2AChR
	 qOCNUurNWz7ZyCX4j2b2ORaTg3fJINqF7v2vvoWdVZkO08b27aAjm+qCEzbcaF+grv
	 TOUrjSq05wopRbO2on7cqfAPAlti6s+uQSVBsOuyCHDR8i+qsQLPE6UTcgEVADO/+1
	 PU+J6s+ev9+ecKkCzwBz0aEt94wKnqVRqa8TTnml3IrSh6+zLoMkr8UKtSm5E5lgAj
	 6EIgob6e1T1Q78sCfSkIt/C8uOGE6T6tFVu+d8WJuGnYNxQeU8FLuZDLT3P5I1w5az
	 RxQ4K1uvrERdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE22CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176156639363.11398.16967793174983213146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ef0f242efb3b69f46da17d68ac7459b4cae832cef3c5fa15654d6653ef3ea9
Date: Mon, 27 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761566393
