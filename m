Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C057230D14
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763790714; cv=none; b=h8DLVRRLCVkxdSmdLmn1ONMBduDvNeBXxqiNSLtMvVPqyW0zbHdWzp77uJ6VG4/I4o6c/LKYyDXU5+Wk4bTkMvusa2OD5Ml1HhxC6U+wiw46bWAD51oXWptNVnSp843Skg4PJm5FTCXACYifGcjbaIt5W7pnaDK8ZzxzvZzWVYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763790714; c=relaxed/simple;
	bh=gI3DSB9ue5qO+URMoNA2eOwYqG9L88b9E9XXMnnA1Vo=;
	h=To:Subject:From:Message-Id:Date; b=DcovPldM5i7Yg+ZEWZCOzHGNwdvSL+fhpGJFocD+xVvW13qxCrGHasGpBaEa6NEXQUScXO77BQkusAzMCBoMXvC36sDVFUMH2/t0AZtDoYQhuCJrPPShtqevwNQUsU278FCxOY/9MHzSnagCjXaFr+BiiPRvIZuwehFcGzo+2IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jq3gTJuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jq3gTJuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4666C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763790713;
	bh=gI3DSB9ue5qO+URMoNA2eOwYqG9L88b9E9XXMnnA1Vo=;
	h=To:Subject:From:Date:From;
	b=jq3gTJuPw3ix1thYrjicYGVajd+Mr3atDtPB26Bd0ZJzdTtm0FovWXw0vSpEvzRb1
	 S0ZWF67JLX5+VQOEUagM29H+LtSFaUCfjqbo4IzpeNxTwBm/+ZodJ/a+nCazIfzdmD
	 YR+OFsTXw060QJ1/p1dzutlyFy55kxLIWXTwejHt862oppY1nCkkq2M8XPjL9KOLlr
	 DNi1Q6I/n7gJ1dr2tpCx1qwwWTIULK9Al61sBpkl45I+hrbWlLkPGwT+DdxuCZi5NI
	 0i0NZ17Z80hmLibAt+lTduHDVeffxlp7mUdy0rHDsH302+EyFvso5SsJnQ2aGloG0e
	 pkhM++W6bVpAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F29CFC51D
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176379071363.10456.12699820818999627192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734dc3b9e02281363ca5529554046490647cabd8a311aac4e55a2766830a0965
Date: Sat, 22 Nov 2025 05:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763790713
