Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F13023D7CF
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755289794; cv=none; b=jD1bZqcqX2FjjX86x31QnXYZ9CJMDq7b2w75ZXCHkLDq9ITxxKlUUH5mDr8HXVqDe2rFhPm+ys6sD5N9bX+6KuJ8gEg1uVAazweVqF1vIWSwSN4wZt/1P+ZQC2uRr7yvvY08zHGC6lZs454S1TQpCEj3dPi1q0nTCWFdt0Hru90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755289794; c=relaxed/simple;
	bh=aP3Qjz2qdVDue/Qy7Mm7MdHHnmn2xLjUOy+DFbC3iv0=;
	h=To:Subject:From:Message-Id:Date; b=l9MCDCIiWEEi///vzuW5ULr1J+d/lgwSRYoVYyf3k6WSP+wu3LVGLZrN2ckXhSlfr8kdgqb2nJ/gKSjE0lsINHaFbqvyc1Vyi+DPRQ8G2WM1gcg4Px9p+FBIlxNS5Px3k2GrguDHzEFcpOOHSS+vRm+hutD0B35MwR4jSj29NIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2fwABe0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2fwABe0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A96C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755289793;
	bh=aP3Qjz2qdVDue/Qy7Mm7MdHHnmn2xLjUOy+DFbC3iv0=;
	h=To:Subject:From:Date:From;
	b=h2fwABe0kFyXFaN0hSCH1Uih2VSJJfLYt6cCoOH+uJYwOpvr9hwUwS70K5zjU6jEL
	 4083+mabge6ZjkMHwA25a5hilG4zFeHBj4x0C0Bd8QUqzcIX6iauXHwazDTdD0Pl0Y
	 J4AJYo/j7tCCoEIxGROsEBCIloZDRenPEhn+vn/8+pfY1V2fK2hdkGsyu3t9lQg8Bc
	 93vk9AtBX3vagZT0ds/rxizr+kfVjg7f4UFbcgC9egE3AFBF2AC/oEs+oC8vNYQ1pj
	 XBvS9IXiezuCInAb+cNbNo43z1PTVFMP+KWNxG82jj3gywjOFvyfozHvUZIGG73qL1
	 p7jpS2erKKTlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC8ACA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175528979357.23598.9020546326259244454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4b52a3acfb41531d455203dd036274ab17f58e9958979be5e9053cdede6ef9
Date: Fri, 15 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755289793
