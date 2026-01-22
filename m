Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A85CB3D4124
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769120035; cv=none; b=RXHXoPUiKUR2jsI/4vEOLAPmL49rZH/XBMc3aUxZ/nvQjJtKHj5gRVOQ3lS9VaxoMrjqfmAtHpDYk0ZzuEKaYMydhIIURQXHmoW1TXdAnGlgJfRIHUv71pu9fIuMtqrjhxdi3HCii1Gy8SG37ITDm1nAjv2CGprDoeOyRCuhbyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769120035; c=relaxed/simple;
	bh=cHbVKwWYg2wzilbUHr4Y5xUpMjJRWXdJbW+GkLh6vOA=;
	h=To:Subject:From:Message-Id:Date; b=rLHrKtQCudt3UsUrjKZL1jWMHU1DiZ0mYMAbRKqfATKo77Z6KlM4SQawohPKYh8Dd9T4CbxuUXsq379ezYa3qV/90dTIWEgxLOmA0gqrYqtn0eLvTx3jI+bmMYZC8AkH+hfRA78G5VcVKFBEawsAsMHpBFUgheMFXPkfpAEf7dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kfk1PUYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kfk1PUYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23FAC19425
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769120033;
	bh=cHbVKwWYg2wzilbUHr4Y5xUpMjJRWXdJbW+GkLh6vOA=;
	h=To:Subject:From:Date:From;
	b=Kfk1PUYy1wRsOK+Oh63rJb8GFnQAiqbvMJwHTTrI6gtu0Mr0h+L9LZDwTRg0F3KNw
	 aWZDkF6G3BObAYBT647VZKfuMg1D7kPesLCwgzDjcYRCl/3wDiOrzRkw28yk2a1+0M
	 0FeCv2v5/xBItOgEMhe1CavK/5RgnkO/swfv+NhIkcAcC1ziguKSSHW4sckJuHsxEb
	 Y+QP6kne0EMAW0D3m/PNDy1TuxYumJY+Y29qsN2/powuIAQmbxm+5UV3DAemP0g+FY
	 M0zl4utVObXPhEG8lh6IZzT4e5kVTLzMIPMMOCPkuLLv3T9z1lgxkmb2cj/LSbDZ7a
	 akQ7FxNRSBpzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90675D6CFA6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176912003358.13244.14310007150088147937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61a96a8b0e1b3a8a1a5bd0e3f02947e1961e50ab7162434062239646109b8453
Date: Thu, 22 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769120033
