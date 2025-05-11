Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3169143169
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747000795; cv=none; b=S70+yA1yUnjgiCaijHd1Ehoq6/MEAmWm2h1DPNryqzSYx9TNOO/IIuvt+TJd/HAaEfZDUHztLhzDWFbC64194zAKDVXm+Aw1QphuiqSThxKcFOprwoDOmayIFMxenZO3+QChC9NylTQpJ2RRYXESFYMwDemu/87RbMYvjEp9b4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747000795; c=relaxed/simple;
	bh=4k32Np9qjDbNUsYvy6CAetV/nFRyjgItE4+H/fzuslk=;
	h=To:Subject:From:Message-Id:Date; b=E3Kz6vFRQCLd/+00FoHd9Z6ghOXxUcyMAeFnTo/G2plPpHKX1TZXqAy/CHsOvmU9H3VQo6jZSOf9pusWQPmQy4oJ3+12BS2jIKKYZUW1rkYIu64EXxM+U/cCwJ+fjMJoDLdoF+giIXCcweHy9cCTEgcIb/1gHKS5WnIv3UKjuI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRbf8bML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRbf8bML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F88C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747000793;
	bh=4k32Np9qjDbNUsYvy6CAetV/nFRyjgItE4+H/fzuslk=;
	h=To:Subject:From:Date:From;
	b=JRbf8bML803roSQWO9GdDQ+cNCH3Q0s1Rzljyn7NoThtoxJIzyGpGi+dWu6P4s4lG
	 nggbi9XT6TfTccBAdXMGw/0bwjaEH92Sm8jk+zQv5gZZ2lrXz6LrqgYWk7OQ/Opry+
	 AklEtzc9mATyo+1WuTsPYP76mmqDL9/m8LWJzF6sIOP6IuK9M/tWWAnLSminJafLx8
	 /mi+GcLnzm+X5/0SBGdgC7zP6xhQfcajlABqhqVvVHpqs/rmb6fp0NEruORQiVlbDS
	 WmmTc+hm/KxMMAC+Xf8zt0mBuk8kQ3FAd7im4fg7pjmpz6Rnql1YsAnWtuWcg5BnOO
	 bKyeP5RFS+GiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB67C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174700079357.16838.15346891299907890920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e5b6be9b630340e13c63879ede523a1f7b3eff1617c6cfcc03a478f5aa2f1b9
Date: Sun, 11 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747000793
