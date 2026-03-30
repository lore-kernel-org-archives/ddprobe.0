Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097623B6C0C
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774866294; cv=none; b=ir6BCkzvTs35khQb1mSIF6YwNF65LSeHhdtSju7KX3xFuDBFfolEoq5lmTCH0KFOH7a7iPDb57ZhMkGZkjKQbPE3a7QC61MqnVegRtSrWXw0nWJASCAhvxhCCkmRUYOy+ujexWjgf+rn2UWf6JRq1oVBUZDBqz3CpM9WUoKHvcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774866294; c=relaxed/simple;
	bh=lOM90tJySAUA4N0sSh5sT/IrS/hh3jn7nXxDdIEsUPs=;
	h=To:Subject:From:Message-Id:Date; b=du8hNNA76kdw9NP0UzaPNTOl3yHzRxoQQb9shQC4SbcG9Ct91QbHAR2XzjnvDQ7PwI/nFFpt/cWpSKPOQOGUt7Ej7T0HI5gHFR1ZuI7hoI/OQVmg3gG87Mx25PMXbyPYUPLmP9y+nHB6triphwew+luW40PHiozYhjfLgU3EmJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhXQsNV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhXQsNV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A007BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774866293;
	bh=lOM90tJySAUA4N0sSh5sT/IrS/hh3jn7nXxDdIEsUPs=;
	h=To:Subject:From:Date:From;
	b=PhXQsNV9oEAGE1SeHwivJzJ2lB6QBqMGNPdmIuFaUnf1ouXrl1WorzYreJeIXDq2o
	 McSw1Nx+c5Z9Pbu7uR4a/1RJ+DIUwfVuYYazNu7yRaGKsS0HWSyAMmeGrsUD1yWkJ6
	 FD9cFWfwFpAMxikuDiXSp2osci2welmMAa+RZAH455ZRIp+BKj/LAZOkSHciyeUzLZ
	 rpklHTWygJLIoC0AguzYxs+u8ij3b4Ui2LjHz+hs8vCoNOPESR0YMOFLmSw9tvhfbw
	 5Mf/nJ07zaUdt9R6d8NZYId8MFeZfAmKQR50Lv7QUK+ZWGSsrVSVwWH2rs7FHKu1Ri
	 Zc25zDUE7WD7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913BAFB3CFF
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177486629358.3735.16783003935005080955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee3c030b6813935a9e185c46fd6a1ab18d65011b213d9578b789e2b9cccf3b62
Date: Mon, 30 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774866293
