Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B99357CFA
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789315234; cv=none; b=hgWGLosgqCtBBsfjlVcPTkUMqkoCepV/aFmbed5OUoF2vN+C0mRqoXtnzAGsrVPcZndSChj6aViiyOr2icaXgcYjLC5vfK0lC9wR5mufGgLgVP1HeaJLeonh5UIICTlxmxRfvYxHBBKosFd/z1D4HlybtFVPSwLnGlsMr5TL21c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789315234; c=relaxed/simple;
	bh=856O5f7v6J5VlYplv3fD+poHMevQHTVZPPQwi7+cdZc=;
	h=To:Subject:From:Message-Id:Date; b=QkC4wnQNEM0/kSNhTxyoc13XBoO0xRTHRoJg1Kmk8SpWSTXPqbe3ky1zP68jJI5tz9ErWDLJ3ldtBiKMwCqfzsZwvk/U6+/wLjEPh9jb6bnJYXDliCHrAEeoPGbNuZa9q6S3MYvRDnw2p+lPDindW9etfDmhzgvyE9pl770jeno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gU7Tj9D8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gU7Tj9D8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A7FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789315233;
	bh=856O5f7v6J5VlYplv3fD+poHMevQHTVZPPQwi7+cdZc=;
	h=To:Subject:From:Date:From;
	b=gU7Tj9D8iCgDUy2Ba7ilTpiTqjJYI/bCB7SfDuJR4EDvvliuoc8KlYtDZgSHuGuC5
	 +dE5UXN4GDX/OrnB7+BntuOf0VXGm0pgUAuCy0x2tPgSUBEsWbhE+lYj72j+2iVJQx
	 lEQmx67iRwJra0x3ofo++1VvuMRQSIRv9xVd5LYQHmecqKqUzUp3+d6HB1PCRRvufP
	 ePD3GJiWdPqeI5CIoBbn+WFJ1hAvFGJkcpbMpbio6xWgRBeKGG/thaTP3uj8hYxBub
	 gshUnMbF6JiQrHsMm80+Y/ufzxFmhQqxTRXCyeP8W6QuLJyZ1ecK6qYImPAMMXBxtw
	 0NYiZAUSEPKNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD93C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178931523369.3409.4503368695208102436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cec43df87e880839e5bdedd29274bfd7e6191921e7ead2da98c92f7b75fc862d
Date: Sun, 13 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789315233
