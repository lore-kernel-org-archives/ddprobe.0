Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE371B808
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766207034; cv=none; b=WDBr6VoUspyk2tYzOX7v3urnWPvef1IgtK4XvuElLe28u39TaCjRxVDllbT04/+5iXnkC7w7oqloVu+vJveBJ8XC6nrIXy+y30zT43TG5VgYa6HaJ/iaHncfmFGsYQU3kqtmLjzEZeqxJgcX3Jc3xB9PtZmoLxYER0Mbodduuas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766207034; c=relaxed/simple;
	bh=v1btQoIHOf+AtA1BG249wIrIql23raAgYLfqCWx9iSE=;
	h=To:Subject:From:Message-Id:Date; b=Jwel1PuCKTSWne+ROrcYTMbkFPFnvUbVCwob+kS7CRueVH2WRIoinCSJ6ULKQX4CxyF5ZKvZM5ocXCoyMojQUAqZ8ISweLmugt3HXRrvMOWeL61/DGOPIbeyZsH6oZl0S21jNIUZ6oZXmgPa5tgsr/rhAnFWBnkrFXOJ2A7zRcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxWQPbnk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxWQPbnk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CF3C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766207033;
	bh=v1btQoIHOf+AtA1BG249wIrIql23raAgYLfqCWx9iSE=;
	h=To:Subject:From:Date:From;
	b=DxWQPbnkVXOnWlLm2RqGDAee0QiMkThCVuOkzoM/TWMP83eu4qYiMN1IsfVAfMn9w
	 ky3RWFmpzGCMdaIaHbuf2/RMb7G5QmhQHjxjmJlL3Gd0I7oTOJdoQDXmMHgMAcpALF
	 jXA3Z/WILrhHbkIRrF8/ZEOUlyQvx0RdNfL5/LErbu/8oACR77LjeUSsJlXUKvldyx
	 8p/A0DjHYPkfV5Ui4c1XQ/rTgh9k9XfC4iJbKpkPKsiu5EK35iQ39Qt3imqAVTj5v6
	 Pstzk3gVGSmdwPBJaELCZQrox+Xj/xg6BeEyXgH6cIN8VoGoCunYpeJozhE8mL6zZA
	 NPdxAm9VYSZIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D4AE668AF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176620703359.26334.17769000535842023606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c861f6a15b39f9392cdc1d210069f3e8b9fd9eb8df7a643f15a8788108943c4e
Date: Sat, 20 Dec 2025 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766207033
