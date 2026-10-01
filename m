Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E982385D9C
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790851835; cv=none; b=n4IHH+ZmWTSl8zCbOvHYTBG3FgzjspdXVGAKL+4goEasbSXtnzHDfd3zT/xHDBHrwuSR1o9378icqcEwAVDYgESLOV/LUZPdTaXoPiKVke0LYW0t0PJ3N51qZgfAU+TpZ5PlpVFp0jEEaZekgKEEemetbPvZGewZofsNtq/Vuqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790851835; c=relaxed/simple;
	bh=7XO370bahR28YFT7ZmdZY0aBtf+3b5DMtN/yCceu3Sg=;
	h=To:Subject:From:Message-Id:Date; b=jVnE52dTFNknCZnOeBmCUkEiPrcJILpmHx+3zxYMDoTNftX90EBepCIUgbmWSfqnG5PKx2Z8mUs4xzikh9UoFYoMshsmw7nf3gFVHwqEtc15Isipwztn8KnZxWnnOhXjnCwrwE5S8bgLDPE1VXRP55X/OI/iVWg5ad94DXNOBkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTIAZsJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTIAZsJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6651C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790851833;
	bh=7XO370bahR28YFT7ZmdZY0aBtf+3b5DMtN/yCceu3Sg=;
	h=To:Subject:From:Date:From;
	b=eTIAZsJwjPVlCXk/1UwwoCAbx268jfke1iZjuDEIcCxiTsY01HQIjFH0W7VkrjsPC
	 oujbiY39WknivQZbCskYuz9s8/IKaY1kda6p/trNEKMdGU6sdGj0yWcnjsid1W8k6n
	 ml95Iwv6bgUXWS2I/b9JL5gpqCj6BGHG0t7sSfrYN3Ui2xLxNAkitoM2t3eX9Vw/qC
	 41oHUauTNwYb+isDEIJwJYJZd/Tz9LXVwfpKzg6X8VVHLrj9ybae8bjGzcPDAE97h1
	 hlpFaJgQbS/zT5rjEz/SA5VHykJn/DZCWS47iSW1Kds094b02vK/CmozkyZ37mumko
	 QlPc/PLvXPvrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1271CA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179085183370.32203.12958583895425882200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb977e4d1b8e970e5920ab62d5ea02f2d475bd5f31f22b57f044773b474a4cc4
Date: Thu, 01 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790851833
