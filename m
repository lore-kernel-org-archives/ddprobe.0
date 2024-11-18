Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED6C20309
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731941154; cv=none; b=S03Ys4ZsUIRTIXZegtGilv2gmghNZsu0jOqzAEFMqnHbOf23U+CVM65DFtnHlZ+Q7LYG+pNSZcs1Y5EfikwEJarQgZEjSQlLggTlI7kuGs3fy6RFmJCdVFn0nOOZqYdlwubPqh4y+yVW0Pa/neIbmQPhvgjP6c6682HDxsLs4Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731941154; c=relaxed/simple;
	bh=fwwRFci3xHkKVapCQfNxN7nvtDdN1Uu+BWM23fHZV90=;
	h=To:Subject:From:Message-Id:Date; b=qMv1Y9ZlsepZJZsKhKkOhG6HtrrFM+gsYheJ169JM/LHw1xbSxBMk2sHS8/y05t2Upbapv+X8gf7jWUXC45fMp5Y8GDRwxP8GR2642oD75N3pgvGw7wHxxx4jZ0k1ydsIcz3iMqxJ9QH0V25mnsW1Wf+q1hB4CiAk0ELE+HfuvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVkHwf3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVkHwf3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC525C4CECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731941153;
	bh=fwwRFci3xHkKVapCQfNxN7nvtDdN1Uu+BWM23fHZV90=;
	h=To:Subject:From:Date:From;
	b=EVkHwf3Tt1QVq8EH2HRl92zeGY9PtrRJslxgjpzpZQMMxESlvA1XaPKuMm1QWWPdD
	 imADOj1o4QM+R3kNZ3pZSHO14VzXJIf8zZJSgYkuIhZxlgDD2i/cHVbeLgZYXrQCag
	 jVGdZ6qUpHVNd1hhyTUIzjkrelLNVjcd963XpqXis7rU3pqjEr1nl6qDLhXGUkBA/e
	 4ojDO5aHfaCEVFCBbhVyY9TsW2+tMalIwZQIsRBvZ8m1zqWWzDEgYp3UMjc1f3yXpB
	 L3b0QrrYT5FxUpewKZ37A/Jgcpowbq2sMmEQR9WOVYzmrtlB/HVDBQU0qB2uLobaLF
	 +lIYTpi70b5ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A9BD4921D
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173194115359.8888.18080493673427090154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3a8434be8b2b51e62b2ee347ac03dadeb59cc9465a19609f95f9d8c55c5fe6
Date: Mon, 18 Nov 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731941153
