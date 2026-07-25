Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431414908AF
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785018634; cv=none; b=o41zB95gsZZwdwh4sMjRg0krLjYtgKkQ7+Zb1+SinZ//n1oo2D3x0XpG0UQOzZSjoEwe7DE1zUoVndqMEkaNvjDcDi+XdWba16uTRALEjbxhrALjT/5tjom/bHy8JYe23zSPxIx9TXjFtSEAaQ1sXoPUvkLhZUkcbhMIMyX9J4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785018634; c=relaxed/simple;
	bh=mGZyYEIeN1s8IOEeweqePNo7HSg1F7NCnSCR1IntujU=;
	h=To:Subject:From:Message-Id:Date; b=jB5P4rjMqWszxuR0yfYV40jxYf8euAyxrkB/PgufcBB9jYiQ2/JJDyZsTaNhAPqBAa5pJg1/PA1F0zUo5md3ioQiXDByPHwbRP684VhWlZWHjNFCEXtyFMCU4T+AM+q269O6+YHr9sRPls1QiX4x08c/NdFwyGOxgB7gTJ4RWFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJLBYFNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJLBYFNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB78EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785018633;
	bh=mGZyYEIeN1s8IOEeweqePNo7HSg1F7NCnSCR1IntujU=;
	h=To:Subject:From:Date:From;
	b=ZJLBYFNuKedYEi2+fMvQn9ZgmyIqVZyBUlge3DmdgC9agzTfC6rt/E1LI1lnvQ4os
	 U88cG4HDzYzpzUnChhzd5i+zdQQL3rCD5BgFf8PEeGp2tCAaYRb6bG4FUUI+zSz1Od
	 CeGLfFAGnKzF/j2q/iLG55i1nGVfE0cRNJq2wuNFk1SSuNFZCetcJ+6T1wOB9SGuWY
	 Mh4M3wlDY8I5Z0yphI/tD/9u2gs/G1R+38tqHNqtsuEq6DV/m4KSXUKz4rcHm/QuXz
	 iQ+Wy6bMn1/SNbTVE+/AwKQNLGLslGNcQCzUpPQewjLGmY0KneXcZo6nBOpFyOASdU
	 kAdfPHd73PEug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF24C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178501863368.10684.1298693407994320500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3caac41ce3fcce0d843d6b725773337096d0e53623675da4baa9a30e66370837
Date: Sat, 25 Jul 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785018633
