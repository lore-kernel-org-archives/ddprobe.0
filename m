Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4C93BB40
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766985234; cv=none; b=bN5RzyGHdn+wVhruHA5ffSyHLWReiPzaxVgiXweVGB3TxyakizSlJtOpAlIrHhowRU65VdmOt7+obXy6e0qvAWpfZG94Oz0Qm/DZCs41dAavWhv2qJ+CoR3X6W62w+uR9PABQfTGZa7nolmm0oOfZMLXNppA88ECY6fwqOXiSi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766985234; c=relaxed/simple;
	bh=BQ9B82DLt2iZIEywAxpp2niT/bpxjbD+0yoLEbaFDMM=;
	h=To:Subject:From:Message-Id:Date; b=AnMFuUQpaKoCV6cT6nncOHxpVQ1WezRhGtEVDLa4ENe/J99Z9SbBu8JTsT9i1XdtmT2s6d+aJmOXVLbij+gkye2FsKghyTUTayxsHeIUKxUNN2WsBggdMJz5yb/NsuZ7ThgvO3e/WzxZWD3XJ34KJCjdXRg/ORbtpAwapVi/Rp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXK9H+cg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXK9H+cg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DA1C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766985233;
	bh=BQ9B82DLt2iZIEywAxpp2niT/bpxjbD+0yoLEbaFDMM=;
	h=To:Subject:From:Date:From;
	b=sXK9H+cgDAg2jDWrK9sAm7uU8atvJ6Jwte4IPhpc+2jh5JIDlB9vqeHVqHTouJu1B
	 qaueGqitokCClqBfnsvDFwaP5IIw2XQFkpKt+nTuCSrxWjBq2ScfX5lQ340EhpHfcp
	 Vo+7anDe4tELlVgAx82V1Y9k9yDFIzUiK24rla4I9mwZXQXWyLQXr2+37CcbTbzHWD
	 XiyJK4g8+27QqRHF5WYzT/wBJO0PBauLoMV7cwyRU1M6nk5hosQG7Mo3f+kK+kj3rD
	 yQF8BwzNp9YPx9P9omxfrl0/QK/zxEjejWNbsr1ASdsqUjGbMApwOoBVrZlgH3KVYQ
	 r6HnwOVfuakfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FEDE8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176698523358.4230.2071637251346358140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a8d4317c8f21b7383bcfbf52275147b547f096a37e5dbe461bb725f9ebf98c
Date: Mon, 29 Dec 2025 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766985233
