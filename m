Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CB51CD35
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 16:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717949843; cv=none; b=E04GX1jSQ6hW/U9ba301EoDpJ5AQOE/iEz66n4sAZeXVfI0JNwKv8f/u/VDeFAWP5zL46JvltPJ12QPdM/+Hbu6mhEvTCpQBTFESQMSC3gV9H5MChdwWfIP0xleHmRO7+/wYk86DPKYI6lvxbCsup3yoZtGHzt9NjxJ2c43pS+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717949843; c=relaxed/simple;
	bh=GHj1GGiiC6cTv3T9HUPoj23JD3aqZTnBWzns4wVsht4=;
	h=To:Subject:From:Message-Id:Date; b=YjHwSn+t5Yj6d5CS2hP0mxVUy9adeBXTSpLkhZ3OVH/DUbTHTZXRr363d1i5hbvfFsYFEmK13RWxpMcB89b3IhRucmTakda5+r54Thyne1dw9TmNxBSYGL/2vgYGa0kgnl32Zqn5Vl3otCmMSx/2TDK/xF2UsbLU4RYURSF7gRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lglcrRMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lglcrRMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0CDAC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 16:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717949842;
	bh=GHj1GGiiC6cTv3T9HUPoj23JD3aqZTnBWzns4wVsht4=;
	h=To:Subject:From:Date:From;
	b=lglcrRMv7gqyadaWeQuAe9HqAK3NdOs7q2iXYLfGNV0k0zxBrPEHKoOXY32ABduPl
	 0CqwIk+rI/tTz81e5S4UjxDbuzego+T20nsgepJhLLO/B1To6wgab6xs95Pc2180uO
	 zJtPyqKDkCczHhTiV9bu3/wHu4I0hewdCe7Jd1k7ziB4OSPWceQ815jApF/ChbuXZh
	 YRUbW9a274i0MJHZ9mH8Zvs/zPkt918IF/jJWX+pQH11HUqt1+B9uzMDQWTLfMUqo1
	 Ofs28yVUGntKU/ykNuk/AQRyoPjSwFNZ8pAmFz6HJPh7tB3DMFUBxksZ8iYzVWIYI9
	 fNzevMl8VgE5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8174C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 16:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171794984278.16775.17707646948551087370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd49a48a69e6cf5e7fec84ba9dc7d82a0d29f005308ed6a944335adf16f4080b
Date: Sun, 09 Jun 2024 16:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717949842
