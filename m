Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3681E1684AC
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754828994; cv=none; b=B77N/g+RxxW2rOr+T8mHOKXdu5cMzNSav1j/lr+QQ+ZZXIVwCBqO+CB8m/gxtcwTsuw1x/4HzEv8+N2sFvQYxAFRUY/c5K+TrT93P8HItkAsmw3RsLcdbmPhpLXLFuPg+GFe8tlzFLTvQVK+E92LzRRe5+sKacLcFT2ReduEEJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754828994; c=relaxed/simple;
	bh=fuMtikMwDfjY+J9FX7PtV9vtESS1fKqgHVY5j9v/oT4=;
	h=To:Subject:From:Message-Id:Date; b=dSgUj3Kso3gI8ewSxZY+qFuLmQuu8ekUMlJe0FdzkOSu27uxIFDoNh126Hvzi6bd7dXY/M5MoJng9KSQQbHZzs1DOL1M5BVrp2WtPEkWcosuiQYmxqjtqfHBx346xzPHRLylAptdvTZsnaXant5IgZFSxPoRUtufrpCSWz0LtpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzxVlOSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzxVlOSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DDCC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754828993;
	bh=fuMtikMwDfjY+J9FX7PtV9vtESS1fKqgHVY5j9v/oT4=;
	h=To:Subject:From:Date:From;
	b=CzxVlOSEM4HSB5QS1INsFMWnIKLx81DmhrdSFRR+RBWfbgMYOzKcBirVBgdG/raSZ
	 zoBL2X3Hasc7zgnWny9YHSxZYDqR8meA6mJ/qMD4RcAFWnhWorA/Lu+J/empx/sYJP
	 dbRx/tdfrmVPjR0H217WACp1bgc6kluMG2MW5Rdvxh/ManLPDMzayxg340TA/ri8aZ
	 RegJrzh705PJK0hSKHaiDKfXILBqO0DXXy8anSSkeV/K31xqSMhwWDcEhut4ykaGVI
	 LDLjIHmjXgFBfmStzZv0H5yZVs3JnFKY5vuamVCeIO4HJnhdHhy9R7Qq1CrYPrP2wH
	 c8z34zH/jpXzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF3BC87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175482899357.24959.5283716718786474109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 442e637639ab74edfc851a847e7e22eca5b23ce0db6d9d61d4c21a6dac4877be
Date: Sun, 10 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754828993
