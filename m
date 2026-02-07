Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D5B4086A
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770491034; cv=none; b=Rqhtq5n/ASum5zfF419Di1LpLmob6NB4Oh8iUu3VK3buA4EGb1jJ4iycVU0Z6w+plJzDAKSORoofaDvu/QcbZL29CGT5HRVovzJWKgpjvmSu8pImlItlD59xB0YsAwcz6wSI85TE+3SOU3XS7h1N5N71wVCcWCcwL90lpiAnGZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770491034; c=relaxed/simple;
	bh=qUnFHWg4WFq++Z2/MBC0vYeUxTYwNy0jMHjEGVTbzQU=;
	h=To:Subject:From:Message-Id:Date; b=J+OOodE9Dz6lx5DHFQLf0VCemPZVZ+g+P7++j4wv1j/TnQHPXt7BVstkavp+m+EWIyCiY8HBPV4S/YFl7RBbqbdmhPz/7YMcXAazoLQHmSGsDFfLFVc4WauhnKt4Oo4IuHYjeQMCkWZgVjtm+Ly2sVYLAp52pPd66iK2yJ/isIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ek+iowqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ek+iowqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF259C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770491033;
	bh=qUnFHWg4WFq++Z2/MBC0vYeUxTYwNy0jMHjEGVTbzQU=;
	h=To:Subject:From:Date:From;
	b=Ek+iowqNBH8AiAHJzANBnqbUpF8jZNO2XFBYmmP58M1+Bf7gx0hVDaeC9TWQ6JmFE
	 pM1W2InFdZ7ELIiDDT/JeFCqSjlvTQnkPbe8fZBb8Nh/+rXd2EvTgLRSDh++Luz/5O
	 oxuXwGRcjWQVywK5+hQ/zMcqYxJrDSPvcGKxh4d1LleL+c2g370tzd1FhMyLSgrYu7
	 AKCEiW4+C0372P/jqx75CVjWFuHaMMZYy5bGL/uGIVjk/qGIwYbNjk6OV9z7vLdxY6
	 d9BhoK/cHmdjDFyVFNd7ttTsZVZ5FS7nVBIoXnFGnJsWRMIqSXiIlEAfriHKkGnfnn
	 2GVEssCx2PRow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5BAEE0AEE
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177049103360.2611.10399608227037822444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0dfa68a092595af86f720c0edb743853273290d0c49fc5530028accc1d3331
Date: Sat, 07 Feb 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770491033
