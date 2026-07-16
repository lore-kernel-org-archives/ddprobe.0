Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A84536920C
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784185714; cv=none; b=hW6GYjQcyjNtvGDjDVZxTqi9CePNkyaBkQ7iGFQw+aM9p0oBBR6coLsQum/MY516c65SRyfBSlU/3s6YUzxzrmRYQn7NQNVtUdenH+IA4dzdeKtxFigl4FLi5OD++jMvR/ZBtf5A+VkD8N9xfw00p93jBPrxMxTN7cey0FgN3Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784185714; c=relaxed/simple;
	bh=J82fMuveRN7ghrnlEggP8Qad1HbjeFwAW8q8lAAimlc=;
	h=To:Subject:From:Message-Id:Date; b=LF3bnWqLQw3r+PoY1lWki7v+nXiqgSf2Ni5GAL25lGcpaFzbYV+XynEwctjtZmhCRymbyBrUU8L97mLcPgnOw34GJCefhhAFrFRrrCms+z54L91NlylyEnZHcd2gbDKThP+qFXNrq/qe+mlpKt18wJid3Mj74eDggiqHt5k5DlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7HKDcRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7HKDcRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2011C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784185713;
	bh=J82fMuveRN7ghrnlEggP8Qad1HbjeFwAW8q8lAAimlc=;
	h=To:Subject:From:Date:From;
	b=F7HKDcRQ0kU17HIsR+v9ziOWzuwJJfVxyXMOtJkjkJXah/0Fh9K0rjjkogCWO60Wr
	 OMZBHX2AviuLiPXAk2EoHsvp3o+cvL3PvuUr/+x9aKieLfoiGQHc6To938qtiKDG1R
	 licdwmL4WzqFrIiwpIIpM0RlViGWeU6obqhKNQqDqADNXo0eyqqYMKPoH6eTBwZN1E
	 deMsii0YzWWPJ0ddmOSjQ5YQTl4WGFl5Vgfjl/T8L6QJzQL0793DkMkpckGB8tt88I
	 fZKAnKDjdXxfRmHKQGb2GA1AxYTrfi7X7WnJM6SrC3oHcldJjkXqv9UN0hhjVC6jXc
	 gfyd6jVdM3Ltg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCE6C44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178418571368.12229.10683636694394167263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1129a13cf9e14ff64e0aac8b6ed96e202b098a822542900d7fbac7453477b7e
Date: Thu, 16 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784185713
