Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C834352003
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781024734; cv=none; b=G0qd0kwmrVgAFmDRu0bCtJRgHNr50dDvoECAYakWoeMpuyXY4iCT0KJcsm3wXsZg4t2atssBxLNgCOvUUg0Q2pIT6nVfNgJDFXvlv7lfBSN2om+jDS14AtiqiBgdxS/92Ftd6SRKzooeM7FLSMI08tjkXKLN0R9otVS72mlLnTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781024734; c=relaxed/simple;
	bh=4GZIU5cPdHPjVL1e1xLBHFU0TPpKpMz5MGXQZ3cG2Wg=;
	h=To:Subject:From:Message-Id:Date; b=XR63jt/JtQJzT9iH1aMWXMP0ht7d81vZu0cSrLvQP+1RWCIcMNNVOqL1NVc9DGocsdw/izpQiJb+S6P89anAugrlXcH1PI230iYlhpC28yL5K17wgZuLHa0Nnbkuofco7EUTuwEUokpkeBn3mzUNBu4NHXKPD0JbjSFpLoWo6zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyrxbNhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyrxbNhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09D21C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781024734;
	bh=4GZIU5cPdHPjVL1e1xLBHFU0TPpKpMz5MGXQZ3cG2Wg=;
	h=To:Subject:From:Date:From;
	b=NyrxbNhlwHOImHyyKmCnzYliFzBa5jbkaTHvc77o64Y0OJFmKyhKfkrYElOi7iKf8
	 USqYKroUA1BfaIvhLAjCkpiW23oXGYVzZptHlX8tcKV8hSY0MKguMPxzcRBLWtBbAw
	 JnDF9bcx2m4H8BijgU+AKARjDEzs0gyvcgUl4WdyZX1+lSqfkpUJOaT/8HPxxXNPwP
	 Y+fHOLcy6tR52lFveMFs07PFylVnxlWlcf02Y3OvbZwAJPlkOhkGSaayONJEYPHjqx
	 YIlFZ5IzldwoX4PpUkspMzh/h4NVAjvUPQ94ze9WbmfWfFDNe8P/q1AJkbvtYZHd/k
	 FNeTbdd4hfJRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D441FCD8CB2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178102473384.11264.12758343083621594807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddba8f099d1a0ca438b963a2c20fb21f2c7d9771479699cb3f8541fa12188339
Date: Tue, 09 Jun 2026 17:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781024733
