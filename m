Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6555C27AC57
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787798434; cv=none; b=BZTR5e5hdjlyBy44C3cctslU7H9gHnOETWsNNoKku3tQG9mUFv2F1tPnmMhFWtgD1I0vTUfNaIMMfoRNGG1vg4FU66U6bApE2xfbJG53Hd5vlJuZwFzNBvOYSsNxrbQ0qFwcr39dByHj/f+9OKUyJOLcXzJXMN+ZSW8J5L2uuCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787798434; c=relaxed/simple;
	bh=DQaXnNuh/lcEDmL+Yv+W+jkSc9Ch/Ew1yOtd/C/tzcA=;
	h=To:Subject:From:Message-Id:Date; b=EEdY5dzVYVYuIXl85gULCfu7EVg1gJQGd8aTIKr9s2hNiyyY9CK8t7FChRnxQc9G9r2pmA6onLQpOF0MFCf1RTgYRYfuKOMEqaAuYEKZGqFldxp2NkLjsxbxycZeXUCKUPi7JsT4AAui0TLmzycBb6ZEz25zbTrMfEoX2KKbizs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZ356osN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZ356osN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAEBC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787798433;
	bh=DQaXnNuh/lcEDmL+Yv+W+jkSc9Ch/Ew1yOtd/C/tzcA=;
	h=To:Subject:From:Date:From;
	b=sZ356osNIWIn9UcfLfhv1cAcoVyAvXV0LfGOqte299votMkhUSKM9fjv261F04yYZ
	 eNOuV/fnTwz1RwhB0QfKYV0/c/zag+OYN/M8Lxzmp+hjyvZjKRm0xnx02kGhSIr7bu
	 gnOmav0M0t5AqGTvaYdnT+ZJhFCf5CSQoi6BSJR4h2ggAZpivRBp6FIveyVw8DZkl9
	 ffOxu2nWrv1vGAi4yf3Sxf2G7jORadTlwkuSPCEkWO1HvQEkizy05h91MedMoeiIbe
	 4PWMysBsI/1vPyfklDCzu/0IsTcOCRGXhhNyXfNR49M8SgkPMTcCMas1Nli1+tX0b3
	 rggL30mLA2ocA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BBCC61DBD
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178779843373.24484.10653328441359178253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168a0d806c2e224893a53733ee4963a8c9892e86abde95270dfb2b0fc055734b
Date: Thu, 27 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787798433
