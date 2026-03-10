Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19BA43C05F
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773134094; cv=none; b=l+n3G95zfpp1oJVar/51A/pEeJGhLPhoGEEcXINBeZhMRFQ0u6seFKsIPyLlQ6B8yD3eTAMupbtxJmVtIFBuqewWY9eDEWuzb2/GvdWRItteaG4OM0dynBSFWeb1qEo+sZKct9Q0FdUGB7fACy7xJTRRe95EEFqSl2PzZLHcWiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773134094; c=relaxed/simple;
	bh=j9w7kUPOMLt5byAYtLboHrA54pFb7ZX2GVmRlo4XmL8=;
	h=To:Subject:From:Message-Id:Date; b=QjEzgzQl/qioCS+rUvyZC21pQt50a8tSHoRnKhn1Uez5JPmVUiXJvRlnvW9JAGGel0wpUkZVMhFCpYHIan6+LJ+mj+mlgI/p7yvrg4WrJ+l+4c15s1cBfgHxuSRM4rx1h2qDehhvCBZ1H/Dmm3oI/PPFZqbI6qXT52Rig83Xdm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htrp1SKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htrp1SKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6CBC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773134093;
	bh=j9w7kUPOMLt5byAYtLboHrA54pFb7ZX2GVmRlo4XmL8=;
	h=To:Subject:From:Date:From;
	b=htrp1SKQdHhHh69OWNGlIMrwpLldt5X2o72CFB6TfIUzGiFvUsCbaKzKY5slYgc2F
	 0G/uf9jW0zjSVixVwFl1lq0YUHtWvHqyerUSSg/c7WxMfRttz/9N4jSHbVJJY7mEga
	 1Zu983ixbde08sv+G3NOZ+dQApM1v3sR8nEzMIkY93bUFlVlknx6qrPpyZxK6O4eZn
	 J395bIrPsT3qcYJJhdfAUHvI1tvmyTMfGaKFWKft7jo9RN+mW2KfFvvNrnziiw19bC
	 /G9y/fty+twiW/LWskfHhN/3ajFLLNkThyuQ30pLyQ8qiMIc+vu81FkOCLoZUb/oDn
	 ChZdT6vsq4LGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF90EA8550
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177313409358.6580.12730563841526871802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681ff0e655f17eb9351ddfdfd4ab2dfea62963629b250890f235b16e9cc40159
Date: Tue, 10 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773134093
