Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B602475E3
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789363234; cv=none; b=dcPfeUZHY8LvoprEMkyoc8VD3wZoB2olag9ZLWniaZvfLMkiEDoEZkVwL0f4ci7d+Y7kUppVQ2+kJlqLJ5ShyJouaidnYCjbubem5hn4diTua5zA8zzujgsSYZoioQclfLcgV71NByKM3NBf7aVDeabpF7CQ/vx2APSecVOZNJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789363234; c=relaxed/simple;
	bh=1fF9xFsR2GSJYW1aQcmHDyNBSKWpQSHtjBFSdd7f6Ro=;
	h=To:Subject:From:Message-Id:Date; b=OKonyR3cGS3bO2PnVbaa7Jkrypb0mwD9/j69kW6lVHtlfqGrcqsT+6sMO1QJFe10WlBf76RpOpeR/gUMV3dLToiN1M/Zy0/18xkr8U6jhvmtq54pxmOiNztWW/ukgZaFrD9bGmW+41IOXew14/3+x4em3x7FXzPFKxM7vacdqb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1HOQOUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1HOQOUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A4FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789363233;
	bh=1fF9xFsR2GSJYW1aQcmHDyNBSKWpQSHtjBFSdd7f6Ro=;
	h=To:Subject:From:Date:From;
	b=C1HOQOUcxlXVywUkT/oCF3BfuiaC79TAxujwDA4eluPzWCfPSJRc/6OhZlc/nBXxY
	 g7AAnQ1WEIpFD3TDiVRrdylBtUxowor0n+d6wZGQyfY5Cf5RGXCoJ71MvxItSwC/cP
	 NJ4WUt9FWhR0gxnkNPXDMZHDAJAoVNHlc9QypdKD8H0q3GTnjB9yYlZobHC1pNOEi+
	 9g6l4W2ZGgbK6KWdR1vQP64/XFDJ4MOs5AtStU9mrDLtG1rRCMUW7I8kEkJDWA+rhA
	 aiYkQoeXOoNTUN4BkMAJ3v5vprTMyj1oBHtUbC2PdKoFQjknZs10Qu/Jyz+6MDXESL
	 sdeEbnTOwnOqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC9FC88E6A
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178936323369.25783.15956241882506712021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e6ff6dbf8a58dffbbe88d7399a7d3723cbdc8690ff68d8c936dd576d8261fc
Date: Mon, 14 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789363233
