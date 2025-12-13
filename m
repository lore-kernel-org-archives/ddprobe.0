Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360A91A9F8D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765599174; cv=none; b=kzHaawtEhPTAXpp2KW9JCVaHgfT78n01ACqGbf0nylaJVvEEhnDrho6K01We8RS7N678iixq1sI4BKS88foWGbQ5b4Cv07L2llPCAgt3G+tIEkCz8cokT6Dc4xhRHUOcOEnqM8VWC+uaAmQ3rbAoW2KDqI3Ib5kQiuKVFgkzBwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765599174; c=relaxed/simple;
	bh=LVaBy3Ig7pWE6M3Y9fQ7XH3R9k4gfVVnG2KFaMmt8SY=;
	h=To:Subject:From:Message-Id:Date; b=QONNpwQ/OE5CIWhllQThApJf2WHA2goSwBoshruqshFHNXUVKzI3wXavRgBPaekU2OvF+dSUunxo0z/9Dmqu3Loi7HhbQS6Bz+nRf01hHlDAOAsNwIHCM08H94pCDmKZyu3ORA+f51ebhtz+Q198yGR6Vjo5KbAILe7U1b3/pAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbULQcXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbULQcXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ABBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765599173;
	bh=LVaBy3Ig7pWE6M3Y9fQ7XH3R9k4gfVVnG2KFaMmt8SY=;
	h=To:Subject:From:Date:From;
	b=mbULQcXXvgCQPjtPdCk6yxCY4MUmkhChh3G0FatKLExg2Qij5YUW40KHsj+IQKH0t
	 N5VAHS3pRBBVS0tjadYMrG6BUaotAYcYR+bK2TfZXGrnx+j62UL06xtADzZQ5HJ+wh
	 K9MlnJoW+HILN0PbxzW8d8Ks7uXmqBKqa6Z5fg6/zRw6kL3yhxfgZ3XRDhvOTn7art
	 P6MvBiYYmmrewt5LAn47iFHQmeHg9OdfnMUZKn+EZ5FPCP0yiI1rgfsO2VVxxsel3o
	 8zWLoVbR7f7ehT63JWILwbKC0vEvu2I2gjFBPp79FP+NRvSAXSkdVthnlv+A/FN7u2
	 KbHBg5IMmXnWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F51D59F6C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176559917358.26061.6128132496822562169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdf0697995424c4e5daf86b3d2c759423e812c40219afbccccbc3c97098cb164
Date: Sat, 13 Dec 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765599173
