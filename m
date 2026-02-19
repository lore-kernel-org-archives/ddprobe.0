Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F7B3033FD
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771514694; cv=none; b=AadNJelwFTYjLTvEMB4mxPXmosSBsg9Tfkmvelk8hTO/i1bBYpRlsecXMwQ4s6dVnyUAqQUM2pBlRaOwQnZ8sDuXeWzGdrBVqTduTVjvDyFNh3QaZ/sjZUigCUWBYOOMjOBqEMmGIKR4C+aSgXTSEKcYNGPdbf+aYKBU5N9Csbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771514694; c=relaxed/simple;
	bh=msVLd1OmMhXQNMelTC6vsyv71hLHIeFjl+dvucTWLmU=;
	h=To:Subject:From:Message-Id:Date; b=gi7ZtZHjldElRvXtDnIjEQWolIfHlL/MoY8ZUmEsvlDV4+5XrK9jOqEwXPmTC6Im/jF392gAEwiD3xEkzjb/3G0dnHwnzKzsHnTqF2ofT4UEqq6B/Dn6CRemnzXiUXAPSI50FilG4737C/q8T+SNcnsepc32IRZSqL3pN3U2+g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQJBF4we; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQJBF4we"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EB6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771514693;
	bh=msVLd1OmMhXQNMelTC6vsyv71hLHIeFjl+dvucTWLmU=;
	h=To:Subject:From:Date:From;
	b=ZQJBF4wed8M6uAHHIUaY13mSSdc31G+1sxmrkepU7MZNoWG+GZjWgAnCNB3MO6lVB
	 VNohYEJwUoxZuUWquiIfguw3RpXp4DbHelx+v0rgdx03RulQsRh/pPt6OCw6tuilI2
	 h59/xxAuRAyHqzcxLA+HW2QJgTON4LBRmxzqhP4CjKm+mjYYgNAHxZh3lfwRXdDzqr
	 3Lk++4k87fX89tv1T1yEWb0epLT9oFNRDxnPw4DyBgor1I232tc84SLwc/tBPbbs6B
	 I2wMZUZMJo+v4QFu8Dn+V9hf0PWtH/MLdMpsUGF+udprkx2DmtR6IzuTXjIcMn5rFk
	 8O4JN+cDE7P3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D6EE9A048
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177151469358.26891.1788322620424093945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c340fa53a39aded5af09c16f58eab3706c99ce1cf6f2ce3cbd91087247dc8b4b
Date: Thu, 19 Feb 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771514693
