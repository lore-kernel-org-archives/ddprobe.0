Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB463B2D0B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780484674; cv=none; b=hpS9E0i/dsZ0oMEZY31jo1g8D/BJVsbAjb4raebhf6oIbAnHFbaL/xTKCWztAx25lD9VmL++mMQE/jehmKm8W6B/GxIkXIJW+M0QJSeRvJnK2Yl/abjH72GWbXhnTH69maeqXSPD7XyD2bzJgmFF4ttS9iSbvhSLvsrFNQpdECw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780484674; c=relaxed/simple;
	bh=WtcgehwM76r/qJU14pUJc4P4ANcwHwtSXYOT/dtXfng=;
	h=To:Subject:From:Message-Id:Date; b=JauzhEaII5R7UHtJJnHWFtSaYVwBZDSAQNbbfzLrc/SaKSTpvhL4z2uDPFMZhUUGn7kVyS7YIcvfDmX/3hH083i/NFQFA13gx++mi5r/UzT5sCSqZ71IyjrVD+7I/yU0DWOsB2qliTDmPZJMXOWxE/CrIdDEfL3ZjAcAedQ7KgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckeHNIfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckeHNIfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E8AC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780484673;
	bh=WtcgehwM76r/qJU14pUJc4P4ANcwHwtSXYOT/dtXfng=;
	h=To:Subject:From:Date:From;
	b=ckeHNIfdheAJodw3C47VpevuC7iX7dkwJBZB4CULXeia/SjnTgBCQv0cRcdJUI2qN
	 9PDuNnsp239OsLcuCiLBISgB93WC0POjcrMg/asQzqomizJTTDi9NPopQ/3qstSUiB
	 s7G9hGgLAnfiEssOKMosB6BfKJcZQYg0P3FHRdA2NgV941nls6wHegjmrabjtLEvVx
	 09Mm/ho6ICRr56VLQ3MkrMcvy3FGTwdg97KsrX98jnvqewlRClN8uNLJq/NCksiZZQ
	 1sc5rhrP5ZSc+K+6mpJsZbMfS5HqApdH4LR/uBn0WtLbchnIf8CfvWlWP4PaDdMIJ2
	 zybTpaViWpOiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB47FCD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178048467369.30208.15963890931975132410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f384596191817cd889eb583effe8f9e6fb619d181a0585f031c681e7abca76
Date: Wed, 03 Jun 2026 11:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780484673
