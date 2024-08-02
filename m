Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D4A3D6A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722581154; cv=none; b=HEfXrDnWxthRbrSerfl4uVXlkmCQOwUzjqR/7+VJFzZyUd0otlUvEDLxaXHaXXMsAvo0OC+XJ1auR/5HcxuTe10D94C01K6F6MIQQjnWNbLDod3c98VijAGwyT5iPVMdRZitm6GfY6uc0yUTkraBaDv5bPaThM+2aIpROfFySug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722581154; c=relaxed/simple;
	bh=eM8kr9AXmSCqOtal3u1Y8bI916XKfxCluqTDXV+bhyc=;
	h=To:Subject:From:Message-Id:Date; b=MsYprTQO0d7pbuD7mFITXzKQXwk2p2GQ1I0ac1snKpgrXujuf7VPXwxxJ+mp+CFAXRN5QL60eHcEJjtvu9G2QdzzWkf+8HPxwOCT9w4nR53YLppDFSboKhnzxtc7R/kP+ybm0NYQiHhUfAArLefjRBaj6NKhE42tgNEVK72gN6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMDJBzLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMDJBzLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF4DC4AF09
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722581153;
	bh=eM8kr9AXmSCqOtal3u1Y8bI916XKfxCluqTDXV+bhyc=;
	h=To:Subject:From:Date:From;
	b=pMDJBzLt9y5Bb8qomfzXMuyxlqHJpfS4TE9doUvHIT6/qKIRs/P1T9Z1Sa6rqkoo9
	 FvD/iP+wjj+Bvi7NRjQiY4LXi909b+6og7RhWMOLSO7kBqv4ZxZ96o+BJrzGbXRDF2
	 TbTR2ENgVYFLtEVePcKn6UGXBmLcqYgWcbksx49yNE5Vl20gBkj5D0kmNY6nZwI4NJ
	 pdjRzRQ4yBOr5nWr4U4g37heZWuzENEH9KBQMpxBJnhqDhJh43xIHghySHFoAcwcJq
	 0C5LQcgYwz3xo2Be9zZr28OjS6hCHqi6jxZ5pMIHVkDTOZh3gVxv3pxymYh7j5aFF4
	 8bmilKBSNGLlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C20C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172258115361.27008.3118067045678358687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb85d8c398c3d87bff476b0be10345e4a2820b9d91230d1bc5736f273c324144
Date: Fri, 02 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722581153
