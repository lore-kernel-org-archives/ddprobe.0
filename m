Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4403D21CFF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754001594; cv=none; b=rCGoNoQc4S1RGAHXCYMcCqP6fS2AQ6rYX083k0o2S5i7i1ck0lHSedYftMQGDUdI66pEyrh4iRjY24bHWIVB5LAQzBzbKmVw+ZZENiEgflO0/FABjjaHMzkRcPW4q+eCcdI85zrU0E7zd7pwG0KdcUeTpiaghyVToz1rNhDwcw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754001594; c=relaxed/simple;
	bh=cS1STiKS0tBVnlDl+GxhDtkP8hUApVFquWrwQKdEHpk=;
	h=To:Subject:From:Message-Id:Date; b=URJ22WYZ3MtneHF3GD17IY3h0EvLaQbsEMB0Iq+ijN+KtghfcfHO2/dxY266dTSqJDj2OvVr0TOFx8gSfmyTb/Zsw0ztOrm7FuqSYvlrJDXLivPhaRzknlLtMQoZMmUFrOFWYr6V5Mx0zSizPZbjrKRDQo7bvhcqUnIrGGjVZUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+JWA4kb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+JWA4kb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9A4C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754001593;
	bh=cS1STiKS0tBVnlDl+GxhDtkP8hUApVFquWrwQKdEHpk=;
	h=To:Subject:From:Date:From;
	b=D+JWA4kbUfCcKMhC0qtVHssw3Hj2uRiDQ2oSR2Pd+GXDu/VWGzVh/bcHNO8jRRAl3
	 PhUqVRgFQvp94jvOFHMl/jhmxhv+z5eK/erVfTxZq6rK610F0RBB74cVUiLdVcbm+4
	 U5G9rwAMYJctFCmIyXVrZqbgUAa2TbTYVA0i8AQeb9DJvK/pcYpzo8fwBHAIIG0PCN
	 bpXgHBh3oedivV+NFTx5HddKs/Pzm5tfQJ6kCSgInxE1JxcqqD5Vsi5rw6SRdK3WfC
	 8a970aAgCOrqGbMLTFcpfkQcq73NzXEe9AOT0H9D3icGw0ZnLKFo3tl5lZPydhUrcl
	 dlcDIcoA6oNXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C3BC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175400159365.20354.12595946227215883688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15eab136a73262297b3c3c1c5aeb53eaed14abbf52158168121710ddda5e2e5e
Date: Thu, 31 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754001593
