Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5D4326939
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763135393; cv=none; b=DWORCzr2a0Ar2uTibRfgAuuLgheHD/bhBJSXjQcx1KxC7FVe/SIaMZJfd8x9raIZ0kCdDMClhrAvWwUmP3HQqZYR1qYiR/v7nGrrSQgKKzPJlDOd0T+18DKv9403epwWilwM8pysWpdPtSkvsfePYMgFJR8pr3l3MTNEO+/MSdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763135393; c=relaxed/simple;
	bh=ujNqjBZwjWv4QwBz2+JShZNtFTo8/D6/9wcKrVcz3ug=;
	h=To:Subject:From:Message-Id:Date; b=I8XRoWQUETyfiW2mkmOPQoFkyiVO+n92xTxNuqk9hDEan4IKf+PreLzgDBgqyLKG4vy9jROLnPDEJpbRqabzClzYPGdor+N5iL5tZ27yTsfS//PXXGPzL4jUUQw9jailV68CkE313q3y8QP86DyreDzLb5Odb4KVfZzi+fClqpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjfLJWQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjfLJWQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1A4C116D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763135393;
	bh=ujNqjBZwjWv4QwBz2+JShZNtFTo8/D6/9wcKrVcz3ug=;
	h=To:Subject:From:Date:From;
	b=QjfLJWQHh7yngJY9JSMAYI/Gkkl5ZlUlVXwnekKsqMoA2oDyJeHr2VFYwHm6kbx6J
	 Qzhg2pv64fid00grdKUEWUTS6gH7lwBZQhSZfXwSky4qlO8EZsnJYOXRzI9yJJDP/A
	 WSvPqkyq1hTYF2b1kK6nAczllOuEXz3K4vnWn7OZn5LTgBfynE9IYoBSkgEd4nrjmZ
	 Slv4yKFSWE98/Q+qwTy0sFqKmckVtbr2wg1f5dpUBnSNlwFcLkWMoblpc2WIvcBLrJ
	 ptI4VYH7azyLD+PLE4z7E1qc7/l8vKjWU82eL7FstnTzdF3ILsByU13a8xORfljrmd
	 gfiuDBOZ+r5Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEDACE8D49
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176313539358.8505.8304168163333106903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0cc2e89014162d4662dc5ffcbc766aacef57c02191ae5fd52d9cff3554a3da1
Date: Fri, 14 Nov 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763135393
