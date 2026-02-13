Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBAE24468C
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770955494; cv=none; b=BFT7fbK0uhKJPApIkdXsUCtGk6QLs/1lY8D4rkLbPXIwkmcLNqhwXKkLkUe9md2jw0psFgBZ9s7FMNTqB0cuaPfFjtOY2zGeJOsA+NuER407n5jiMJshuOoaWOI09guS8Z3RkVLw2JKXcOnyTAEBFU3Ax78i1e99K6xjc/Xq2HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770955494; c=relaxed/simple;
	bh=X/e2/IU2BzYWl5VmhawJ9cVDFstsHoH9p0hl0rgB3vg=;
	h=To:Subject:From:Message-Id:Date; b=WoTN7e96sztvpPVVMSPs4ZuBn8UGpOv28asVqSFZLZSiX4pHJRvyp2TWXms8TSIvnMHxTabYgo6xwwBYEkvRiWv8GqL+rjn4/yEq4K/fOGGhmm7712mMweIur3iY0dpMBB9A9TZG0vyzAQt/P49JfNzmr45nHUuQP4sg29sEpu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=en6mkozC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="en6mkozC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6B2C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770955493;
	bh=X/e2/IU2BzYWl5VmhawJ9cVDFstsHoH9p0hl0rgB3vg=;
	h=To:Subject:From:Date:From;
	b=en6mkozCp3MLm6KSBpqn4DgvNciDGzjIjaoqhoioemvviYqew+c5hrvAecrSlnlNt
	 +9seTbN4QhdGNRQqucqkRfKZ/C5YFUPou6SuqCKIjk+mYZXOUetUZxWJnJQYjn/G/8
	 wXgXsk2C/6KrLS0YsZz2moDLtVug/belEpRo81yvIkPsiMJiwtlPY3IMvazW6+dLZY
	 D1cLSpnWpQw7A/6JuyLpyFfenmKQNTA9yqdchTyGfQ/QktMf0vRG4BtCrdrw0O8VYt
	 MthsI8g1rviBVAC5lOUcfWHeyr7pzt4lbG9xIBEgd4ntTnbG6TIJvxi9Y9ZyndLA8n
	 BVMjBFId5gxHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C20EF48C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177095549360.6199.2136173902394092970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b454400fd09dd3f4ae232d8b83653753314ac16f3ed532247dfd5cd80222784
Date: Fri, 13 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770955493
