Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E1E78F29
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761537594; cv=none; b=du6GPNlBtT+OPHE7gvBjmbSPBCBW2w22tgsHn3gmeiCOzd/T+B3LgRX0b38mFsUNiK8+SWHZxyEjgSPOVs767imIO2XIEVsqQhl+Ct/8Dq5SvzZ2PnS4yvghwJkUyX0JKpbm45icckTEbK/CxMkqYVwonlFjrYarRi5nbh4NFbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761537594; c=relaxed/simple;
	bh=nW8NdFw0/R8kJqcCR6zabMEciEVCS08L5JXz5RxLM7E=;
	h=To:Subject:From:Message-Id:Date; b=s+ytBYTY3lYGaiq7Q5yZKcp2OZMleSEm93ksUUWlP8ICMd7PrK8uDoVVQZVUJRqdHSJRTQ0qwrMltDq7k+KYBuJWnBON/w43lhwJUaJX258Q3CkSPMJNbp7QcaEKbTTferORVOZ3msd+07HqmHRXo11mqSkd2+3+GtgH7cF+dNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWVecR3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWVecR3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FC8C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761537593;
	bh=nW8NdFw0/R8kJqcCR6zabMEciEVCS08L5JXz5RxLM7E=;
	h=To:Subject:From:Date:From;
	b=PWVecR3ZFHP3jqzAAtAt4C9p6q4A9va/6GH8Rsh1/zmQ0suOdn/YsGWjwnQR7zzH4
	 w4BnDi9+8CVfrfeNHY0Rj1L+UqcpVSHvGyCzvoCPezRBM7iYD0ZiAYbDMymGRd18qg
	 My5taIZDGtHeL3/hAEz3YAZgJEPLHV0Ixx/BWz0G8aFkYd7+1HhA6N2eV71RDbimnz
	 Nz53QGtWStjJ/brtP1FNQVJbJahg1sAm+4q8gH3utibRKa3hqhb/YSH3mqoUNk+jyN
	 ARrSJjB0MAx5vOLjeKerHFcAmKEY+of5PB6vYe0Q+e1AwUl51D/2i23vNxCwhr71WV
	 u29vAnz+qYIOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914BDCCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176153759357.1813.15552002775315921898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dca323bdc2c9232451d06616dcb1407020eafc99a33eb5a9f13a6a9b439551a
Date: Mon, 27 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761537593
