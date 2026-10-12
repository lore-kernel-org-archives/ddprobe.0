Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0E03D5657
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791846634; cv=none; b=TQLHYAU0cQtc94en4Yjgu4h+kfx48H8WaW+5oQaNgv/24vLeTalQnmg4DLf1dH5bvmMKWvAIKqJb1xAGusHzu+EAgcawGBvkiDV88vSojc72Wj/2mP5wYv/e2EKxYnYeHxPYPMHCs8lmwQChqzh2q46pzNloepJvuy1Vh+3ki1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791846634; c=relaxed/simple;
	bh=RU5MMJIWAEFyoZ2kfxa184Ca8Cqk60/23DnJRvEMkO0=;
	h=To:Subject:From:Message-Id:Date; b=A19WpVOz1eRI+H+i9DyDX4T7KTUtQa/VecWiz4JPL/XXDtSNhVxsHjF/3JXRirYqHUf74pH0R/bpaI7iKvSmAPFoU3iA0md1aEHIaiS3CEue2BzMMEz5OdYzeDnOgKu7Y/vMH2NTBxJ4AA0v2N1zor1QHrA1fPDm7xWD8Wb1w+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrAwLlUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrAwLlUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA9DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791846633;
	bh=RU5MMJIWAEFyoZ2kfxa184Ca8Cqk60/23DnJRvEMkO0=;
	h=To:Subject:From:Date:From;
	b=VrAwLlUSDBy4xoCTbDu1wetj++Wbb/BitHnOtj8hRs+rVa8iyy7pkhuDhArQ8uNvR
	 agnPV7VBdzJRGCVWbvWvM7rCXf+llQX7xmU4XF310VLjs/MwocCdiIt07FXk3NRfr/
	 FdU8LvULGzhpCVv4WrnR3khhn97VPSvLUkcj3K75jGElBV046CfnYkq2Ogqp0laYCt
	 ITWy+lkx9OSxowJuXFdQP6E7i+fELiS9T49NSBFF6LJuGOsNDcJsH1/PAbUsm7kdL5
	 viMJ6LtbQSjVSyoU6NXPGw9b7ABISMrDi4gz6Q7aBJ087SQURxwSxl0lKH/1SoU2Ze
	 YldWcCDUNcDsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB224CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179184663368.9370.6727774539852975569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 807add8a9abfc025d9ba00e6e74a58c3aebde92ac7c9aaa78704a4948588033d
Date: Mon, 12 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791846633
