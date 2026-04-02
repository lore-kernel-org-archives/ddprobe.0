Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133F538AC91
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775144134; cv=none; b=PBNBASH7icKHzOqSo8i8rVBlazfc2Zvb39QoZM1aIU2gGJ8hvr2VmH7P8brC3sX5wI0U2+7c7VfPJ4NRBvcysmXdTcW4XaP3kEPoToi5OJK17OOXemF2bQ/Ia20+r9+eJ/bnfoxtZ5ndvKR9YniBTJCS3Lpi8A2zsOolrak4Qa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775144134; c=relaxed/simple;
	bh=Tb39j6/28uMa4vcYMrPzFs0JoUYfy7VM5cRoCgIBUtw=;
	h=To:Subject:From:Message-Id:Date; b=rmOZW3pdV9DnQ1EVTLbm2iNR1GU7H30ntPlB6aSBemkhn7Bj0d9ViCwx9NChqWqvOVBveTfM5Qvhjj1noofJlspYasCKJT4Sl8jZqq47oji9Xm5envOP9goAqSgnqLYVCixh5T38vFTYcuFLtZeXynK7f9V7hApGqBMWqsm4B4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsmTKMAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsmTKMAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB99C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775144133;
	bh=Tb39j6/28uMa4vcYMrPzFs0JoUYfy7VM5cRoCgIBUtw=;
	h=To:Subject:From:Date:From;
	b=DsmTKMAdOIMYn/s8jP3+MREkczZC2Jl/gejKgjKbnaZISk6ef2amrGZbRPkCbXzVL
	 HaEjuyBBQWPG7HdDIx2gGsUNkIxkaykeXB/hjxEwUk8YW1QdBh/dI1RJfvKxGJOvaV
	 0svFMEwYhzr3d2LC2GH94ITon48ccWjHFrOKPkAKQOlCKIKc8ZWdDwYdRxVfGWHyte
	 jbhBe29CNhoJ8DsRSqic+xXQTqBRD8sD2JFrscg4/xaj19ynvWKFtVCa3GcDXiNw7n
	 vK5N4TGDtO5PjmzuaeKiP7H33ogMIkksSsXkraighObEXtUNeEMMXvNrHTluOSa8bu
	 7HhBzscah87CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC74D3943C
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177514413369.10356.11401192881677494005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c0bd4ccb0c73ddabc486dfbb9c83e84f01b154d051ae34af9c83a6fcf5f71d
Date: Thu, 02 Apr 2026 15:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775144133
