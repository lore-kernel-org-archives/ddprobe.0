Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E02D20322
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759808994; cv=none; b=S9U9Nz4tyXVzfjc5QyT/JTFhNsggRutNj1i040uuc1oK1Wy5dbkKzpC5UJeLQLyh/6MHCtWqnH6Ovum4XNpzL1S3br2gDKRrBu9bkYI/td4+yf0RZnA0ffrU51eRIBT6ppYRBySmZSRaVTienNZz8bMCtYFNqvVowppvDAxq9yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759808994; c=relaxed/simple;
	bh=jDuB9k8Z7Y7NBvpHJNG1vEQvVNCpkWGnImdROtAi4+8=;
	h=To:Subject:From:Message-Id:Date; b=Hc3xtD2VoVb8eC38BgqZMXvvkRAD0qdeQ3H/gjeeTkUJ0fs7j32OkjEXbqyPrLVw8q5omnNNfsDp59aXfiin1p6wy6oXOsdGP6S5gCtK/Vv0jtqhP1QIwYwTKnQmkOm8dIV6fBDKImnBOGZOPYjfbYcAwaXdY6/eqKDXn7pRhTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ae2/JmFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ae2/JmFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6908C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759808993;
	bh=jDuB9k8Z7Y7NBvpHJNG1vEQvVNCpkWGnImdROtAi4+8=;
	h=To:Subject:From:Date:From;
	b=Ae2/JmFRGcDqOVMl2hmiTCZ6Ox7VE55N7L1NLi3uN8K+fIjpDlGsJQ1hcrwElqb1f
	 gI3IDbjmNBb/lPDsZ8cl0sYRbmTFHtpd/Sl/qenvknVf3NxWPPQOQ/zigmJxGtm+Wa
	 agYoXHDxO+cbSgv53v7LXg00iWY72/T+tryVdATUfJip7UVQWDKLHJ6NomAHvWJ4Gd
	 5sxz1RLijVr9H87MwHSBLE82mGoBMSvQzjXMcsgHERkldHtoDKCJJynNGtdnPpdxN2
	 e2M9lUp9zBAhkbOVwmdVwQlJGqQhJvRWAaOhAtqbxZba+W3tQ6KUKv1yrRrpuR8L4l
	 rrO3ObZ8P5Cfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956C3CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175980899358.26528.1142216374059922774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efe1dd22e16e2bf8d7bd14edcd45f6e09c626f7aef5dc5751ddc8ecf2ebd370b
Date: Tue, 07 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759808993
