Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32809153BED
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745758794; cv=none; b=l299vQ22R1sB5ro1e3mSHlhyOtanoHiC7GTFDjFYCApN4K6ssobjFqOXrGnLLKA6jB9ynP7Nj8zr3sCC4fMUwN6y3aseUAVk5E1nenoyTDMb0weo/REyxbsi27TsGrYcxU9f/7SfgQ3MsWVtKqgeEKWP3DDkJfZ9tCzRBzsCgHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745758794; c=relaxed/simple;
	bh=qjvFMI3n9vgXcqEaAWNTM2oLfNhLKpWgeMHKhH6NgOo=;
	h=To:Subject:From:Message-Id:Date; b=g4j27104LrJC8a4bKcU6yM/K5ZGyxBOgBulIAFmwZ0/qfvL9nDluxhvvrswYLPJ6G/o402F9UQJrovedBX562Mii1xOMH3OCYbWWtfv0BCAKQ2dMnm+nxM+l//9PIjdLh34IriBnBxB+7StL1GlZCh4yp7rLm5pFUiD0inDsjkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPDFWZgc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPDFWZgc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E4EC4CEEC
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745758793;
	bh=qjvFMI3n9vgXcqEaAWNTM2oLfNhLKpWgeMHKhH6NgOo=;
	h=To:Subject:From:Date:From;
	b=NPDFWZgcqp4Mm/OH02j/8GzKvjosm1NDeFescPcljCl8k0QZ92KiSAJX6NspjTx5G
	 jVqO7tBk7B6FP8LNfE5rvK5sgcmTDKS4cITghWZCmYd2AIzdnbQoQ/DwzakqL5mWq+
	 aiiAsWBch8KIKQF30B4V1kBSx0x9IetKxUdNLdG52nSil1DulVj2NdvCTad6tOdob7
	 3/edZkwJq1wtjVOHCXD8NvV9bg/LHF0oRXygvB+hWUaQQ4RdZjwSS4n0FRgusgG4JY
	 3APs85YJ1E0PIEbHQxE8DIcraxB3R4gA6tk/zQmLAqM/5N1SgVI37OPBaf6kfk0NPP
	 2jvPA48qxDfVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94042C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174575879357.27890.6239302695199796556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75838bf071b43f14700d27b010e30de49dd7cf9749f9a1ec06a74c0e59a3f57
Date: Sun, 27 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745758793
