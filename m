Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535432046BA
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765009974; cv=none; b=ah6wXNRHwqc2OfEcHR9yrC6NHKHH1K29ocphiNPqafQ5BXirxquHvBJHpIRwq9ERihgx6yISS7/u8K/F4DFJyva9St4v+mhPogLPQk8lXoJZNtJ1OdipOEQMHGUQ9YwB5ZPpui3hE1B+QW66WYUSThiTooWgBTYb4d9Pp3zy4Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765009974; c=relaxed/simple;
	bh=uk7/y1fIbdtSHIFIOx1VKWLiHsiWMEOaytQt496J+vE=;
	h=To:Subject:From:Message-Id:Date; b=J0oykJNsw70GSXn5UyZOG0RsZx/bVMZZcAtXPBJbdJljOZaaJ6MTijeRTU/JbcZnI15xp0kNj+uhBVdD1PiZ8RX20bvj/3dnb8Mpi8LmWR2qMyUc2aRfchtisqxlCBitkKYIpl0Z3W2O6Vmu1cKAsgYhvT0gIHQ4glmRVqxL2Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeZ3Lsy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeZ3Lsy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7858C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765009973;
	bh=uk7/y1fIbdtSHIFIOx1VKWLiHsiWMEOaytQt496J+vE=;
	h=To:Subject:From:Date:From;
	b=EeZ3Lsy5AZGRW2ZEThQiSnHvF2ty1Vtmxb0g1P3BFjnCQEtBKl5IeifBITLOFpYX4
	 XniUn0qoz6j+j+RRdn8pXE4n2kvVrXayIMVbP4DP0VmPOOtbIlV043JOWwOXvBVxyA
	 smNiq3uUYUbRUO5z17T5yzclCZfDtWL8oLkPWuXY4kX/HLEq2I1J4qdI1sXybCXKgB
	 IEJUNuTOzna0tfiwqM0ze0WHK0DjjIFKVOXrOfOUDRJKSHFDVcIFBcxZGELXZ40AMc
	 aQ4uOANz4XeD+XrdV6zNUVNDYf/yC/jnc0vFQ6nVSOKCpSdcFEZwftPZV76BkUZKi6
	 ATHtRm5R6oXhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9311ED3ABFA
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176500997358.5058.8319951487059051530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c6b7251d598867dd8b2f9f99fa393e75e022e59220acef39d1a06e707df6569
Date: Sat, 06 Dec 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765009973
