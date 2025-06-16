Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDBA38FB0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750085994; cv=none; b=eyW4GX1rubQ5Dv60V7JEJ30JV0ofF/dZ46tHaWss1yQh2OxQnbtck75FAYerGg4BpqWUnMkUpNLkZpdD57aK5HcSrttMjXKhJGsLzpxCRMrQad4pgLDeeY1LuwHde1jSAcYBH1aSM/Af/hUL1BUhBI98ikpDLvXfQEmDdLPLnYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750085994; c=relaxed/simple;
	bh=98+GHf2B/u/d5mDvufxACwh16fkh2QwC4tDRZjWqYPQ=;
	h=To:Subject:From:Message-Id:Date; b=MGhUoiy+DkTi2RgsongGqOCcpdWUdAzLS42Xi9OY5AHV0P8JhQO+QVfbZO9BB+JvXArgOgdt3guxoqhcUXXdGreMP6ZH/GcFG944BtegSlOp6UgjvRB49Fs9P2KDKvaqk2u52JHa/i/Z/js2vkqBnz5rw7hc9g2UYfHwg2n+9fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHG39inL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHG39inL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21A4C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750085993;
	bh=98+GHf2B/u/d5mDvufxACwh16fkh2QwC4tDRZjWqYPQ=;
	h=To:Subject:From:Date:From;
	b=lHG39inLnaRRm2l9TkVhc9RCQSciTjzrU7TP/QbiFSKhFkxssdWJH78DN+mehX35V
	 d3pb7vVIPXfLTAkMgRP3z74gztr6XY07UwpqQgQMoQ0kFQFucGoSs8UcapJaH2g5bf
	 jn2qUFZeTxlsU/iiQq7RZJn+ZbZ57T/hF0TIEde+zat0a0j0MdblVLjo8oNaqw5mhY
	 2e+Gr7NOYwYH8jhLHfqRRCuWwbOvpnsxsU1mEjKVqU3TQUZzo6iHRE1mFhXRiy+Y/D
	 ddlNsvzWczgcYUQuAU24r8mH0ry6qnmB4h92gV+UrnW4eN6rE3RWFBnpMJUmrjNUdZ
	 //yckM+WAsWxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA82C71155
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175008599358.32534.15597711834157232359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c61fe0fb67bbd00852a844887f6885b10bd18d7d3a5d939cad5973cfa8d82391
Date: Mon, 16 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750085993
