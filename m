Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28257153BF8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736016954; cv=none; b=YhrzmDliWUuyrZEVs/1xNmO1VSba4etqwx6aE8ojxTEbZaf6YKJ3osLRp9rWA6DwRuE1GBMzl87LKoITNpx8gETpW9Fdh7kcOR9FJ3N6B6Q2jlhqLAZQlybTCn19ALr1v3blFzh9Mrb/0WBpq5lH30ENAO8ZGMqrGXhUXNLAoeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736016954; c=relaxed/simple;
	bh=2U0zajl5NLeIZ6BriEZuD3UYH+SRU+sUIv1xcolXTro=;
	h=To:Subject:From:Message-Id:Date; b=JTKzUdpwYZGW0UdJdzWRF1Us5p+CY5HyHfsJGKVkoE6X9mFI06MEfY6GqpCwMrjqSviIYzyJFlCKrmVFhAzE1ACenKDqL9IgIPpwTJpmZHicEXPRsn6AqQ8MMqAl0ErF+zEkdt+fd9FSNzIHSLn6Tg61cNWqPRCde57kPKR9zNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iI7LgFuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iI7LgFuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A484CC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736016953;
	bh=2U0zajl5NLeIZ6BriEZuD3UYH+SRU+sUIv1xcolXTro=;
	h=To:Subject:From:Date:From;
	b=iI7LgFuFVpCZNdDBHk/LfNFdR8MVcyIYDFGFektA6aBzl6eu8why8s50pqjU26f8+
	 k+/uOI1f+RynaGoqYxlhs5UfwCHQBmZ5Mum5Ao0wxjgwlIWCPOkztYOb0as0UzRjFk
	 cixAd8kLYE/UisYQnQhW+vqel+ogmWjUZEMcjmrwZIzjupAXj17U7U/GN/V0k/1s/p
	 AYI5E4k1mXrJmU984aqoBJJIpjZ2kstRpdRi3D7IQHKkZLYLWXaywG9fCO0HX5ZZ/t
	 zj2++ZWcH+Om/owHyx/aMbBH25eevc8w2RFNVrAaC47qBZExotHoJPHxiFg17PKSV2
	 dtw+TnbmgYRjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9174FE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173601695358.10432.10800687090098460032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7426ebd44b4fc47bc5ab4167722aa749ebdfa6eea7dace017e96b1ca2a814a58
Date: Sat, 04 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736016953
