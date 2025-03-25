Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAFF263F3E
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742945994; cv=none; b=CGXtZsq1vEY+V+1opy01Xc57AOy1r4OpvQRztkzwaQ1gOEzdVjElXCylwkiqpFyGtLKndfApWhmIWpg6mZAxWafBUSRyOQNz2Zbon2kbtYuqFTDhrxy83YOgoQFQlimktPJnEd8vo3ADZ5xYrZCJg1GXEmJ96+leQUy9EjGmdSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742945994; c=relaxed/simple;
	bh=kCwVykEBQay4HIetZQrjw7grHis4e6V58dYuSsnHe6s=;
	h=To:Subject:From:Message-Id:Date; b=VNg1qwtms/y1lFFhYnolSiZJhDlPsi8WxAAOy45iqv3ygKcY0fg30q+KfJeplxMmD8fTMgHfurfTQuEGkN/rgngL4rQnygoP1lwXQrq0kQpQJyz0Hy+32t4TswOT6e6hGYnv8tqanrlkyqgDYZq+PREPYptCHd6zRhORfwcfqJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uqqk8+6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uqqk8+6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7010C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742945993;
	bh=kCwVykEBQay4HIetZQrjw7grHis4e6V58dYuSsnHe6s=;
	h=To:Subject:From:Date:From;
	b=Uqqk8+6GHiRy+lgxYHswpGGeOFcZqyGghLWtR289Z/beJmrZFXjjKuFy1yJYpXuQK
	 ZQb9Ha7QjWbwaTVXZcNwVDhdnUl8iMw84+u9VxGP81JzjcZada/cflAyp1A66cAeqS
	 eJ0BewIAyaATAROQdkDdygK1/5koOlxDS2SUBpovKJ/efKL+Bo3/vA5JRlZIoIntOJ
	 YM50hzDLd4rOb+kxpfuJhO7mh3u9Q21ZlKF5CQmJyW0ZrZ6ovRRHk/mixooUQBkXTi
	 OcmTNUsOI4YriXQd7C1I3LzaO7ryqDIngRGXarrPbycULK0kvnTVVoa2EerGVC9LhL
	 4w2BMbEuzuhTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F1AC36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174294599368.9207.13199602172715019211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ac30fb6cc17826b7b1f754cf39416cb82f8bac50d0b6413d0477d35cce38e2
Date: Tue, 25 Mar 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742945993
