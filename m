Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E086CF9C1
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759979994; cv=none; b=RZD2ZhENyKLYGDtrZEPwT5R3HGcI0Xc9oC8DiMHDsBvjJJTXvL3TuBF38S/c/VTuoiIfkhxBnlWQ8X+WREHv9XOklTF5qwUcemTpo1YEOdNpvGn83NN0bQmuyLkkBsgnEEG76jTW1HUKrgj2qZNn+Mdqb4lZ9U4DPqcLJpk87Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759979994; c=relaxed/simple;
	bh=SCagFt6FG+V1umrhp9oKcsvvzSb/KzswZ86ol2CCcAc=;
	h=To:Subject:From:Message-Id:Date; b=UJB+KlrRKMMqk+MKWHRNM9yj5EHf8Wuqy5nRWDOHWLyD6NfCws0rYJEStE8WRU/OKhgDnr399ee2/zVHUyP2j/jeCS0UV+sa/dtXaQ32I7iqUq4YD04OAzPeAbqhllYvG4fkhjuoE+IeuclX4H04V8CIXpyfztuR+G55S87El8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUHY2qGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUHY2qGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B35C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759979993;
	bh=SCagFt6FG+V1umrhp9oKcsvvzSb/KzswZ86ol2CCcAc=;
	h=To:Subject:From:Date:From;
	b=QUHY2qGLLFJhoWfi/QCvCAJh17G7bCdZm2b7QWPqgURpbDF/7cTa1MT//w9+PNx73
	 mSt162o7zbOsnfVjzfeBfq1lXNCiKBH9zNaqk/UZFl9lI4CMEcPLX8YBLhMO6NjrsJ
	 HI9YvMCSoDQXR7e80jVSANKHxrsgBS/aJOt0yz0fcDVnIJoysr54iHJj1Z6DMYz9Ic
	 ZXG9UsJnYWSt8blejwRBOw4y0anstl7DBbo2tLSfxRyoeFc6L0Xv555LXHGj0Wr8hq
	 mTEq5pHYrNt+fco/veFYxc3OPt3h34iV5JbjESpj5ZQIV/a1dotW80YBFAsY2rZtbM
	 af74/IgHSHXZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9306ECCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175997999357.18386.7060985624644509511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22ad8f8781ed6e2b4666f28ddc4c5598baaf0b451f3f678f28d95f8bdaa7b2e3
Date: Thu, 09 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759979993
