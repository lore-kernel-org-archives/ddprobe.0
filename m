Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEC0411F9E
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785273034; cv=none; b=YCJ0lsa2xtNSf7rZAnxfTDenZrreTZ783QSWPfeqtJ6t4R9sbjSNwSl3813Lv4a/xpN2v49aQNCvZsyQOYGY/H7AVh/2SJcyaAOvZTqO3GVIM5c3n+eIFB969BytmKLfZFYgb1G+ziPB+jNEffp8kN9TOOeTbaI+6uXIkkbCdK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785273034; c=relaxed/simple;
	bh=drW8qAjRuuTF7eMZfj7OjSKq5ckgXuLGP6ENL6Yb0aM=;
	h=To:Subject:From:Message-Id:Date; b=UiyGD2tqmlUszv++ui3cI/BM/jbzM5rW2eyegGWwhbks6RpQvHpJFhg0c7W2aNePND3KLp2ejRuX9/9qh1y1D1bfEJegA0MBDKCuP2Jtbt230Lnoc8GEOwB7likC9cjFT1eX+gajE4UfZPmBLIxElemn6mAcATK6DjPueS+GZ1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJO8rffo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJO8rffo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5FDC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785273033;
	bh=drW8qAjRuuTF7eMZfj7OjSKq5ckgXuLGP6ENL6Yb0aM=;
	h=To:Subject:From:Date:From;
	b=bJO8rffoKRz2pXHW1P3HDd7fCF/DDF+dEL2WUW5TpxG1/Saw6+UsLG1zAKj2U0hEZ
	 AOS30ONjoULrcEtXXMYVIaeHsCQHW7gbUUIbX0X3tQwci4ChRAJbgwnPOelr/fE3KX
	 qraur/4X9naTD/VCgK147EbmmdWB78IvKqPJxKadjZwQ5O5iw+S8yvHLRd8/O4tUz4
	 FuSJ1JUpReVL/iubAoah64tIsGm2FUnUJQJs5H98EuXzYaV1CaoXiRiC5rFWXq/hEj
	 VGXNl25qu/FHYf6owZmLezWAHe0uq7EIf6uLoUE0rAhr5E66k/jPjigAMycLe6e6uj
	 OJo68sfqK0ASQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C86C54F51
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178527303373.16846.18016851530732944948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88c6d71503ac0cb88d0f631b19f2a773eab5890a2537882ef39fd3e91bc6b0d
Date: Tue, 28 Jul 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785273033
