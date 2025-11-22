Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AA88248C
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763783514; cv=none; b=a4hMo36VQocD+CSOoNLoguSFDxlMdevXwsu5PMYxZ2TvmCZd/YIKw+2NO3e1CjM4mo0O/S2vIXBMyXZaPJwZsy5xfRjZRaH8vK7c88R0HDuHCcqCyeRWOLnFS0Bu0elFI/aL7Uj3HmjZhi8tJWHSLwrZ/tmQMoNgIlIKZPcBOkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763783514; c=relaxed/simple;
	bh=DehvDr18IVWwxcLAlh0ZLU8HMBWdamkvKb43K908x7k=;
	h=To:Subject:From:Message-Id:Date; b=q0yJ27d0LEct8Tce8/EgEEBV6X2llyITQLNae6Lz78j5/ugQBLrR3A4ZIUjk74Z8Cq2M5fGg4l7su2MOJDatOZyTd3l7jqSRRubTX1PqKtQ9vAXTneVPfL0FyNOc0X+DZFk/LDoELvQSJHe0QjaROVjU/KTV9rNebqdNlQDSmaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OExczZ2C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OExczZ2C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26A8C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763783513;
	bh=DehvDr18IVWwxcLAlh0ZLU8HMBWdamkvKb43K908x7k=;
	h=To:Subject:From:Date:From;
	b=OExczZ2CtAOzv2DwhKc7NGjksgeyjkW9lKIRVL1qVk/xT1OEpHHQr61jIUqp3Z5dy
	 PUAMhzPjXglW5bY+YSDZG15MgOuY10yQRmRSySbm27rhmlSicxurTY4L8SjDW4S+7V
	 Ou22y6XnKMm1bYIRTMrGLvJnxynixXCbjRDhh7JC0ywzSbaWN7pu64l3nFr1yjfgKt
	 B6erthNVvE77pikxY5u8jhZ+dQGNd00fSurCMLZex8Uosj3MLIwrXq5xBu8MNiAFxj
	 frg+ZZuG6+wPug/luPn9p5/nTohLDw7bbMV0W8weucqjxKw5Klb8uKrSwE3L5wk414
	 gz5kWGGYueR6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909E1CFC504
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176378351358.28132.14541545042585173142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca60d1c5f576464936a1be62e6444685a2a20831bc516a277c17cc02a0a66a3
Date: Sat, 22 Nov 2025 03:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763783513
