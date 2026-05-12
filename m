Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1041A3A4F4A
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778578834; cv=none; b=SF9zI/ug0vVcWd7HEKvvv6Eys/JjP5VKqxCmluqGxgYzyXPBdOvQUXqMx+g122gYe+ux+opNcU/AWvZSB2GooOy74JHgMIPKRZlcYG2XeSFLyeDlGwJ6Z0VtleA1W+UEcVioYVmASDstXL5equTMw0baFlStMmSJgrKtxRn7rv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778578834; c=relaxed/simple;
	bh=ncKuQ0++UleOusYIf9AlgkV+PziAGqND5xBsxA6If44=;
	h=To:Subject:From:Message-Id:Date; b=qNkjYoT2TYXq3lePPCLkb/xwSohQmer678HhfTERPW0mwJeseo7VwM8GEK3UZ78gla8XhhD4iONpAV/eDp3cdirPe0sbYuEzK7KMSoAB5LTPPq6EXTNSRSAT4sDFY48cDuLZ0VkEtHnc+OVXNjkTctfoS1zgdkL2SS/DS2L1F38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKOqI+Sr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKOqI+Sr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA82BC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778578833;
	bh=ncKuQ0++UleOusYIf9AlgkV+PziAGqND5xBsxA6If44=;
	h=To:Subject:From:Date:From;
	b=BKOqI+Sr7Xcb9fNfqIAKnKvBLYcuYMmlSuHpNMOIGy8sWEDr27HWFUjBS5wFwQeCr
	 AmcUWeYo7PuVlMmEhE22xFkGf+JXeLBwNqBEXnuJB+sz68oD2NGBkqJqjfvgJVSNji
	 I6baVsS7Waz4cUKU2Sr6+v8SN4HZc2KznmAnUw6MteVkgUubHtPCfntBm+mqFDifRy
	 IZTs0WwDwHqKvOFImnEYN/byP5EMqdMgdEm9hwkgU/6FJ1z96U63C3y6j84jQjR72u
	 +l7vkW8wk4ruwp+hoFc1J1CvSWZQgUeIhn16J4mqX0Rwpjh8zBoCZqMiWeyOhQtJRN
	 1lOKw2AnY7Q2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2ABCD4855
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177857883368.6306.13094473583257692896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27278f243a1d8364af4a75a0744855a83f57fbfa5d0cc136dded8d3e8a5aa47d
Date: Tue, 12 May 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778578833
