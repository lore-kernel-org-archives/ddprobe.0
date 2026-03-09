Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2425F38BF80
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773096294; cv=none; b=pw/30sfH7Uq97GRkrIehz0rnNQpnbNYdlUToQwItDvQ5HStF7s/08TA74WEa/g6fYucc7IJ+JG+QvL5mmQ+F3PEt3YH5kVR7I4jPDELSVrwCawt9HYDAmf2di+h7KfogG6oaEK4jCfPZ+N0jM+RzEKjE7b4+vEfOrhHxpiMwEak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773096294; c=relaxed/simple;
	bh=70HBKI0eroAqK8BxG2P7to0+bVy0kUHsyFI/vISynn4=;
	h=To:Subject:From:Message-Id:Date; b=WtO/f0alDeQ54sJZZ7QSYSZOGMhHMoeVKRVcln1wgkKNcP8VpEE5JfSgbsqT0eK7fIk1DA1yAYrRAhUj+l4/dlaw/anfsbklHIKJ/hCj+m5XvvLYgCFCBbF8geVDU4mjpu+N3LleAvFOqgNPQy+1pUUiYFYboa+64jUIJXVrB7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqAifj5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqAifj5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7677C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773096293;
	bh=70HBKI0eroAqK8BxG2P7to0+bVy0kUHsyFI/vISynn4=;
	h=To:Subject:From:Date:From;
	b=YqAifj5t/LbunztaVs9QC6WndcoRn1Mikf5zlpYDwKITK7iQWTuULLgv8O6hTSHUQ
	 CC5kIcRmYM/5NOKT0vztAoYiEm+G0Q8jx50suQ5sO10043BJnhPjBxYwYJpNX9zIU8
	 Cy1gZ0K4WgASZi5IKfQbVnvCFtyArYxLJ6nhuaSIp9L8GDR5gMF4NIv0Dnscv7B5/N
	 +qb+PyTlczIhELgEZgPKwzEim4ca6C+54qqU1pfYb/FCh5IzgjMwV/s22no1ybRLQE
	 eOQCkojEEbK5fTJZ60cqP7QIDEwQ5c8hnsMPvsE8NFyULP6DCuS8oUBIcuQnFwzwUO
	 eTd9hJ/9yIbLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9533AFCA19C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177309629360.16753.3352587016373026750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9d4b6476e804547f84bbabc046029d2d0c4029462ba7738dccb03abe1bf402
Date: Mon, 09 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773096293
