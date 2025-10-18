Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B94354AC2
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760772594; cv=none; b=tnVX4jXNJ68hanyWz9Ku2iQ4VNk2scL1WfBTWC+KiKAYe7nRNduXrlHNiiCkSlLPsmyqU7dxh29szA7eBVlgwjrNZUC5M3vfr1/snYxyDb2T5Vys+4cF4AAmeBlTSceLZ/hOf5XCkBkvAv+Mg+y2COWI9e0jWYqwuz84w+2IUe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760772594; c=relaxed/simple;
	bh=Sq8TdTFODOLHD6R03DfQLfC4TO/l1IuGDch0WR657L0=;
	h=To:Subject:From:Message-Id:Date; b=fs20+J25tq4E03/6beAFXGRu1+OSWOMCimNvQKRJVyqR0LTAsmTrYPpn6xr8/vIQDCNP1tViBrO1DkAZZRBDAcE2LTYQ3hzWEA6V8guC6fhibd86eoyPRZcVMwbYz/u4nKJQua2nGrL8mYGOFr21lj6d9E8eXSFtGLgQIliylQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXJXYNLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXJXYNLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3687C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760772593;
	bh=Sq8TdTFODOLHD6R03DfQLfC4TO/l1IuGDch0WR657L0=;
	h=To:Subject:From:Date:From;
	b=jXJXYNLGXLBdCR9WRkLOxqxcrqMt5dG+g0R9QXPLgu0GiSXim6mOTnBGEyI2DM/X8
	 rSjDh7siu8m4aJoqZtvI8Hq28go/B+1IZ4vRHE7tW2J4BT4AO05t2fqNasxK9AgIgU
	 mNDwyd72JDKd0lf2hA1XJKlKBRHZ6eXTp9JrF/7SCNqG9Q8uif85YwjcWwttftEZaq
	 Yx4MINOCdL8L4+fjedjRrCdnTwxxDjDHcHOOoXGLAehejAd5AXmE5j96CUP0Fd7LsN
	 kgu03prh9aQekiaap0/Ugbdc8j53n6AYamjwV8XQg+Xkl/lYFtTCR67e4t0l63Uc+R
	 WqWJoExCOhSSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9283CCCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176077259357.28718.14357338964901313284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cc78c240869dde3a0742a2acb37850038e45819ddb44e4b8818c8090056fcf2
Date: Sat, 18 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760772593
