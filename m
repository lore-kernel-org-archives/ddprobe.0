Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22C6346E4D
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761065394; cv=none; b=qwg0RQe7pKVXFv6CUXRwFVkHVXOcQGGoiLVxpWOpC245JoJs8Hm6WJFKWw/H1OmsDKWW1q/yPhAd2+ehcY2MlD//xN3lBCAS2Xf+Pbyt3QPNqwclWOCLZAvRBUQu58X7qf9qDzlkRVX7yvs+/oh7lkAkv6YrirbJ12+3IiM7iVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761065394; c=relaxed/simple;
	bh=rLcnuJoiXquXgxHC+8vxNobzmg5iwR1PROOPbtcKnZo=;
	h=To:Subject:From:Message-Id:Date; b=Dq61yoPQiLTTvn5pRSv5sV5ITb5dvpLEpeZkLYCAD7Nmu1U8cArvsp6rNHT30XmICzoG8j821Z/7zPRXPlEHcl5DuJJ0jUmKozqdZjj0go4+gJXdbJfKgd7pBvaK0GwZX+lctSebuZYq1Chq7vqZIpT2/k+e4B6Bgb6HjSr/KAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=su95ZIM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="su95ZIM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52ECC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761065393;
	bh=rLcnuJoiXquXgxHC+8vxNobzmg5iwR1PROOPbtcKnZo=;
	h=To:Subject:From:Date:From;
	b=su95ZIM5Lq3hCQzk+yKe7Zkm5uzoS9Jh7WjdRSmFqRQ9nbeFzCzGsB8Xuz1qweRiF
	 /6gfnjIFPkbbBNm/aiY9pDp6xQGLnGCy7sndS8OG+def85x+OViZqHydLNOcBB2KPm
	 /Q/bC4hKy7CL3LqcSuteT+qt0cBe3eVXwhsAM9JD5uqSVi/MiZIofua3kuiAJClybq
	 gi/BPZ9qe0bgNdlsv6nxf7OHKozZLOfsNkJ03Sck/Zi/MFf7VBd51u2JjJQLKNNhin
	 HRP+qkcfXCt3u3s6Q9jBnEK1Ek3jrT6+k2Oi60Zfk9E0Ut6ATtX78XC0p9Z2qtRZQ/
	 R9kx+Wms7cQcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93453CCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176106539358.13410.6925875431000218864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efcf5df0e49d001cae1836a3e75478ab3b2738abc0d1c723c6c31da47f62fc13
Date: Tue, 21 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761065393
