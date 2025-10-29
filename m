Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A71F2F9DBC
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761737994; cv=none; b=Zav1OYw+HDiLm2BTzyZIFzjiwzQyyERyHuPm1viuTaS6OwtJsmOGIvx/NKwOKAq/XsFqhzY1xfenu6tjk8Kvk0JBJ8fZBIUC5x+froL6ajWVBDf3mILAB2e0Q/LYqo/Mv3f2+zHX5KsnLQFb8iSiKTsM/BNIFYLdohghLFXH1bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761737994; c=relaxed/simple;
	bh=rDrjJLIEwljkjltkwdjVE0FcTwzo4H0sHG6nuAdqJmM=;
	h=To:Subject:From:Message-Id:Date; b=dn4iVazR6ufFk8gPINEpSSTk6CsqCMr8nIbDg2AgusAsTisoZoE0Xj6dGorNm+1DVcWJj8M7bf13Q8ky3ZLVKBm6pxN6uA1TRPMQqNyxHXHSuHZeSDSmb/PcTNiTrZLafHKBb253VWfzzUb1it4GVYAlBCzLDRp93IlMJAYfdK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsoUpuP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsoUpuP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5128C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761737993;
	bh=rDrjJLIEwljkjltkwdjVE0FcTwzo4H0sHG6nuAdqJmM=;
	h=To:Subject:From:Date:From;
	b=MsoUpuP/mxdmUcbYUJyrn6NcKtKi8wJnklC4uL5Ywj2RcMpNVXzXW/T3C3B4tzCsd
	 g47mFgf6Bt4+xFkzKceKQyO48Ol0OWSFWA8KnE0xTOqrye5HDdjA9ryxrgJOfTKplu
	 jXcHCKluskRzxtddlGz35IZJ1NZNtWHbHIzEdKYGT1z/ZWI6FehBXMR0tJ/fn4JZk0
	 /MphEFP1Qmz6kyCanMMTS2Wki+9LmALuYVSRnrBf890mmmMsDuCqBUhciJ1/QFPKoW
	 BJCNY8CBiduDBBd/iZeM/rfgW9xzKFvkDrI5C8npiVfmz9MR/CuG2VexoSkqvvUlyP
	 aCYXOdE5yOTBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2EDCCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176173799368.1376.8048345568927943757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc34051e4ebdc51404737b39762d5398e5a56347e5e9ca4c34a48294f99c732
Date: Wed, 29 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761737993
