Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC4AB67F
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737943554; cv=none; b=p0CX1MIT6C9x7YGWdUTXv+qAFKbWPQxdpUqseH4HWRseYPDk18gdloU4jZHvspQOHSmURFizYr5cy3yHIfn88Jug5YXXqDlHFdbn+zjj2UCR7AozuH+qa+egVeOgL3Tbf/ghelGZ8WQGHI6PM9EN7ejsKX9FFYn5zT2vvhb+Phc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737943554; c=relaxed/simple;
	bh=QfS5I5RLMbg5Igv0oMBwkjVSTiTKb6bsWUDgzvy0NIc=;
	h=To:Subject:From:Message-Id:Date; b=ukePfS7rE7/Licz3mIZAyLS94ycWGIU7oTTgDlbaUXrSUibsS67gLw8cn8kgfpjAIBzYSOvJjTtvA+iHHNYatg6AryWrYGiJy4dvlSk90w99coSmPlUBpWfToAQIwqG/78fkJfIreQ677TPcFiyzS2Wgr2TTrIDCWANaX9EVNZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRRwTt25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRRwTt25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8797C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737943553;
	bh=QfS5I5RLMbg5Igv0oMBwkjVSTiTKb6bsWUDgzvy0NIc=;
	h=To:Subject:From:Date:From;
	b=bRRwTt25ZdISIE/Q+uz5xtiYI6Q2mPGpXBm2i9pwyiVPnuwQUgF0ADlLxGfVRsR14
	 w4LQISWcOWELuVkGxftceWuVpJrLHZ4/xToLsS4Qmwi9OhuaGdBF6ei3xTaZW0v9yK
	 Ghq9pwle4E0lUiYS9ah7CAHrYUkW3Y34iHX3z6p7UWd3IOMB+49SErv5b/oG0B0Ejk
	 Td0SsHNBEQNS1nzrym3mxAHCh5jSgWNon11MP2fZxT4w1PBnCPIJ+CUNTe+6+kxhy1
	 2IWTaxyG9raNcTBtz68DUZ47d6zcWXtZgtQ+yzgH0sKpff09rfNmfv4mGgGvqzkzLk
	 Vfbvbmqejvuvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D1EC0218D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173794355358.3752.1415698288849890920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412180c558e8e8877414b4700a79f74c03e97d948890d653b10e4fe8b0888c6f
Date: Mon, 27 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737943553
