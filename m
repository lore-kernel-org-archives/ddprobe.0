Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CABA846A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786834234; cv=none; b=M4QcmkL/U7GLizBw0+z/jw4QN3AheOzPFSIXsTvy4kwbItYH3itF1CjtJRnYhvTeSww9VWqFmHzG1pyxNte7FRR6g/RTsusCh0RA5LmWlm2CjHFENKzPkbJM5wHJGzQL4MSmdYW0jp2LG8NoANa5lp/PU1CNBvM/PfvmiVv5z3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786834234; c=relaxed/simple;
	bh=8SHOXFV5+JEPIDPe/aeLEXGXdDPg63Rmui4BWGym9nI=;
	h=To:Subject:From:Message-Id:Date; b=ACj6GK1kiLjhDRc5Jwu/2Z5YraOcstZwDH3yH3WQgKs4AVNLB6wDLPKIrU+2nz73rs+gNq0FGAZgwcxW32PuR4xeJLxLWrcfBkCQAO7rfphHg+h5xRuLSCu4OJ0JGc5Zi0pNP3zxcy3VRCRr2v+Abg5yDCLIvbwRUe7drlyaJ9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGe8vRgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGe8vRgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF909C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786834233;
	bh=8SHOXFV5+JEPIDPe/aeLEXGXdDPg63Rmui4BWGym9nI=;
	h=To:Subject:From:Date:From;
	b=KGe8vRgfqEpM8zWaq6fKBY0/cxl4j2Nhptedho65fUUA+e2uoLG6Bv2fRF8mBaUPo
	 PGiT5XsHGL77QDsZ1msFSlt1wqF5ASt46/fd7CbcI/9yrss/8n83QYNiInB7/zAU4z
	 KV8Fn50EeJEqEnN9yockLnyC5YSXVuunWm1TZxMzAjjejPMwrozGoN+0PUsvKj3z3X
	 3ahsh/+YCL5EYkROq+ddio8782KvJvdKlgzP0ZGvEmULt5agHyCwxE6wHXQno27hTF
	 E8bSd8m069XQyibaw9AWiEPGH1QXvLMp1OcbnjarXvvOTfAozwFaX2u9U2oXkQ32q7
	 pHT/JL1hZi3pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB276C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178683423369.21031.14303692524218931403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2870ca2cf07e86764b1ac8817aef2049ab7a7bb6fd905302ca2ecec61570bd68
Date: Sat, 15 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786834233
