Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456AB136331
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728126354; cv=none; b=VOoh693ezidZo3pQvOUynS18KtuCH0qQEkuXMSfPbLOi+FV1L20zpkLqPuOaBw6o0PB1xpBSVHTWH3MXcDuMSrZHQuzMTkz33PZdloQcK5MzHOFrj37f31F/2sqq6YUtBOVn3xbDTVKw6OJMDKP3gzs6PzZXsauZPrWLHlCr4kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728126354; c=relaxed/simple;
	bh=2pANcrSrcFgEIRBxSnkOk2K7scP/K57sADP9foBnUYA=;
	h=To:Subject:From:Message-Id:Date; b=McEIALzM7hbgEg46XzujLn87Xji6g6V4b2++cup6AgObo/bftzS6rZt0PEEktoNdlhE+xTf/3FOm8UYLoifMA26HuUBsjsACrJBiVq9xfMBPpjg/TQ4qeEcxJCIAkKI9ysAP7niN+BhLmT8aFQceKHPcEOX3LMf3YoZ1UW8mfQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uofEmvqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uofEmvqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F29C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728126353;
	bh=2pANcrSrcFgEIRBxSnkOk2K7scP/K57sADP9foBnUYA=;
	h=To:Subject:From:Date:From;
	b=uofEmvqP+TMVfGnvhQVYzOYFkTqSP3cqXq6P3bolHvCJFWElDZ+p5mQw3JYkHIihr
	 x8DC4msc12Y4hqfj7CEKl24fe+EK9ZrwdCV7UAayoqKSF8HYx5eGd42intZ4HNjNaf
	 6IHAo1Ak/+anTTO2MBk4G+4AGtzXgDw8/lhxkdLL6BAwOSgEbYMh/AkMCodOrainBE
	 kjecX0mCkV3T+GKK0PP0L7VKpjpeuKcup/XNbSuhIOJxnEMZLI571T9vhXE+Dv8FJn
	 Wul+wbGkthVDVtqZECG4fYE4y4h7g6XUmAs9Npsaj+2xLVs5/oRfQ5Tg7LYRa/bYBN
	 FOM2e79m6xpXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C470CF8862
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172812635361.8423.10766305957377895749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90128b12fa4e71e1c8b7fb965a288948f00c0675f91d2b075ed1ab6036c9d2e8
Date: Sat, 05 Oct 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728126353
