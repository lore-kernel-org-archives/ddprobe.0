Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255092949E9
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745521194; cv=none; b=ce7+IMU0r6E2doieuDsUrWkCYcEmavdnhmOpwEZhVs4e9JmFaay4VoIceLsWqZ+Isgay/XMXpdrYPyG1afRSthvza5roQhAU7FG437uZIUwvcAvLNK1AtQb1yh32yxU8KArEi5oUxe/c052e+ve1wsGowMa0Ce5La5/SWZFCtDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745521194; c=relaxed/simple;
	bh=GC+5f1SzmaFb0x+UwQqLc1cYOSE0mEIh6zOwxVxt8zA=;
	h=To:Subject:From:Message-Id:Date; b=eWuoMYhFxKf9BVfC29zdTnpK83ubafuT9Bnhzv7ewMZw5a3NKtilAagXa6Ob0hJSQWVrpk7opDdUY3AVm+zvsceCZufJjLbvydnrUYvsXL/KaMfRY6/2tnvRQjuni4O3oY7/lrj48vexk/pm7TBOaawUrCMFaKq4FICJeAGkRp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPOwftZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPOwftZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17CBC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745521193;
	bh=GC+5f1SzmaFb0x+UwQqLc1cYOSE0mEIh6zOwxVxt8zA=;
	h=To:Subject:From:Date:From;
	b=JPOwftZ2JK0qwjEk5rDLdYVHarUOQ7mHDBMAlslwoIcmSPJt8sS5oCdbRVbh0wajP
	 heEu7BDc4mjkylfciFA+t20vw5ssMkNoN6MNGZFAEtVrAN8OKj8F57RTupra8NUHfn
	 w9WDM/LK6sQohaVg8zEv7muFQKlouTDOX9U4dB70dSZONJ3y85lVJLQ/JmaK6o9lZg
	 ybz449RhTaC8N92o0P9+YunhqYnLOHkt1ZixYSdSTgE0g/3hKThcHE5o1lh4qkhzyK
	 s2vCvReIOL9NrqwC5vZiBZd6/76p3W8C1Xt7zFtJqKutbu1wNcjrINqHNzpqOKNvaC
	 V4LSP18aLxhyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951F2C369D5
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174552119360.25073.7972611022839089453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a3661a13a16d08c47118964df060f205129e0ad0caa9a18b368f3809bbae5a
Date: Thu, 24 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745521193
