Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADFD33F7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719195143; cv=none; b=BiI20oaxlC3QgFmu5W5hWxEQLvz0hKT6HSSHzDIoh6K5ZI4E5fj/u/yfSb7hYTi+BlN7c4cfEwEJBPtVd2LrHIwRRAGk3lreeMJqBXrY583hnXvhovg1YuM0t+twO1mzwMoIHVZWnR2ZIU6D4Hq7ttdcNJ+5fc0B2R3z5R8urJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719195143; c=relaxed/simple;
	bh=hWOkjyqwZszJFYF3w+UGVZHE1GbaPYAyT+SD2EC7EWM=;
	h=To:Subject:From:Message-Id:Date; b=Xec66r3GGktTyCi2yOheBGxY6X8y8ztK8ajpi205SwO3SwIhmMdHBU6Hh+nfFCC37gK+17ZRyMntzofOVS2UPwj7+92k69UQvOZbpZ1wdTHD/KO5u/r0apTBBorCv4Y8oz6fDNu/9G2qXoD/d1Fyhy+qdInbetaFd8fmOFDYvUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4sz6jVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4sz6jVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D16C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719195142;
	bh=hWOkjyqwZszJFYF3w+UGVZHE1GbaPYAyT+SD2EC7EWM=;
	h=To:Subject:From:Date:From;
	b=L4sz6jVtnyEM9HeZKPHtBHVRw/8+5/RWQJU5X5C7Q5j/Ih3zYCd7FEBAjZo3Ph7f9
	 hBP0TVKwsrDGyvw+Tf7B0gy3mdd9bJR2+Smi6SvU89LYtLxthBRyPLfVg4M3/GWJP3
	 jgf17ei8y08YsgRf5taqFS4UthCBKGnBnjeQOlys2Q4Y6+8o9UQozDnvE6sO2qNDag
	 F/dDbOlEncFrQMM0Hswn1aE/eGUMX67xOLcGpNLb5Nq3JKMu1lwn3eGObDD9UN7kCL
	 fc9AIdVjdRgpD6AZp3hm6+M1yOjsrbQAvVglxgPibcxcGOvL8FS4qmw6Qbt8y8nQMb
	 tdb5TKMxA2NTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C30F6C27C4F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171919514276.19743.17841744639455890969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1daf3e83e372988441c47fb14ab3f9b8ad90dd42d59d8b58c42c2ede1c52d44a
Date: Mon, 24 Jun 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719195142
