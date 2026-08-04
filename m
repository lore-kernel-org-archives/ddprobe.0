Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4435E495510
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785873034; cv=none; b=s6QD3kSITZQgfhSEjDQJNfnUsm5BzOixPqEyGh856HJOPUJpHoNeb6Je0I/kdvidEDV65T05tIfap/zJzyZiRC7+c8vuz47QoGynIfMrNkKYmsoO4vcBI8of1zl086vh9raM4nr/Pd9cGQgpy3MaCEViEqiqmUcl0S97du4QpOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785873034; c=relaxed/simple;
	bh=wIphOuAYaboD+cBxU+mSPB9qrX/FCXLXqXXUfw/dJjY=;
	h=To:Subject:From:Message-Id:Date; b=pcVhTeGGsRLiJn55KRS6/Z6ysOkjjTKxbAY1YPqjL0QPuKmOC1z+UL7YvBgC9Azpfdncw743Njx4Nyd0/IIcaJ6wjTGSC8sYSbEZzzjXRza1ZPef4rvs0C6rxQoIglPe47/4YbPdKImG5zRPIoxEEUabnIIXWzJwPolOrkm84Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRa9rmOz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRa9rmOz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D079DC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785873033;
	bh=wIphOuAYaboD+cBxU+mSPB9qrX/FCXLXqXXUfw/dJjY=;
	h=To:Subject:From:Date:From;
	b=JRa9rmOzZ9MTqUdHZFsPledaRLAitHzxeFOCaDKH2yo7XuxucQnEkRQORyoYd6lnV
	 gCvYIsIG308BtP8M0mho8XzBsw9zTc/tcrDoh9XiOto2VHna7BVDeqGoK231dcSpNQ
	 IjLgSjVDeJ0A62qh9rCOP72zSfyesZglXYVQSMy6Wuaogl1ToKOSzZyNpQq8kbHTcl
	 7rTp1kIGaz8N7EBJn3JBCk1+6yJVjwPZ7jL3g4gL1PY9jnyr1ai7kY1Cj+wROZX5iu
	 SGjdB/H0lNCl3UTa0GQ5zOdU89W5mfjBqfPo14GGaINV8t2gE5L4zlOFFY9R6xQtFy
	 SzYtIjVcFK/sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC81FC55ABA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178587303369.25094.4798445221649978514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feba02f61f280a3c2e29ac01e827d4a91c09e977429b2dae4bdd0437d0690dfa
Date: Tue, 04 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785873033
