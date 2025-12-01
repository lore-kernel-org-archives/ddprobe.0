Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346B53009E7
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764583374; cv=none; b=bZoWKihQCPPvH69Zcdub9rYVeXlxNkjEiJjQlwF5NKQ+gtahBMbNVWOHA9rC6jAEJNb/4CrsIhGH7mGllbqblqvwnhh9ZaWPpOCqCed3twgadwz0fGmFTZBvMEUQyR6Ejn1ozYXnlBSAyViv3UnLYoCAs+z66lnSQCAjJ7rDWa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764583374; c=relaxed/simple;
	bh=tSFELFHrTnixEZRqe8xT7VBSNdjmN5RwSaVv32ApgEE=;
	h=To:Subject:From:Message-Id:Date; b=YZxR7XGj28wAJ5dPOkhvXD95sGNI6odbJWXbwYfT5hu3d29tisJo5JAUvkvbMjkLZX6E2QXJGfw5OCWs+2fyLZxIxFYr2ij4mWevqOKkmsACP1oQDel/EOQ0Dr6bPHogAEQhhx7NliPznC0kLpsnu5bH+xQ0vwLHFz4QH5F2mMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUW6q483; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUW6q483"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD259C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764583373;
	bh=tSFELFHrTnixEZRqe8xT7VBSNdjmN5RwSaVv32ApgEE=;
	h=To:Subject:From:Date:From;
	b=kUW6q483GNeBV5QRlNkZUc3/aMrewQNYHLfpQolhVNNoKHYZFHhkW0zSv1nVHlnzK
	 l3Df0KfwmLVn0TFvgRKwKHxpRcZt2SnR9wF9OoWyuJ5JTxa0b5iSxFsVC8+sYZlT9A
	 sdHwUqDgeEQHEfL7vodsehKQH0ncuBtFiJaK8y2qKRiDX2sLcP+NmCUlgvBHuSA/he
	 A/92ei7ZEcIYkuPKZykyZiyIYY+Y6dJBsne1guUmTfj79OJk8YkD7jkGMYJDvCEbpK
	 KT/8PoQ8RkTmFnGC+EcQpKJkL0m/DDICPMgnFuIQZchfZ6DVeIYuRAZA/YmQl1267c
	 +LeP5HLMZT/Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A58D111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176458337359.29324.15232422281677612266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020d0bfccf52d6196c1a74b94f13a4220bdd9ccf0d05214b311fcdabb28061da
Date: Mon, 01 Dec 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764583373
