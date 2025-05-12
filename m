Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F602255F5E
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747036794; cv=none; b=LEIfp0+QtRXtM3fnhMYz/SflEu25nKFAXwaTgBE+QWpU7JWkRBEseoof7m8a6nOwZceDDtuvbSak3asPwkaj/PTG1M+8kmB7ac5UyAbQ79g/HdRVcPFjYhJyJ38G5ldCpt3JJms3k9SvehQ0u0K7Gfv8Lci0HZ4DL6FsCKGrux0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747036794; c=relaxed/simple;
	bh=PkM82qyKb98uPjsJRGDFozbUIEzGPyg9QFL4ENoMRQg=;
	h=To:Subject:From:Message-Id:Date; b=QjrC2Hy0l2H5Hg8OK13vk7Mveu7bbWRQZsZYqAb94Ye/iVMY3LXz8k9a1dyTIibms1ANQay1UTPhDT12IIz8K5jB/bF5jIxjfIDJ1fEbRiSbnM80Hrv/4K1XW12ZgSWlDuZ2/7SX1sPi9DFMNBWlbHbx9wT/uMNE/YMyPFKXchU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8uetYuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8uetYuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E58FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747036793;
	bh=PkM82qyKb98uPjsJRGDFozbUIEzGPyg9QFL4ENoMRQg=;
	h=To:Subject:From:Date:From;
	b=S8uetYuqF8vfkAF7k/xy90uGaUTohFWLDCqrqlBKa19Z02/dXmhFHrmQNvFZ8OZtH
	 oww/0NxFV1giYWX++VfiIygOY/UptfmZUMmn7SAp6AHGEAeDHB/P5qKSg524eWiK0w
	 CwvBn8uvwUrIhoWozwnDnRmlU3zgErsxfdLm6p8yXy0FmBxmLDhcw298w8M4g7/srD
	 C8v+NyxviOf1AJbx2fFoJUGIzQgIO6qUyaJkqgW+lRLRZXgL59dvWMiwYoVxmh4+im
	 CaZz7t3hR156P1U0f81LqcRoPZmf8lxLu17NQPz3xLrSTRfbEp9YX1xbszyLqIfu0X
	 YuL/1HDbdKJUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF6AC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174703679358.32389.1945621753533634043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e62dd014993e198f1bd139c6ff5fe984724d7de5134df173416b7e6ddd599c1
Date: Mon, 12 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747036793
