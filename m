Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F5A3612C9
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769095434; cv=none; b=Y3JwpP+EriWYdakM5WR1lEEvVCdIS5WZidMep6RpDLyRToXqZjIwhYugksCBs877/183UKDJ5NhThBErgdBwKkAJQDNukPF1+wBHgyiSPn/vomVs1pdPznlA6yo9aH3QNH9onE24+/InImu4EEIh1K2YzYGu3BAKZcuZJJx90Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769095434; c=relaxed/simple;
	bh=5T6LkBnceHcsnD9AYJgEfY+0TIe6a/F47wu0xn9KnC8=;
	h=To:Subject:From:Message-Id:Date; b=FuM6FSSQfSVn5U+9k3eBBHgWLz4GqmgsZJ22JAE7AWp8YqvbYVGE4/ms+Cq6gXPm+mJdqQbbdv9DDTR9rXERFx5weTc7QLhsORLD0fI45TVY3KKeP8sSHYcwBWGiCw0oS9akIkCuUiBbcDlxt5KudtWYwAQUonHWlyFX44wQKkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpPJDnfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpPJDnfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55D5C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769095433;
	bh=5T6LkBnceHcsnD9AYJgEfY+0TIe6a/F47wu0xn9KnC8=;
	h=To:Subject:From:Date:From;
	b=IpPJDnfdShi7+/v8cvTQGML5GNFRt+H8/glyG2LrV1v8G4rF6ULybztUkEWY9BDk7
	 WlMl9q7uUR8WELVSnTBGmXJbVQTrM/NPIBVx0rFFSGhnPN+frrTjtZF/KtjfFU+AIv
	 YXdbLqjFeXeKRzpD533bo8rp/P18/VyTcPSECNEqErUDO+cVc8HQgWhE3qs+c7J+hL
	 QM5XmI7c6QOHb9BF3RynGXsdSpRu93WUY3Su2qK9CeegKZgRIk5TP1T2KFaRsHJaXD
	 FONd+upEkZIR9LIwRadxUFyYHaiQtf6aItWeeT0ps6wcoD/qA0zMOT/ZDizAUfphGS
	 ZMMWaBOZIjUXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933D4D3EE74
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176909543358.7476.1836754215975494494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1b3748b69809cc162c4f179056ceeb6ffc147d7af9449f5b0ce0d28548b934
Date: Thu, 22 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769095433
