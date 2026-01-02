Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201E6223DFF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767375234; cv=none; b=BiFDdnncxYkWdBSv37casDeUh4VjSVGUj6xyXx+7agrVcrk8fRcNTWBlAUPjkksXEE0hVe8BRPWiU60F3y90rbKaxKFhHgCCaCpMAf9Yjyhjiuxlxe8uqNd1DukzTutcfzQMA8mHt5AmWvFsvQtTkNSVgEm75g9v5WmDl9EHQ2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767375234; c=relaxed/simple;
	bh=DAeZf2wnwzISbYpvANdgW8Iv5krF3OSSF5r4zyd8ST8=;
	h=To:Subject:From:Message-Id:Date; b=QNXcKSNyGLGvh4x87czjTyDZET6g3h0mT+8pTDgl1v7ZfS8ShsvkFCgivygULCihNLoYHACCbXXjsoaZdji7XkDyhDE4u9owtS32+TCcs6fqWJy5kE63478Elcm8z7qAafesukJxsfjXvQrImfHgZFTARuPAMAcfIIgxtAzTD+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3IaBa2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3IaBa2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F69C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767375233;
	bh=DAeZf2wnwzISbYpvANdgW8Iv5krF3OSSF5r4zyd8ST8=;
	h=To:Subject:From:Date:From;
	b=f3IaBa2nPtCNsIan8peTSqjjgwCtpkF2JKl9xhS+pR2vzZVI5a99JA92GZki28+Ss
	 u8N9W6IYCSCZ1kZRuuEFfkSitDMAK/mPrGbZvoW8F6UTm0bqSb4AZnrCrqBj2pVgxR
	 y4x1GT22c3SDdfrld72urcjj1SQQUvB7wirgR93SxoK6lMZ6EQZAYCnCFh7Q3y2LgN
	 xoeM44uluByfxhF1jcpZ78z5VqomML+bKn7tsBFkSAVqHF3iHHAA9oBABtQ+Mv22Gs
	 dsHUYJ2zAI/L+kUeN4uELebaifkysRxolr+GetQ7vhCuQeaeA5MF/aCmLZ5kEoVCeL
	 5rSTrJsAu5ONA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EECEED628
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176737523358.3778.14831154020322661266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43129bbbf4533e28dbdb9a0d29d807d25ff9a7a2cf05d3e8aa1b6a0ad155f8a9
Date: Fri, 02 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767375233
