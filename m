Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64ABF3BE15E
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784722114; cv=none; b=ObrDBN+9tvDrLHoGe3fiKLXJNZ77d7kAGqGQpWIBL79/7ugz940jOu+BJSWbouSpa4bsUyCJv2COGrEMPJd/NLGqsIkHaMBUkL267IRAaBfuVbQBkwpzXMDDczVj3c3HMvc8+5odHlh2VVGyjzwImus6tCjs/2IJ4ehe76uF1dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784722114; c=relaxed/simple;
	bh=WdLRcOwgVTgp3puRKwbebsmxtuMUFNLAZx6Lz9di1zE=;
	h=To:Subject:From:Message-Id:Date; b=f5EO1eav8VJ8DfMbb8fgIFt8Wvns9o85iBZ/i72WKL4CcX+ohgpx8D7q23jYln0kjfY3GA+OujegOToAXS8WK1hyonzkg/62o3DB2cfanSMt62N+rCi5iy0d1FNm3/PnA89eqxqYU/p5keddTaxA85UZh3QjQiODSYa4Y+uePcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwhUw2km; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwhUw2km"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5BBC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784722113;
	bh=WdLRcOwgVTgp3puRKwbebsmxtuMUFNLAZx6Lz9di1zE=;
	h=To:Subject:From:Date:From;
	b=RwhUw2kmO2eN2qds2E4fyqg7N1eAagDEwpgo70AxTB59QKdLuRuqfLlg2Tub9y2uV
	 elwYxiMLKW3kyBXvrbb3ryhP0fz/PK4pUnjp1fGwMfb5VO5mUI3xcfL7GeHB+zsGoq
	 DHZNkUTVS331QYwGErvDhIVptOKY6+zs0ZfTuv9T60w6Yw4jDVi7ncxFDI6ZNq83C8
	 mHoU1pigISTeyfAUSFPRAz06sGFuQ1ZF5uG+/b+kr8I06bl8Hpbf/LmU4zrSo34vGx
	 dw7zHKZHeKHGeulcofgB9L559tuS5JNlTII8JJWoJUL6UM4RRDEHn0IipHhYE2hDJQ
	 WfYHbON72No+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9068C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178472211374.17130.6571647564885743326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9541f5a7581572fabd3e9eb2b6c12f6002ec89f7e5ae4d01f1a8abc6b59f03c0
Date: Wed, 22 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784722113
