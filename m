Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C36525557
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762115394; cv=none; b=NdHKsn1dcy4WU2tRfkQ1wiyhhxCMCZfJzKbqPtfuduXqa5XME1aaK5obq/m7L59BnmHgoCrqchb5UHecvSEHWWQuc1quh3L+eHr1b+OeF4etO3wd/bvUchxpwaghTRIIwYOrQb4O0cO/cGSUNKZ87MOn556E77mXRZWwFq94gaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762115394; c=relaxed/simple;
	bh=ef4dEZb9dUo8pnSWH2dAWGUSaCT4DfJyIY23YPoWX9Y=;
	h=To:Subject:From:Message-Id:Date; b=jtlyKxOgzyjLt9gKI+u7eQVQEqa6TRsvRLXZ1gHAge+oMeDgMDlKvheeU5TsLGVjJWSVBBJY1CxaMBXISTma0pA19KNFJmX0+o0PuLuLQ1BSwJG77hA5Iwp0WMkkZO5tSmdqE99JGYG+iOlI9XvMcBJw11XwJy6m6ZVUm0fOaw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pixlb67e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pixlb67e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CC4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762115393;
	bh=ef4dEZb9dUo8pnSWH2dAWGUSaCT4DfJyIY23YPoWX9Y=;
	h=To:Subject:From:Date:From;
	b=pixlb67exIabpAuqima/FnawYU7+E2H+t1aaQkUgASw6Xs26vJZxr9pm3drr3FEuu
	 v5qL74rBJ6af/GsqIZcwFOKILCtBJYXYlvQ8CcfI9nfZaK7KGA3EDGQ/K9v3lBwk5g
	 GzP3xnTUOeB94foW2ju68PZ4XS/mim7ZxatvvdxOEi2GStzBzRjndoYBP7mkveUmis
	 XFishU6X7uJNGy66lwiNuxxPWtJ1O+DgddOIjJnu9zmYODBHAzAVGL45CjiIJ6k0Nd
	 B1XlyUJzhXuvlezwv6UCvb3j/lBf9gSUy3bhXkTsOGHpuGbVAazlQQGtvSSMJ1I8Ew
	 OTvHYFNOnAADw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D686CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176211539360.5011.1315431562524512175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35eb327830884a1e3fa5077cd07d3800080491d4823e2ce49b0d9496fa297961
Date: Sun, 02 Nov 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762115393
