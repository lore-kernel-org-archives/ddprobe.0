Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC1E1EA74
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720525583; cv=none; b=MhBLX/zQRy3DnJcSoAorzcFQOezSB/K/0MdXqYxbP9ZXy/pxnDkVYK7kOCpnfZalaVAKDB/KUx4VABHUsvTAniPz9qNQOk7d9Y5IVhseAtxcbe5pVeaDMYAGTwEqF6qf3ay4RXIr5LoURBMhc77/EZgQzZTkUwgN8mDxL2SmMUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720525583; c=relaxed/simple;
	bh=Z2D5fkiaNHlrXGhkpnWqYpWSHDeG4pStJ24CrXIHT6s=;
	h=To:Subject:From:Message-Id:Date; b=EPx3NXqIrxi7sxMwPIAi8mcE294V9elED2H2n3d6r5GtPOFqLysaJqMsCE+y8d9y0uqhPJzPANZiPP3cz4v58RP3a0bwTRIc68dD8ZgrJ8WbKfdRgRJ+ZgOrxKyuyFqSlGUamTyqQvtgLXGmqMpjsKhYjpO6YG6jnczPcJUqWdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAWanCa5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAWanCa5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17F9C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720525582;
	bh=Z2D5fkiaNHlrXGhkpnWqYpWSHDeG4pStJ24CrXIHT6s=;
	h=To:Subject:From:Date:From;
	b=QAWanCa5dZnaYgubNKHDdqfyGuzFUAmRIb/BaL0EsFddchxSIJPDBA6svosZ51Yn0
	 pIyj3mpHB3QMLhVdGMNwWW2EfDf1vNswVL4zJ2Y7A2uJxcKLkIeX3+NfQJcEh1Peed
	 fXND44GP+VmpwvejIfaRIubiBEdT7zKQwE9ZrTPS0Hv4pXv0QyHVe+yMVkwyl+hIy6
	 B7NEJxDqDr8zAmnA0Ia5TOdEcMDTEGgMnsK/xpnhGYNkraxcsAR9EAo3f0msCPzP4b
	 sJGm0ZOQESkGfxnuFZ4d+vc/YSDbEBflO6mcMANMK7cI2U7i7Wx5Qm5vyZ0WaP6eoS
	 8GePy5N6a/Miw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD8EC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172052558276.25538.16782137146694621967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0bed2120bd962ae50394e056f0385618bd6fb745d45d7bb965f67a637bd6117
Date: Tue, 09 Jul 2024 11:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720525582
