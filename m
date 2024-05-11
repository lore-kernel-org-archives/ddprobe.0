Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CEDE5029D
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 12:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715429543; cv=none; b=JvcQbeWfiDwtI5wFakhWKl+uMMln/7XEw11xuiXjAurFJ4i/cehhoriVZzlg39kiCVz7RDG8iddNXqAJBiz8dBgW+gcZc4HUqnUWvuJeB3WiVehjQYSatB1HwTMfIbU0GC0RL93ySSJKAJa5VtaXHC/NUPufTpC4BSNCvDDBeV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715429543; c=relaxed/simple;
	bh=i7v2qyI6gyQglScW7mc17kk3PYi6ETUrrMmTU7c6iFw=;
	h=To:Subject:From:Message-Id:Date; b=G9029E9DAGmE8uQE7BLE8zoKturZf0z7avNJfpigcQ7JztGwWDB/KcjKaBnZR7Nk125hk07SuOacomanYIDv4XUMBugYp1ovrwXI232XPUXiIT6Oy8TiUKFKDMJ6Zih5gNl2Hqw08cdwXG6pbVoBplf1HNJe2rltZ8Oy0Ev0cPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpNIDuJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpNIDuJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E517CC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 12:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715429542;
	bh=i7v2qyI6gyQglScW7mc17kk3PYi6ETUrrMmTU7c6iFw=;
	h=To:Subject:From:Date:From;
	b=FpNIDuJEr2GTTYF2yV7anzreMrOp8MD+n4PsnmNQob2uPDlCxlqSbN+sCaS/hmmK/
	 IGf3MficzRLeq/+nER+nPDV2Ial2iaEylaI7zuRTUMx9Heo3fzqooeaFDmpCdXubCt
	 J02iXfAAU5q4sCtY0UwLrHGcPd8OGR1le1ZVf9q+souApofIoKupZDv/t4olXtGhJl
	 lgZvX580FsDjkUdrhYqMWIJ27Y2OoT8T9/v1QbVni42yoJhEX5YcYP5l7RRLV7/9LG
	 Jn8pun95Yc/HE7aWNMySaX0WMb5Jlki3VWXgdbLM61pEmbIe+GVgPYWDdImmw3w9pd
	 BDkj8/tB/0IQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8992C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 12:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171542954280.16315.5544811434619334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f393a2f4a8cce6f832df71074f87847c562e8473fc35b4453d6a24b413be18b
Date: Sat, 11 May 2024 12:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715429542
