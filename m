Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450432747B
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746887994; cv=none; b=Zcduvz1jwTUR/kZCdfmCp5KM8qhg3KUiWxhYPK4ywWzSNautIAHVCN3vV1oQ4vUzLJqyZD+4BB2P7q1hKP72i7YThOOvQKp81gYhEuNSoR4skzQzIXgj9EIOBY+L7YuJSoQJGnjuyejJ/evU0xuNPlmgrPxtj5jOWwkHbLaczZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746887994; c=relaxed/simple;
	bh=CeQv8zwIW9V7SkS61hszltUd2OkV20xOiBXClMvTGw4=;
	h=To:Subject:From:Message-Id:Date; b=XM6MmSt2FW2NomYaFyqiq05+GwB7twVyNOjiIduQ1FyUlZkEJ+IuNKzuzSbYdwIVtlNlpuUr/xqsgw6SyjauSz74qerm5DHxZM5oQ1erifxdLoXoL99I9y3JO7ywcB+DM+O/iIyms85T8CJwbueF4BHRKqrs6/vlRMl8Uv9Qw+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKRAdp2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKRAdp2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68A9C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746887993;
	bh=CeQv8zwIW9V7SkS61hszltUd2OkV20xOiBXClMvTGw4=;
	h=To:Subject:From:Date:From;
	b=vKRAdp2UYwQziGzDtF3phFK95spHsRENeShetI+rlQ8T8Z1paM0/w9oSFz1MaeZW3
	 ckQ3LEJKaeGfqNHFXw20bAAFv0lBDhT2oWMz2FCIXQxzDL5i2IO9P/DLOcVt/k91Df
	 pUyitmpkXBOAwHtA/by+UZ5isRDqndTtH6BbUvF3fNZiio23u74J26jRix0KGpRTiX
	 E18jzQ7dy74AUtZRMMSqKdtZP3r8zSwYTd71qK4HkpN3qX8pvP+yjUjQzFhnKL9N7W
	 D23ONgYQf8AnpyqFvVeCs5BtnfNtA2ZzeKwxROXAK3lx05TcMDniutNRqT7BFkzj6w
	 JyPgC0aYlD7Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91660C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174688799357.15775.1367237903402146218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc3e0e20a9fd2a010c60d0643e1b70baa2c7c7cd167e08ff087f60b5b2ea8b3
Date: Sat, 10 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746887993
