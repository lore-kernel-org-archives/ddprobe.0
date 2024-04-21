Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42ABA18637
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 18:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713724823; cv=none; b=iKK1yWoYZItOPybdN2+xpg10l3WCJnTnMmOFc5NUK68iPw2Zo9n486ohjp1r28SBjfU0oZKXT3t8/RF530Rm7KYESK2v2kammeSqKD4gU3b8u4N4ExnV6rBaNNiQq2LhmyPxU7AadkX/d025nsm9L+Agk+n1ARuxNab1LSpgkt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713724823; c=relaxed/simple;
	bh=r/C1Q0GL2i+y/JYWRaV36xCXGuw8a+8Lyy++UEFqFiQ=;
	h=To:Subject:From:Message-Id:Date; b=q0C3qDtn9aJEmn5ZWaurgDeEYEZ9JZOIXFY5hwlq0b5Q/GHSwmnNGa6YwpLezcNy+K40Xuo3VXY9dRpwPU8UvL0lnQ71xkpl2/VEI6s77fCycda5g1QXNeV9U+48bPxoNyaBtMwvStmoSdNcbBLDyObG+XkC/+zyZDUqDTtoSPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etQzUwNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etQzUwNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6910C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 18:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713724822;
	bh=r/C1Q0GL2i+y/JYWRaV36xCXGuw8a+8Lyy++UEFqFiQ=;
	h=To:Subject:From:Date:From;
	b=etQzUwNx+ByRC68AicSB906zH1TRY/FedHqaXNXzAG1xWyDnJRb0XLn8wUrEjdCbt
	 EO7arx3ANXAmkxT6sBD1aW6xYoCFrh4LxzAwLpg5kpR3tcAtRkvBQDQIYsAPRR7pNP
	 sCi7pqd2tMKDspQUFQm1bkz48XZW5ZFVW9drvCyL2VSIiwBpGHAp70Srd2T7x5TfwJ
	 68RGc/Q5FZwPBseET7saMnQ1mLZMkCv1QLVead4MC6tfXgMmaBsqo7C19m3U3GVzn0
	 Mx8cOg8sRAmXYwmVllYEeO35d0q9bnl0wTnOHWZUOi9b/xL8FBzQRiOX7hdlRiB3aO
	 xoWAdt68zy0dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C104FC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 18:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171372482275.19324.14544992787733460501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 533d72d12c0d0e534641364349184e191356725bd4f6ca98ab023bbf29438332
Date: Sun, 21 Apr 2024 18:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713724822
