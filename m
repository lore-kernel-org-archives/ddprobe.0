Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6C9221DA8
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751915394; cv=none; b=RzGaOg0J9/Dwq6FUJhCD0NTGS34LyURKJ4VsWJBloMSuiT9DClzJ7bDrA7k8dF/tDNSxYVt9L+SjR88WpL5Di0M+NV6GQekVqYr4a3UZQBZKd3eHotr7Uj9rvCAcD5jsR6urU7PiIEoTr8mLqXpqwMVME9zGSX+CagJBUDNkJs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751915394; c=relaxed/simple;
	bh=E93IdS8Ua/+g/WNE2LKxXZ8qPUyqHtZj1GhON8eg60g=;
	h=To:Subject:From:Message-Id:Date; b=ayVwDnSI1AO1Gt0xqWrQocrl9i4UNOSAQBuOV1wHyQyJ2XZXHcDdAWi917XZCY9X3Nua9g8oA8RMwaqTX9fsrQ+F4PUc4Y3X8lwkkVWUm44TUXyaLBLr6XHhqNyJC3gzHGDbmrvfzS92Htw5XwASPjTOKsWpObXCwMlU7omAaG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SERZj9gM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SERZj9gM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17D9C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751915393;
	bh=E93IdS8Ua/+g/WNE2LKxXZ8qPUyqHtZj1GhON8eg60g=;
	h=To:Subject:From:Date:From;
	b=SERZj9gMH9c+rRmBSrjFIj5WNW+d0o5MlO/jnmdQrgXtysY2jiJuMZFgZrQ697fXY
	 D/M97HhpuvtXpkIwZ17fUwKbiUkkTRcoRHEc4uCD6nA0GjS0ckWr+C9A5YWiW57b/C
	 kl5+80S9qZkf5MtuWpshfhQzG6D+ALQLmuGoytvFM5icXC7jFhsv+owfrGxGrF/Ton
	 KnN0sgp7PqulY1jIiE7pzp36OuBJLqibC+6rO9eTCv9H1ph7shgakKsH8meg1U/qp+
	 D2l5eRe27t8V1jGYweP2sjkjsQH7tM4vK6KCg1Jl2TxhM0fh3dq8YcisYvTBvXDVtj
	 p9texmUB+0DcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37FC71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175191539357.13645.7846079041357735712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445658f8a86bbedecc291a226179537e83f581ef097136d1bd6896d5711e0ab0
Date: Mon, 07 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751915393
