Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFEE2F50
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 15:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742225394; cv=none; b=oY4Fn/AhXr676l4ooPW/WOoJ+Nvj/Q0REbdWcW6PuuxyFMVQGQ03dWkOJLzMi/y2DRz3tXmisq+iVRhF8ykYg0CuMI5+ZpHSGjvo0vksna+Wglky4AFqhEtdbxp8aVVTHRs4+eoBlUchiRS3W0Ej2hlImWh8/Z4hpaONE0VHoYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742225394; c=relaxed/simple;
	bh=IvY3M3tAPGIwxS/wjUUZBvdjhTeqRIdkYsITl9inbLk=;
	h=To:Subject:From:Message-Id:Date; b=iiu7+mM7Tn0nn+xC6gPLmUT/okTKkwM0dCgJQ6AXTXefyq6+LkKOG3qxFf1L3twoMCwNy5erRbO4xgBZ/No4jcZRXkMPI3XAW9MH37rDRdXXRCcptv/h9znehjz4BjzXfxzEKtai86pVLOn0BnQTQn7BfPlseb5/xO+V3rEF2ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeRR8Ipi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeRR8Ipi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AD3C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742225393;
	bh=IvY3M3tAPGIwxS/wjUUZBvdjhTeqRIdkYsITl9inbLk=;
	h=To:Subject:From:Date:From;
	b=SeRR8IpiUank3DcJIag2mlHp80SozYA8IkWYttztNnHecycUiJvWaAYMEfgPLHGa3
	 8BLN/yYu5dFXxajTctc+Xwi/B6Kk4Wl0FZ9mD+EZh/fLpzXWreTaNTtkUmgWZabMHR
	 cAe5jz0Zv3Ul478Wwf+eM7zs+6tjmBJrCamB6DOWBia9PvNCqeAZvQlq0w9OGnv03v
	 TJ6RZSs96qpShj7mciVwXlZstdXn+lRscLTuzMP0tXxi1vWJ4P7CErp4AHAE4eI35c
	 AscSm0BAdMGaiNortBskGVkuHHxvbUhrughZok86rqYK6fI9HJCOZOXdt14jIpTV3G
	 yLwnQRg8VN78A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFADC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174222539368.17762.4641024570881554713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8a651b57d3cf910c89227fdb1028bc4bfd617a9a3fd35af0afc388fec13cad
Date: Mon, 17 Mar 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742225393
