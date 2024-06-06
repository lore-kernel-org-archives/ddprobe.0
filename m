Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9003BBCC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717703243; cv=none; b=pTTyAtWgmZGaRJc0kYCPqA+CTcHZwpLZpGX5ytzNl1BD+2O8CfdmnY0IUojkOTHK/344TUxYvuXqidCqZMHutfL0q0DXyKIccQaa6n2l/4EwLCVTj8Q2864krXINDqcgYB52s+zIQXeR9DUn/G3RhfhLT2Mc8iEWlnJAbAqGYFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717703243; c=relaxed/simple;
	bh=I/pnVcsRR6cstlPeKVNn5nGFrRD82wh53nOnsKSqe+0=;
	h=To:Subject:From:Message-Id:Date; b=CIRcjF3OJjyrZyiT7grbyaUNO2clFelkHJJR7O7sItBB61Gp+W0Nm/8bzHJqvY91+wRoo4XsNK0OHpdv9dpEh5vDgAcoHGKjQ5noSjgKIXWykTQO/i91Sk/E0H54g6Du3NJhDwb94Tti5YoAvn48aQNPRDi3dEg1WtZaUN2/lZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xi+B5kM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xi+B5kM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E387BC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717703242;
	bh=I/pnVcsRR6cstlPeKVNn5nGFrRD82wh53nOnsKSqe+0=;
	h=To:Subject:From:Date:From;
	b=Xi+B5kM+InQ/QF4RvFPyzgjH/qAr/XUJCcE7jpzKsLz4Az2f3FoO3qpRCvvJk1keo
	 4FaoGms2lKUVnCLtLN18BT+VBCy2cvyzMvnqpveSFRIfSO8ifiujLRLZ6e7YFAV78n
	 XhKWnTrLD8tGt9NdK9PtlVVmQKPjB4G1rplaI42ripoGEhodEpTG26q3i2oDhKuH6a
	 ec0uS3G4tHD4avGJmML1fi43qm0JX3pWMbYhr/Vh9fDf7WUkBxoC3BGh1nr0FgoI2G
	 QTwde7y2YS22+GnY7HJ3lobwI594tbBVP70HK8PpnAi95Xf7Ux9KFJZ3mNzByjWJzf
	 01n6maEUpxKJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0FA3C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171770324284.16407.14653853014039422595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 161165f5fa84758c85eb63e58564835e906a56425445bac6359ee10a56c68d45
Date: Thu, 06 Jun 2024 19:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717703242
