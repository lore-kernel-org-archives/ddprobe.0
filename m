Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1D2175B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722396354; cv=none; b=UZKo4ilzSfwddxP0wkKcgqSY3XdAvMvlbmVKfFQn9vudh8RTd/wwORE9wBAKxQhAfUwIW3juY/VbIYQ0LqmbNoPcvfVH+ulX76YPtK+uEz2dq319hkcFx9w7+iEg5vYSztxl1SatKIPU10fpm4A5Kz7+ttn4Ilmo+aCJlQ445SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722396354; c=relaxed/simple;
	bh=UBSUW5++OLqARXDNp8TvRhz57/UDARq+G/jI44H+HcU=;
	h=To:Subject:From:Message-Id:Date; b=SF8I3VqaeDJE4tyHPlK3u3icttFu3rIn4Be/SO/q7CFHVAJxKCux+pbGsN2NEDo4FyEhZHKxSURiN4yH1IVo6YTrPmgY8ggyVZY4XlHASnIf1+dZFxAH1wHWA0vuK+8X299jbGv0xR7IfcJiJCNoO4sgE1pfOPskR+ACWkV65Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8wRA1sn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8wRA1sn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B77EDC32782
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722396353;
	bh=UBSUW5++OLqARXDNp8TvRhz57/UDARq+G/jI44H+HcU=;
	h=To:Subject:From:Date:From;
	b=H8wRA1sn18wqrIFzz+NLUjXU4H3HmVOGsizQehxn4TFwIgvDTUVEuLiybNDiqJpGE
	 HxnWw9vXg6s0VlKjOap2D94DnkHp5zjA/cBb4qvYeUuwrg1HGu0OHm/47lZfBL4p4O
	 rIBms0yzMCfoC0kYUNWfmEPIqttPQ2W6moJqBqNchoruazYi5XMETdc+kBJDL9nzK7
	 ppHPH/oO81jvzQVrRwSnHI5H4NOk2mhiUC/gLNVt9upqTukrMvFgl+MEt3LUg6a0hF
	 0dLjpUrZxotVYRfKNasFUmc6NnVdZDdrkDTgfG6ukR1rNAv5iPzEvNgfYTocjs88Jv
	 MaJOt7I5JND1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9B0C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172239635361.6729.15871994536401777302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f3bb1aac742a058ae53467d6c60d81dc2a9425b7d8aa9c10f635ca69ab48d74
Date: Wed, 31 Jul 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722396353
