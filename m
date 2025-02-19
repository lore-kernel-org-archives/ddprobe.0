Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED4C1CD1E4
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 09:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739959134; cv=none; b=lkPrQnNMJW0Atqsw4yWBT27QbMuMX/ENJDPEfLJcc8BsI5PXQTJD9beio+HtR1A+qNgAIuFgZChMyXoeJaF51e/P1WFOfgXF55yVeCgruuqZfL27vRnZc6BGpBf4WpRpMTbvKMssH28nm9mruP5+nhynGRsRXuCP70hhaj0Jspk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739959134; c=relaxed/simple;
	bh=8RoO8iD+mF8srYJO20o3gu0z3F7/FuaF7sDD/A7S8vw=;
	h=To:Subject:From:Message-Id:Date; b=G700FpxmpmW4GeBX2AkM0rN4uSB1/4X2Dcex3FNlpeg9QpBqb3vLMDU6s9KqQzJ8tb6BcJ2GJjPuk5RmkHvXbeZ+N7pGmuEaKC2fX4hiM/iDKEZFMAxw5mqA6Yf27cCaqord6z/bcaCrNCW9MU16A4Vfgvdhpnv/MU45XrOkdts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnZswSVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnZswSVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B59C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 09:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739959133;
	bh=8RoO8iD+mF8srYJO20o3gu0z3F7/FuaF7sDD/A7S8vw=;
	h=To:Subject:From:Date:From;
	b=AnZswSVYOTs8UQgixm52NS21y9Qttlak9pS337UJS+1J/+IgMEDwoOEUPzIDmYcW9
	 DBtPH3PCUSjJ28zUXiaiZ1YpfBxh9U0oVusF5fMB2NpeShB7f4yxa7WtxFmZNl2nki
	 bxp/meA7MJG50zjXEWeFsm8Z+Pl6V3fFiJUJYsr82VmY7oWWd7v/3vwVnGLqsHOelL
	 4Wi4hLeWjJMSXU4t9yFu+Mlq3711c2SoSwdeOj/7ryXHGw4d+KIDgryl3Cpw6IZZhM
	 CaD/yabbxDRK5+DR0dK2Dj7SjRqUL7RxHCIfgxI8XQ0f1OtLGXSYYPCXznkSUMmu3W
	 99ntNFKRTt3hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE46C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 09:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173995913363.18598.7783072187954485436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f886ee6f5662c4cd38da678a50e1f7632c66b514ccf66b2901daf057a8860e1e
Date: Wed, 19 Feb 2025 09:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739959133
