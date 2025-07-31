Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A881E51D
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753937394; cv=none; b=VAaMhKHdrfnCHHu/iJs1AO/+IG2v5TASq0SJV/ZpOPqXZaqdkn3CjGccnj3O3xXmg9hReG/fUfOz012sBxOCa8Kmx3x62xqlqohKutWqKJAi1mD05oyMx6OOnF0Z6RVRtwDHkH9E0iqe+4tbw8bUwXS/h8qT6r9VA2Ul4n52c9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753937394; c=relaxed/simple;
	bh=SxGfpj/NBmUmTDGXY4S+uStHETsPhQtq7I863ca0qD0=;
	h=To:Subject:From:Message-Id:Date; b=rY4PSS3pQ4ZAgfSVvJ7ycXO3st0U7yJsgNYRoBlrHWQqm+ymHPohKylkJn3tokTmEwOz1TBoECMuUyfOHb3BInldsPf57UWSdfbLnzn1EMZGhi46TM7VT0oCY+PGmUbPnwFnDxrb7Z4rU5H1RZpzJAuFxwQeZyEiRZXs3E0g45o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSquJWEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSquJWEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FA3C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753937393;
	bh=SxGfpj/NBmUmTDGXY4S+uStHETsPhQtq7I863ca0qD0=;
	h=To:Subject:From:Date:From;
	b=aSquJWEVn265VmZW+B6ujjZLpGMsNoD5Gcq/bimfk8A8uzCQ+YGXTf9vmXZDw9ENN
	 JByVshMVlsKlzGecOHEdpyMhPX9yFhH4MQPpAnwzCYAtKQxJx+B6ZPf9YMvckhQ1sQ
	 7pI+oEjpJK20o2E7GfWWKC7UxH4NxqcsBNetRngFvj7Ce1EXMFNPUdmtQsB1fxOQxo
	 D2TqJl/LPAIKciGqQ6PB+Vm714W4MEOwPmVrZ9dSdn/4BKxPdFvN+3gwwRfL4Lgh+z
	 tMzXF+mHSanEF45tVvrdgzH979ehzOtLbp0W3Nnioiv6h4ZF1dEy/gomcfGwEr3i4E
	 FnclY9qFODkjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99774C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175393739361.14179.11560462651002783820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188a7399ade1de60ff0b7c495bd1c99b10c56e5c67ca1a428c0687fd9c99215c
Date: Thu, 31 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753937393
