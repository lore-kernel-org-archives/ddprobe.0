Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285562E7166
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761110994; cv=none; b=JyuO+xKmo8IkJE4cdX71y6Q/+/C0W0hYymFn/9oiuV17nfYGNLfNZtr5u6iP0s0pZd/GZ4rz4RZey2P0Au+d/iG9mHxpJk1GwzeAu4BcTWbLJbPc33cAi88PhZgH97PxHkWTPQEC+qkd72WXTmpjYM3DQKAT/IxcA+iS+69UCSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761110994; c=relaxed/simple;
	bh=HIV4u7cuofLAafsCGD7DHYfJXJuQrvA1MyzfcTg/9DM=;
	h=To:Subject:From:Message-Id:Date; b=C3gNQewx8Qv5TxQHcH+QrKBzo6yS55J/Kq2qQOy0XgMqW/ISfvUmpGqUJuUOuXxuT+m1/0+fcvqWIW0dEPI+FbzJFLKJFYCro4z5F0f5vqDmH1PymQo0fjZUEApKTECuMkFV3pLbrs7VAZy1YHsodrRN2nav3WnWOnFOu0KWpOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKwq1hWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKwq1hWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE65C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761110993;
	bh=HIV4u7cuofLAafsCGD7DHYfJXJuQrvA1MyzfcTg/9DM=;
	h=To:Subject:From:Date:From;
	b=DKwq1hWUgWbnQFmu6swciTRn3ETdD8DuOVFQh92zZ1Ue1yBtr/DTHPPqovRD+X4fB
	 pyrtoRyCtfWN4Tlb67UCRgX1f/nqh7VfFeHdvLZEqgs5THLv6CRLl6XnAlVVGaRO3f
	 L+CnXgD+/x6gcD2y8UAig6PpXLwSztxSjq2JTiDSWJlVwi5zpFglMi4ksPl0xRuI0s
	 +EZZy5r9GbEsAXGVjMfVP7GDLyYO7IO6dVoIxjaGL66PVtBLkwAHEDrcxqMscOx1NU
	 yhB8HySGvqatZxGTCrP+lAKpbcE6DeSAZrlW9TXtsYFyu99xkEcFsdK9cF4+oobv2I
	 zS5kpIk7/6lQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F39FCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176111099357.17863.4192259580986223756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65f9fffe9cdc8383342b29c3bae067bd4c056db89c3aaeef354524dd2983de8
Date: Wed, 22 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761110993
