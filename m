Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AE02874FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777020454; cv=none; b=pxyEP1A9z6H5zl0e1eg5l9rsM5uy5XR5XkeyMH+Lho5UySRm0Kx3kFWkoxYv0fwlrj7Mg0/Ds+ozxTUoVOZp9XLX67vef5QgcWN2x38kVt5LteSIqwc4Nmkk2hrr/0nZOkg3dm7yHWtqJXkt9+Yw9zhgyudiRaskqYF3i/awb6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777020454; c=relaxed/simple;
	bh=ns/7kCzzVpKjR05BEXjfCkdlcKCtLJJGTXYRWjlv90c=;
	h=To:Subject:From:Message-Id:Date; b=MeSWkQrM98gxA7kvZ0RTS/0nMnj2wit8hGlaUx+q7k7hNLGKKxqri3Rd7N0NFdRydoTkEuLOfAFGEDxtTkq9nfL/NJn/u9gH31OAzF6dFwF3R9pIRwRie4t0XekVhrnZfuPr5W4fUaiVKOxhZ41p5oNa8d0ASMV/lHH9PO+X4BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbMjLKwo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbMjLKwo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE21DC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777020453;
	bh=ns/7kCzzVpKjR05BEXjfCkdlcKCtLJJGTXYRWjlv90c=;
	h=To:Subject:From:Date:From;
	b=AbMjLKwo4+jKm7lBxTHvWAG2uxEk3BtIanpyZHPkbXOS4Wwa66xePo4R64bei3Ze3
	 bWJTIOECRkf9jGIvu1unuQsQLlBNXosDDrKbVq/7gEkrPK924ZhvGyVYNF1l2j8c0T
	 Iaqga+t9P1Vrn1iQf5OeP+Pph5m+EJ9kiHZQp7CWDqdfMiFHKb03zWJSwBUY6GAOf3
	 QoQWBaeOK4jOIEwMtiAuaSlCreI4dPpEQDNKlPr99hflvsJVPZNpxqWj07gCTbNtXd
	 QAlDu648yHWXpadSRzSXw1T8yrpkNECy3T990fo0S4dyDXWVtdvwNmBTR7FK4h5Ju5
	 kgAPEqcQs7Veg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE6AFE51E4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177702045368.11287.17885929979630063363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9e663090b2d38382976ed4922d63227b01b6cdf5428555ff3746d938d3f3b1
Date: Fri, 24 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777020453
