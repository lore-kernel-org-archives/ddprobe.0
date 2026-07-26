Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A92D35295C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785094234; cv=none; b=B4Y/zcH+LSl6J5oWMmZa02dfp7/kHLHe+Nwl9GeCbEMUZhM/nprvoj376KZSjwW5Kit8OgWvzCgsFQLVT0IJyOZXT7dh/7UGCbda2/3F+HkjHBJ8ma/Y/DFqLwH/2bPzEaUykNuyWzKwk0kco/7eepMVStMEIkCwDWBNLJsNkl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785094234; c=relaxed/simple;
	bh=RKwTL4kiXJATKFvo3t5+95exulixFsS+Ee6rD5H6Gcg=;
	h=To:Subject:From:Message-Id:Date; b=kAaM/NSbKWfEuAu7BEWmkAzeFhZUxKOTfYgUtsqxhYh/wZjl4CdUQDzLMWvLMohOxomIMkzWDCDHhZG4xsLrJZVm3NdjjllBhnIn8lYp0JqB4T9jPKdY9XFCAqQHof27ONEBOCVV3Y12Tli3DSzaH8RuihCx02msoqwNoIyvybo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jw7uJYFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jw7uJYFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6687C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785094233;
	bh=RKwTL4kiXJATKFvo3t5+95exulixFsS+Ee6rD5H6Gcg=;
	h=To:Subject:From:Date:From;
	b=Jw7uJYFqRlpsDEAjvMPHWXEmRXWnmCXGXxS7irASqjz84yuASkc7gWRVb+9Fc/nMq
	 KV9RAxfbBTzFlkhLrPamACbUv5Qb2DvK+1xRItT1cvczKwF9xVCCrxG/wQ3PXKoeTs
	 te9uVJ4n9JelrEcG2eXaqCQkes78/y9SXOHAFCvtOG9fxZUoL5UQzIA+cKZ3em5yjq
	 JDVfdjg//9c8hfDtf9aAku68+cdKvIFvEnahEbcpp/5C2i4F7sAXxotWnbIfdaLpsH
	 DvrpeSN4C627twzVcwmol/mMLcgMmOoM1ZzraVO+glJF2j6WI17/Cyc+Sh1sGx8Mm7
	 EmZDXfFKaTtEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF701C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178509423368.11309.16903756776930427909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 454b6831e33c5ce9d47be01319d1c3588dcb4af0f2e7653c2dfb6e65648cc7d0
Date: Sun, 26 Jul 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785094233
