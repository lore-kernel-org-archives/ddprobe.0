Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6797E1759F
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720837164; cv=none; b=ci9zGHC5VKdjgQt1IC8H+PYrYkBn5iJnL6w2LvAvhA1fZ9KRHiilzEkfKuYRD0jN+E45RMipBC8lO+eiB7RTsT2skbWgCGCb9Yx+zxp7lTNPCD926fCTeg7RCRmjnbHSkQex9QrbRMS/EBCc/r/DesbQ3A/S25oFYeotLMjrVSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720837164; c=relaxed/simple;
	bh=MboZ2FVjhqe7z1L59pf7XlE46//Q9DOnblEsZzBR39g=;
	h=To:Subject:From:Message-Id:Date; b=QJhMTeY7BP1Nekf07TCbhFgE//PZJr6uP75ObP3PDP6ZSlEhAPhHPnd4XpBRuEymnx4oKtfstxC9n9kNWLyTYPj9Fe3QyqhFNu0sC0Odi71ktKUpIMHNTUyUSDI1rdnwibydNHKApr+ounMQfY8uiChyDjsPRuWiqb8wRrbaGoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZ7cEAo2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZ7cEAo2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9026C4AF0E
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720837163;
	bh=MboZ2FVjhqe7z1L59pf7XlE46//Q9DOnblEsZzBR39g=;
	h=To:Subject:From:Date:From;
	b=kZ7cEAo20Guxd1lSwsJ9bAdLz/yCARikTit7KdshTErDMrFYW63U6YtYXR7E7lJJ3
	 PgFf0A8gdlYp9Qip1BpQzFAtMdB9spnESlB8vqPnZaVXBmvEsEaSBHLVJz6gGUBrPl
	 OAmvwT05/CXLbkvVJuscpdz1WQ7LF8bAdZdzxvaDpM6LhS9zFoSxCd1ISk8meYDwIB
	 uqigG9rwG3OW6BQZd1eaY54wQVNIHcSdYuMaFaXvXfrhwxCsDuVBC+b+dDAXWLg1oM
	 2Gt1XWw4yorc7WP2oUCZINKDjT61Oe3RhHtlDESE325rN5rAm8ksdQfxfWLfJKCoC2
	 8OrXBt6ns+JLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2902C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172083716275.7765.8298086094066778767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f86c57b16e0275636e9c4b5c277b3b7061e9b3a01ae201ffddfb7fd256cb0a
Date: Sat, 13 Jul 2024 02:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720837162
