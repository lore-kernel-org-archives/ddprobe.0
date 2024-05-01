Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF1421105
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 10:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714557743; cv=none; b=unTmWMYujDlrewLKKpX9L/pT9zq+Mi24KFdPT7qVf6nwv088Z5XOi/68OMBhGT0aTyvCAzFb1GCEFEQfgo1sWj6aeEQqkTd0jYzhpahK5Q5Ix43nbZi2J8m+lfvRUMj6Tm109z6wgJdB+v1UWh8RS3HTp5EODWdBoBICG2Wcmbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714557743; c=relaxed/simple;
	bh=TD0l6mfuoT4CGHMgzuUSz2lVRLzI2dHAuZbAkEID0Po=;
	h=To:Subject:From:Message-Id:Date; b=tXaLMKtVgZmnOjMuCUSUF88V+4kaEN+aLBAqY5pv851tibyrLyR/bQyv8lnC89zfX7qPpygZosEXCTS6cXuatzuW9LU83S36G4BmaUEgedD8sAz9WDMxFTLyH8l8bMxN3XbiOyE33dIrgOE/poNxASYxbZ3WzGckMip04+moqxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f24eGH/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f24eGH/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D409AC113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 10:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714557742;
	bh=TD0l6mfuoT4CGHMgzuUSz2lVRLzI2dHAuZbAkEID0Po=;
	h=To:Subject:From:Date:From;
	b=f24eGH/B9rpm1C0EznzWHvJNmTWJhjViptep2R24hCQZN9cSQeujvQ8mC2qzzIMNe
	 m588L+mcmEY5a5xk+5tEDvbZRkAhwULAv0QkTBggxo3vqD4x8Xwxg8O/7WN8xP9k06
	 eVCus0v2wnsJREZwRET5xVygHuHqfrWs0H5zMXrgMTIPC6GkkgboQDuguVGDzoVBiA
	 t7kpPRvykeFLz75f+t24N+di7QcDqkBaCOf1Or0GCXPTUpJo8hxQOaXoZTriSpFmKO
	 XK/bMTc+pvkpxdMSiPMkbs4BsA28D++bt5roXTUmNp5FE56SJHiJe96xRi/rRH/uVV
	 yxFQsryXxK7ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4EFFC10F1A
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 10:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171455774279.27891.18331032338111801352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 101a839339ed79ccae285e737bc992fde6eb615335e238a721395e1419532a57
Date: Wed, 01 May 2024 10:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714557742
