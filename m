Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5FE618A6CF
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753285193; cv=none; b=ZvQTiEc1RI7igLUpt2IDqmZnW6apYbMkFR6PnaVOVwqPhGwke41bx+h90tDpo1Hb28s1cee7JNvDcDrXjbwwJbHefI16rhtJx3kTrX3fOjGMN0AsgJgMzQJPYRxEar2ZQcVvf3ll1pnd9q9AD6WJ83lh4shmx5cX2xbYxnjzP54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753285193; c=relaxed/simple;
	bh=xRT/kHXIatj0wbo4nxUd6Cvn8GNZ+btraUnN/71F01w=;
	h=To:Subject:From:Message-Id:Date; b=AJY7PuhwX2Vk7wdNnPk0dM0mivzwqJI6CKzFTi5zZvXWUO/s7nO6kOHF3dPjxVkSgZzvt/fdqHfpI89AbYQouma5f1zHueFN64KuRAbJxQdfkSQK/9h5+2JDlAeYr6NYO5vb0L1QIYaLH9k+OBcuqoKTOb4KpzgAMofvlX7y4Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwfFntzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwfFntzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F017C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753285193;
	bh=xRT/kHXIatj0wbo4nxUd6Cvn8GNZ+btraUnN/71F01w=;
	h=To:Subject:From:Date:From;
	b=rwfFntzun2glEkCD9GWti8VNDIlq11eFi7Xye6VRMfLcFVPYcAEIiamAuYnyoNg7b
	 kfr+Va5Rp8v3fpHCxtY5hTISyM3dOsCu4RyW/QKPL17fNj2XOMSx7ByefRE8H6AYvh
	 tHqMzJCxBJBL1hwBpfGZkykLr1AFBK2DP81vJy3JsMw19qqtSBJItG2GXcsrxXOjWq
	 3/4lPJCA/xDGjc6HZlYV85aydydzHJ4jAPCt2MWXQzymcWbmRoBnItPM6dQL4bW+5f
	 nI1daenp+WFRDFA88JRUUOtoahg8Fxju65MCj6tFEx1FsHz5jGU+jGv778RLv552Od
	 fljSuPRyfzPrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90977C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175328519358.11468.3297717359286978123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95248babc61fece7349df741e8caa630e2fbc342e7f83a1efee6a0caee502602
Date: Wed, 23 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753285193
