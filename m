Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CFC34C83C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783975114; cv=none; b=Nn0FtuUQnjTUuZRMacPgWUm9EKbb/RQmzrXLb8Umzm9cerqFqB0/PRKHRKpTxYhU0f+5ZAQYX02zkzUH6/pKDfI0G3WJlTTiFlvI4aSxH1teosNm9/6YQkSIBn13iOkN8RcKCIklQMZnwzgdYf9vk2E3bIVMbO65HgTkD4IALQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783975114; c=relaxed/simple;
	bh=/kcgfpHc0ewqfy7/2VwlOsIBahongac7eVu4Io8PNgI=;
	h=To:Subject:From:Message-Id:Date; b=AKNqS9Ezy/RESL7CIN3i88d7sBebSm0yYhb5b69vng6dKxTz0kfTn9aEQZZugeWtAltsERz75bfkFjZDZLflPIJHYmQDREECTkG/2emTOee9EyERuCIdXZLnAqC0GXDRaMQ1Wua3k6ivVqDJUVIwJrKd6rgFqiXwIaxtBGyxpLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6LPJmZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6LPJmZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE46C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783975113;
	bh=/kcgfpHc0ewqfy7/2VwlOsIBahongac7eVu4Io8PNgI=;
	h=To:Subject:From:Date:From;
	b=k6LPJmZYl87vdJwbciMjb7P2ihk2b12xU+sSMgt58s6fnpakfX+6gFhKPFCSRme2Z
	 OLYpivR+WADRm30KkEgqI4X3wGjwQvq1Ng8jjRZTdTUR2fAbs541ReMRVogEMqjYQ6
	 G0ZPOrryQLNz7E9DnQ5ljuN3tmtN84OpUOpPbzFKn2o8n6I4FF1vNNoBuQPZx63ui4
	 liTGnJ4nMoMJvoS/B6AARH4IeynzQaEKse6eWUTQg4Oc9KVE8bzGPfbZ233GKWTqva
	 MSNU2UwfqeGzwR34iTUiVOLNrd4KVRW2v4h1IVVqROQKJsu2CyLLpm65TzVNGkgaRI
	 l2K0QNIEaSe7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8839C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178397511368.11760.4611085043295081981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aefb59fb337131402080faac68c915384a51d5872bad7d683a5f6f7d69573636
Date: Mon, 13 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783975113
