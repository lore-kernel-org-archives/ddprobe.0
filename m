Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0070428682
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761548394; cv=none; b=s+1cq7txotxM8LLFowRDW9+MHlo8RSKN9peVMjY3GuHFnzW9tnonCWE9dzzWZulYbqsMYaF2WZXZhKFegam62l8/l3YkGeiyKT6K/Zqpvg5SzDrjgu3DXi/9D1Qgl+F88cHhtSIDanbdMRkiBHkuQ7rSUJZJJNKJWzK3+mGYi3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761548394; c=relaxed/simple;
	bh=RPEBFtgZrqchXHPoVMiAVLzoxT7RpqUQABhuNu/G1Vw=;
	h=To:Subject:From:Message-Id:Date; b=beomx8lG0o0wXOI5WZdF9rkGcPB8lcuz46Td2quqv+NCtKxD/R2qLZKM4onc/4h9OMHEZKT6yECyipt1wAL7oDuL3qRT8Mb832cPZ2001Zb1oK5ZclJpNFifbhHhfGiC8lfI4TDp7yBhzqSSpwVJd4gb6SQV6xWRiq1yL7cnCmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuY1a4+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuY1a4+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0231C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761548393;
	bh=RPEBFtgZrqchXHPoVMiAVLzoxT7RpqUQABhuNu/G1Vw=;
	h=To:Subject:From:Date:From;
	b=VuY1a4+cox6qzQ7qsZR5QVUJ6MFSvATnUjfeEm+qAHhLknqBDoQ+CnYV2TrmnVUP3
	 MTajjn9mZmivAB92+CrWU7DnD7v5anVacoEAWkGj/zjGr1ZcHDGqNsZA02YTXO3+VG
	 XLvIjFbCsDP1Bq9Lr0UqVTCSvy/eFvqgEYHgaNC2Pym8X539PEhFV92x05qOdpkRkE
	 3tnb99Qyd7h8aUbqLsmqqCyLPWS+B5sj7Wnyxly3MDEWJ8BKoqXjDYz+v7pEDId2Ks
	 cNnJc5sNY7sJNZ46b9yxnN4GXqdgRG1QKwsvfVJHhcjCOHZaEMll4XBw4sqgUtXF1K
	 Q4kmqN8JZwDSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F829CCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176154839357.20656.132883489634138633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c9bdaef2dc9bf39818ba4d69d799d7eee84dd227349abe9c8f4fdb3c37a4817
Date: Mon, 27 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761548393
