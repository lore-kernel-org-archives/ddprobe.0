Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F1B242D9D
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755483594; cv=none; b=plqaIPir70+oQihD3+sz5ua1mTj46hwYvN5+vNyK/v+lPreb1JhYwUoFi1z2Ny9uvLg1WwwnoPuR8mjNbc5PXpWHYq7pOQ5YSQeU06wPPzkoJOfnanASwKo+0ql8vOxW1c9H311UBTHichaPsUV49fz8OsHNiUhp+qXodCeuxyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755483594; c=relaxed/simple;
	bh=ot8xSquCDklG+V6GJDwsQ6VB2FU8SXSU0UQUn1pS3o0=;
	h=To:Subject:From:Message-Id:Date; b=k5nrDOIUc+htLI/LSiqR+CDTmboFqtX8eaMr+w91POatErieoG3/gYdHVHs9pynrar8GrEUFP12eVE17YudT1FkgzzSEXD7p91Q/wyEMLRkM8R9yHvngB0O2DAeDkluPuzYozmcWm5wx9v2nN68/Lvx4wgcdgBjecJewRUGwAU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhcdNOpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhcdNOpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35FAC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755483593;
	bh=ot8xSquCDklG+V6GJDwsQ6VB2FU8SXSU0UQUn1pS3o0=;
	h=To:Subject:From:Date:From;
	b=FhcdNOpNE+zz4CF0UxN5GXe5V+t6pgST7xd/Q2WqyqMYS80tJqIOWLyNyvBTXjTdo
	 W6TxNNrjTLTx6qmXxmX0SUEsc4FyspuD1G6wHo4yX81TIMTfG2vn77RJuRRL0HEZW/
	 n+VKGAW8fuSecZgmitmPFyWwUY/QJ7GGhrVpj6jX+LaZ7nOiMFT1zLWRh5419ET9PO
	 fs98aFTWGrQhsU3cPSkj4KoXg/21NdiuXVch4E9h1FFdmCyL32IrynwIKEJ1NLl+tK
	 Npzoyoso0tKvZEn422j+4kDj9M9n4rENyNEP1lgL8zY/tUJTJc5ItY7MM96DFLP4Tq
	 x57P+c6i5Jpqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F97FCA0EDC
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175548359358.12547.7668817732860358572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e783ca03151fd26b2dc2b6b171a6bdab3ef4c49e37191d8c0fbfe839a1bf39
Date: Mon, 18 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755483593
