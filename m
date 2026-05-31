Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2934E2798EA
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780193074; cv=none; b=YXJty8+GwcyYGRyv/cQQet4tWSLarBPIik3wAta6qwGhUGANcfE3hEBlCv3xucd1ZJX+3UYL1hFNIMrffLCHIJupEoBmxuq4bCIcNx5rlcJBMibxxUffLO49hcZS5GhRXSXGQZ9lENDs+/bDHE6kh5KWla2jRMnyKNWbHrxO+Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780193074; c=relaxed/simple;
	bh=0dHinP9ODfoGRl/J6eR7pAw8azqCNuPi2IIlA4JHOsc=;
	h=To:Subject:From:Message-Id:Date; b=m3/WNHqlF6f8K25I7eI1ZhCrCFdq7xLLd5EJ1MfdWTZXW/ibXGuKwJCMmmjaM84p/9j6OKA4b3iklZS+i/N9t5eldqqV7+qSH55ZSTGm7O3I7pMxqqiYAjhqGS6Ypg8aNt3Tc+vUqkxEaCM77q3kjtncjfjs4VSLWkAfvXiQuyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzArz10/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzArz10/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA649C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780193073;
	bh=0dHinP9ODfoGRl/J6eR7pAw8azqCNuPi2IIlA4JHOsc=;
	h=To:Subject:From:Date:From;
	b=HzArz10/ksMds2AzLowdbltmpwPk4LtGx+tv6ZJ6ErEnFNplm8MGkgfixYpJDYwNa
	 jz5GEFIiP7dfJQDiD3KGeKHfCHofaxEtdvGrMPixZ9XqNvgkdyysEld5Xv5pvsBYSJ
	 IOfE7S0wNkgKbRa2Vz+HxJNlgGtXqBdd4ORH24pEcpTe0nxwzRPqtPucS63TqBDYfO
	 CQehKChyxdko3iC10uab3vI4uqiAUdNiZ5XnbayCx8eJoujXO1PDyS3p/aIr8EDXdw
	 iJWpi9fyZdvzmvSyfLrep14N1J/AcE+u1mlzFgRxSid5Ush+NuhxmZBvryKXmvkjvW
	 sUL+DRGN83rMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B285ACD6E4C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178019307372.3708.15293911954237775749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a6f7160b9f96a6ad9de2b4ed938d6ec48f5d94ed44280c261533fc927256f9a
Date: Sun, 31 May 2026 02:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780193073
