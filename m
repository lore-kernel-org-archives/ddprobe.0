Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD4137EFF4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787886034; cv=none; b=Ekri6KbV95VhMvJd9yblMJcJGU07FretEEojV093oyb9iIM/l4h3F2J1F8K0XBBLMhLYrDupJJ8bFEG84gTgAVQyXnpz1gk9GE2dlhS9Nd9597jkj4Mb5BIdBDYc7ZPmVGuIv1iRU8Qcjpx+ryBToia9dG4QY4HSpP6bAijuzPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787886034; c=relaxed/simple;
	bh=eoCpb6VUxz+uzI205XaK5FO7kHtD4/sqY/46PU9V/S8=;
	h=To:Subject:From:Message-Id:Date; b=QKFCYE07igt/2PmbUCN1yXmZq+lhbVi9wBPKgh+ArgeWv88h1ZvOm41/EMWNcmQMl+WRwXtVmCYGlpezfyREdN/iKmU+YWA4EtdTO9WimmSEzUB8m5YInDTtkvdf89ZAAC5uCWTd+pKgaTvcsTHIMn1/b4kagJc/rt8cFTT7VbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3Fq+i9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3Fq+i9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88FAC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787886033;
	bh=eoCpb6VUxz+uzI205XaK5FO7kHtD4/sqY/46PU9V/S8=;
	h=To:Subject:From:Date:From;
	b=p3Fq+i9M0XyMjccVHXGnC/eWZfLdl4fVMD9l7c7pYxBxYs5VQ/8NpbbolvFlTKiMH
	 Raos6g02jilcefgzJNAqXoPQjYtnxkWoxl2YQ08Ciz9VtUyrPPE7KHKjEgUJIbxpvK
	 EkyiRKBFWEB5wkasL7IG74YkAfcIEbl5cSo+OSdcn6/zxgUZjaxgzJVxULjHBT3vuC
	 6k41MdwE6g6Wb7U+HDz7UlR3QbvtUq9ieul+4QovnRzmUZpLnppR/EvAOXco4dma5j
	 WsE3kRW3wiB0/7uksrZyCDlzaHWaUrU+f5OZoF+Pm4syTWUvUM8vnAaTtK2f0MVaEs
	 FXb4S//Al8hWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F9FC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178788603370.18898.1119962635147549954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035532a8f287d68a0d536785bbdd7e686c2ac8b137aba8fcd82ef46b88296d71
Date: Fri, 28 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787886033
