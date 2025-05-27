Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0AF1D63C0
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748347794; cv=none; b=sj2ExmiOCmswYT4lWRHCq02mzt/ls+6mXxDd5cgEKdFGvBA0KyvUu2gA6e2y62DY3RRVUdNB47qLinrN657ab0rpGcymT3bDB6h1oT7a/owFRuugV4mmOylN7U8+tfB9SM/jfz9WbSihOjbP/x5SwTS6tykfkMdQ0HJvcfmTMnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748347794; c=relaxed/simple;
	bh=BP5+HMk2wJAwDJYPzmSGKQp38nkciMMSw7almxFR43Q=;
	h=To:Subject:From:Message-Id:Date; b=VMshjDqbua43Vy13JCO1H4cMNWSVeVXk/0A6f3MDbjkBBxbV9hRp9TK7MxY1bG9D2glwg/YKcmBdxwdaKqPowmh59G8HYWORoUWRzw30raSDFXnbbmykdfAwgAcl5JjEZnxAFDW6L6P2pBBpcaknON0jqdv/wInW3wuzX2wxN24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hlya3dbd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hlya3dbd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E54AC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748347793;
	bh=BP5+HMk2wJAwDJYPzmSGKQp38nkciMMSw7almxFR43Q=;
	h=To:Subject:From:Date:From;
	b=Hlya3dbdAFAJj16Fyq81Ccst64wu2gE2tq8Ysb0qAg2b6cgueQQ6T4RMUM4u2D+c6
	 XhDtxqZ+84HlW5hWckjW+s/q3qwJAX/UhJTkn0CThO7MuIcwfaV70GJrGNAzwmRiVx
	 yAzFrQfUyuf8jSoXyzUF46NtY/YQaMqc8xlbJjkUzyeRz3gBnzJ2buUZlUCQI5B1IW
	 yHRJ7vBLwcGeBfRWfrnkO9GZYXooY2TFDfQSy8j9Zxb/PCIFTaYG+1oiiFXQAhQvPV
	 e4mLxKZXUe7+dl6puLU8QGn9q8MTnWf6y0iZFvWx1rHbftBYKs/ey3exzL6vf6eWJ4
	 EiMXrDeEejwow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2ABC54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174834779357.20932.16377309578851241093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc5e48022e61c28cb930a518cd28cb1501416bce084d0f5fdf9750c8ab9273d3
Date: Tue, 27 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748347793
