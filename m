Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E65F244692
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782057394; cv=none; b=PpV1gRBzpVW2R0uYBd9ZIJrvZxY4kQHwnNj67tHb6uvsbErcM6xNIy85ZM9q+WSu4ilIGpgXKpdUoqK/4ULK/cYEXvogvQy6/z4hTMUrt/A51xbGIjmvW4aWpJsx4rTlLhGig1Tj6U3sWZ15LzEkoHLppbLn+eDGhhoYfR8J3B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782057394; c=relaxed/simple;
	bh=B4wrT8lg4Wq+PNa99IlATD4EkGKSXzL/ZTLVxoGxnYk=;
	h=To:Subject:From:Message-Id:Date; b=lWS2vnNgZ5TVgD7lImfm3fqCyuPlu65ToL5DkmBoS5U0l4nosMZ8WXM+wgtQcAO3nFdPQfwwKpkLlKGFUxHD0jVeNfe1WLRqgBsijope5aVgM78b0xb3D7T6ghXE8tQ7wlnC7OTsgBJnRMYqYnkxS3ekDbVSvSSInfrsBihtqPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tt35D8/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tt35D8/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE93C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782057393;
	bh=B4wrT8lg4Wq+PNa99IlATD4EkGKSXzL/ZTLVxoGxnYk=;
	h=To:Subject:From:Date:From;
	b=tt35D8/1ZwlwgnqPW3z+rQjdUb+zhI6TsEyMgw7a0OuDUeWC2N8sr4Tq1H97AoTp5
	 Dq/GzEIf+gYcwl8BT1SRN+HRcGin/1jZBBHspwdU5HB617gRivFxbQ9K2w3jiduEh0
	 3KoOuky11+qmQd+a/aHCb3iX75dIiOifZODAZrxGv3qXG6BQoqY8VTZdIW3APiJymx
	 gn9fTcuzKQbN23PnEZIXGmfgq4OICOJJkpGYt0GbR1O68IZrDmbS93orNme27FfoV6
	 zLhiZzr+RIl14OSuyVOfkqeGqs7FOzrFDyZZNqTADnlmJl9ZmzzwQGXmEQarsm3A/Q
	 0dRYvgygfe9XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1154CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178205739368.30054.1911964920304991879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd22fd2fb111011f5e9380ecbb04ee26a465e67c0c740d11e3eb156342709bb3
Date: Sun, 21 Jun 2026 15:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782057393
