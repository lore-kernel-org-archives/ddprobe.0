Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339DE481CD
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748762394; cv=none; b=gxjI0PwwVcOMIykjC1lRNYtGBK92c8Gth+0F884D0HxsY7fj/2VJVQEjGlxM+gOhqoyQ6XNWm/jq+cZyoFiQlx+TwIeiH+kfsLvgJ4jz+cQapTL1zYAeMii249L3TRjO8eOe6w8N+NEphzRwu5iae1ZmmFt8bZlzRgpo9jBEU2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748762394; c=relaxed/simple;
	bh=CTZTH7MSytSFqjIetyMDNTJSp8YBh1PqS6iKjZmtxrg=;
	h=To:Subject:From:Message-Id:Date; b=EfcYLaGKo/5/rBuG1QxadHdo91M0TPW4PDi7dStNWdj3pTKdmtfOl5os0oIxg3gob9fvnwpG37a5XDTKAsVIKgxy0FJfIgndq4Dm88JdM02qIXvQAA59Sh5pyJLphGjpEN24CbsLEx2MofjXpyK0W16O/O1jlHsMZ5E9OYVmeOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfSmyN+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfSmyN+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CDEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748762393;
	bh=CTZTH7MSytSFqjIetyMDNTJSp8YBh1PqS6iKjZmtxrg=;
	h=To:Subject:From:Date:From;
	b=FfSmyN+gr7kVD5/eJMHSPZy1T8TT5GJ5/MYY/3zU1h6dBoviC+UryJRA15+aaQf3l
	 kj7BIzPUQEUogUMP4rddhQ5uwDPCnOtvbkr44Y6GNm7gAT/BRRW563JXYesJHll15b
	 jIYfSaKUPWLVFHdDL26fMBtafBhXfUJo+nSh+d3KWHn6ldugT8elmal4HspNysBP4x
	 fp/X4NP+RpJVsrnn+SznBsmuPKWiCx+Khcz8+HRzAGkQqfa4oGGDlAU5XV4aMQGclR
	 n45WrYK+fkoIfGr+RBqfq91VlNPluol6fXzkOd9Kcl3u4szrYLhm68cN/GC5Het3Jr
	 hmVg38vlDqpxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906EAC5B543
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174876239358.9272.9015558619852217681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a46f0459d59aab535964a41cefedcc958071ec3b093fb17ccbea050ee6ea7a9b
Date: Sun, 01 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748762393
